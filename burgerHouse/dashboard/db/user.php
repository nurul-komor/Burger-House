<?php
    require('connection.php');
    class User extends Connection{
        public function insertData($table,$arrayName){
            if(!empty($arrayName)){
                $fields=$placeholders=[];
                foreach($arrayName as $field => $value){
                $fields[]       = $field;
                $placeholders[] = '"'.$value.'"';
            }
            }
            $sql = "insert into $table (".implode(',',$fields).") values (".implode(',',$placeholders).")";

            $result=mysqli_query($this->conn, $sql);
            if($result) {
                return ($this->conn->insert_id);
            }
        }
        public function searchQuery($query,$table,$field){
            $sql = "select * from $table where $field like '%{$query}%'";
            $result=mysqli_query($this->conn, $sql);
            if($result->num_rows>0){
                $results = $result->fetch_all(MYSQLI_ASSOC);
            }
            else{
                $results =  [];
            }
            return $results;
        }
        public function getRows($table){
        $sql = "select * from $table order by id desc";
        $result=mysqli_query($this->conn, $sql);
        if($result->num_rows > 0){
            $results = $result->fetch_all(MYSQLI_ASSOC);
        }else{
            $results = [];
        }
        return $results;
    }
        public function upload_file($data){
            $dir = './uploads/';
            $ext = pathinfo($data['name'],PATHINFO_EXTENSION);
            $fileName = uniqid()."_".time().".".$ext;
            move_uploaded_file($data["tmp_name"],$dir.$fileName);
            return $fileName;
        }

        public function createFile($folderName,$fileName,$baseFile){
            if(!file_exists('../categories/'.$folderName)){
                mkdir("../categories/".$folderName);
            }
            $fileLocation = "../categories/$baseFile";
            $file = fopen("../categories/$baseFile","r");
            $data = fread($file,filesize($fileLocation));
            if(file_put_contents("../categories/{$folderName}/{$fileName}", $data))
            fclose($file);
        }
        public function SingleBook($table,$id){
            $sql = "SELECT * FROM $table WHERE id=$id";
            $result = mysqli_query($this->conn,$sql);
            if($result->num_rows>0){
                $results = $result->fetch_assoc();
                return $results;
            }
        }
        // update topic 
        public function updateTopic($table,$array, $id)
        {
            $sql = "UPDATE $table SET ";
            $sql .= urldecode(http_build_query($array,'',', '));
            $sql .= " WHERE id='".$id."'";
            // echo $sql;die;
            $result = mysqli_query($this->conn,$sql);
            if($result){
                return $result;
            }
        }
        public function deleteTopic($table,$id,$topic_table,$topic_img){
            $sql1 = "DELETE FROM $table WHERE id=$id";
            $sql2 = "DROP TABLE $topic_table";
            mysqli_query($this->conn,$sql1);
            mysqli_query($this->conn,$sql2);
            $dirPath = "../categories/$topic_table";
            if (!is_dir($dirPath)) {
                throw new InvalidArgumentException("$dirPath must be a directory");
            }
            if (substr($dirPath, strlen($dirPath) - 1, 1) != '/') {
                $dirPath .= '/';
            }
            $files = glob($dirPath . '*', GLOB_MARK);
            foreach ($files as $file) {
                if (is_dir($file)) {
                    self::deleteDir($file);
                } 
                else {
                    unlink($file);
                }
            }
            rmdir($dirPath);
            $img_dir = "../uploads/$topic_img";
            unlink($img_dir);
        }
            // search topic 
            public function searchTopic($query){
            $sql = "select * from topics where topic like '%{$query}%' order by id desc";
            // echo $sql;
            $result = mysqli_query($this->conn,$sql);
            if($result->num_rows>0){
                $results = $result->fetch_all(MYSQLI_ASSOC);
            }
            return $results;
        }
        public function login($username,$pass){
            $sql = "select * from admins where username like '{$username}' and password like '{$pass}'";
            // return $sql;
            $result = mysqli_query($this->conn,$sql);
            if($result->num_rows>0){
                return  1;
            }
            else{
               return 0;
            }
        }
        public function selectAllData($table){
            $sql = "select * from $table order by id desc";
             $result = mysqli_query($this->conn,$sql);
            if($result->num_rows>0){
                $results = $result->fetch_all(MYSQLI_ASSOC);
            }
            else{
                $results = [];
            }
            return $results;
        }
        public function tableSelection($id){
            $sql = "SELECT `folder_name` FROM `topics` WHERE id=$id";
            // echo $sql; die;
            $result = mysqli_query($this->conn,$sql);
            if($result->num_rows>0){
                // print_r($result);
                return $result->fetch_assoc();
            }
        }
        public function getAllBooks($table){
            $sql = "select * from topics inner join $table on  topics.id = $table.topic_id";
            // echo $sql;
            $result = mysqli_query($this->conn,$sql);
            if($result->num_rows>0){
                return $result->fetch_all(MYSQLI_ASSOC);
            }
        }
        public function deleteFood($table,$id){
            $sql = "DELETE FROM $table WHERE id=$id";

            $result = mysqli_query($this->conn,$sql);
            if($result){
                return $result;
            }
        }
        public function customerLogin($email,$pass){
            $sql = "select * from customers where email like '{$email}' and password like '{$pass}'";
            $result = mysqli_query($this->conn,$sql);
            if($result->num_rows>0){
                $result = $result->fetch_assoc();
                if($result){
                    return  $result;
                }
            }
        }
    };
    $user = new User();
?>