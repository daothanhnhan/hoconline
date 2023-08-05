<meta charset="utf-8">
<?php
// echo dirname(__FILE__);
function vi_en1($str)
    {
        if (!$str)
            return '';
        $coDau = array("à", "á", "ạ", "ả", "ã", "â", "ầ", "ấ", "ậ", "ẩ", "ẫ", "ă", "ằ",
            "ắ", "ặ", "ẳ", "ẵ", "è", "é", "ẹ", "ẻ", "ẽ", "ê", "ề", "ế", "ệ", "ể", "ễ", "ì",
            "í", "ị", "ỉ", "ĩ", "ò", "ó", "ọ", "ỏ", "õ", "ô", "ồ", "ố", "ộ", "ổ", "ỗ", "ơ",
            "ờ", "ớ", "ợ", "ở", "ỡ", "ù", "ú", "ụ", "ủ", "ũ", "ư", "ừ", "ứ", "ự", "ử", "ữ",
            "ỳ", "ý", "ỵ", "ỷ", "ỹ", "đ", "À", "Á", "Ạ", "Ả", "Ã", "Â", "Ầ", "Ấ", "Ậ", "Ẩ",
            "Ẫ", "Ă", "Ằ", "Ắ", "Ặ", "Ẳ", "Ẵ", "È", "É", "Ẹ", "Ẻ", "Ẽ", "Ê", "Ề", "Ế", "Ệ",
            "Ể", "Ễ", "Ì", "Í", "Ị", "Ỉ", "Ĩ", "Ò", "Ó", "Ọ", "Ỏ", "Õ", "Ô", "Ồ", "Ố", "Ộ",
            "Ổ", "Ỗ", "Ơ", "Ờ", "Ớ", "Ợ", "Ở", "Ỡ", "Ù", "Ú", "Ụ", "Ủ", "Ũ", "Ư", "Ừ", "Ứ",
            "Ự", "Ử", "Ữ", "Ỳ", "Ý", "Ỵ", "Ỷ", "Ỹ", "Đ", "ê", "ù", "à");
        $khongDau = array("a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "a",
            "a", "a", "a", "a", "a", "e", "e", "e", "e", "e", "e", "e", "e", "e", "e", "e",
            "i", "i", "i", "i", "i", "o", "o", "o", "o", "o", "o", "o", "o", "o", "o", "o",
            "o", "o", "o", "o", "o", "o", "u", "u", "u", "u", "u", "u", "u", "u", "u", "u",
            "u", "y", "y", "y", "y", "y", "d", "A", "A", "A", "A", "A", "A", "A", "A", "A",
            "A", "A", "A", "A", "A", "A", "A", "A", "E", "E", "E", "E", "E", "E", "E", "E",
            "E", "E", "E", "I", "I", "I", "I", "I", "O", "O", "O", "O", "O", "O", "O", "O",
            "O", "O", "O", "O", "O", "O", "O", "O", "O", "U", "U", "U", "U", "U", "U", "U",
            "U", "U", "U", "U", "Y", "Y", "Y", "Y", "Y", "D", "e", "u", "a");
        $str = str_replace($coDau, $khongDau, $str);
        // $str = str_replace(' ', '-', $str);
        $str = preg_replace('/[^a-zA-Z0-9\s]/', '', $str);
        //$str = preg_replace('/(---|--)/', '-', $str);
            $str = strtolower($str);
            $str = str_replace(' ', '-', $str);
            while (strpos($str, '--') !== false) {
                $str = str_replace('--', '-', $str);
            }
        return $str;
    }


if(isset($_POST['submit'])) {
     if(isset($_FILES['uploadFile']['name']) && $_FILES['uploadFile']['name'] != "") {
        $allowedExtensions = array("xls","xlsx");
        $ext = pathinfo($_FILES['uploadFile']['name'], PATHINFO_EXTENSION);
        if(in_array($ext, $allowedExtensions)) {
           $file_size = $_FILES['uploadFile']['size'] / 1024;
           if($file_size < 50 || true) {
               // $file = "uploads/".$_FILES['uploadFile']['name'];
                // echo dirname(__FILE__);
                $file = dirname(__FILE__)."/../../../functions/excel/uploads/".$_FILES['uploadFile']['name'];
               $isUploaded = copy($_FILES['uploadFile']['tmp_name'], $file);
               if($isUploaded) {
                    // include("db.php");
                    include_once dirname(__FILE__) . "/../../../functions/database.php";
                    // include("Classes/PHPExcel/IOFactory.php");
                    // include("PHPExcel/IOFactory.php");
                    // require('PHPExcel/Autoloader.php');
                    include_once dirname(__FILE__) . "/../../../functions/excel/PHPExcel/IOFactory.php";
                    try {
                        
                        $objPHPExcel = PHPExcel_IOFactory::load($file);
                        
                    } catch (Exception $e) {
                         die('Error loading file "' . pathinfo($file, PATHINFO_BASENAME). '": ' . $e->getMessage());
                        
                    }
                    
                    //An excel file may contains many sheets, so you have to specify which one you need to read or work with.
                    $sheet = $objPHPExcel->getSheet(0);
                    //It returns the highest number of rows
                    $total_rows = $sheet->getHighestRow();
                    //It returns the highest number of columns
                    $total_columns = $sheet->getHighestColumn();//var_dump($total_columns);
                          
                    echo '<h4>Data from excel file</h4>';
                    echo '<table cellpadding="5" cellspacing="1" border="1" class="responsive">';
                  
                    // $query = "insert into `user_details` (`id`, `name`, `mobile`, `country`) VALUES ";
                    
                    //Loop through each row of the worksheet
                    $giao_trinh_tab_phu_id = $_GET['giao_trinh_tab_phu_id'];
                    
                    for($row =2; $row <= $total_rows; $row++) {
                        $query = "insert into `cau_hoi_tab` (cau_hoi, cau_1, cau_2, cau_3, cau_4, cau_dung, nhom_cau_hoi_tab_id, sort, giao_trinh_tab_phu_id) VALUES ";
                        //Read a single row of data and store it as a array.
                        //This line of code selects range of the cells like A1:D1
                        $single_row = $sheet->rangeToArray('B' . $row . ':' . $total_columns . $row, NULL, TRUE, FALSE);
                        echo "<tr>";
                        //Creating a dynamic query based on the rows from the excel file
                        $query .= "(";
                        
                        //Print each cell of the current row
                        $d = 0;
                        
                        foreach($single_row[0] as $key=>$value) {
                            $d++;


                            if (true) {
                                // echo "<td>".$value."</td>";
                                $query .= "'".mysqli_real_escape_string($conn_vn, $value)."',";
                            }
                            
                        }
                        

                        // $query = substr($query, 0, -1);
                        $query .= "".$giao_trinh_tab_phu_id.")";
                        echo "</tr>";
                        // echo $query.'<br>';
                        mysqli_query($conn_vn, $query);
                        // echo mysqli_error($conn_vn);
                        
                         // break;
                    }
                    // $query = substr($query, 0, -1);
                    echo '</table>';
                    echo '<script>window.location.href="index.php?page=cau-hoi-tab&giao_trinh_tab_phu_id='.$giao_trinh_tab_phu_id.'";</script>';
                    // echo $query;echo '<br>';
                    // At last we will execute the dynamically created query an save it into the database
                    // mysqli_query($conn_vn, $query) or die('loi: ' . mysqli_error($conn_vn));
                    if(mysqli_affected_rows($conn_vn) > 0) {    
                        echo '<span class="msg">Database table updated!</span>';
                    } else {
                        echo '<span class="msg">Can\'t update database table! try again.</span>';
                    } 
                    // Finally we will remove the file from the uploads folder (optional) 
                    unlink($file);
                } else {
                    echo '<span class="msg">File not uploaded!</span>';
                }
            } else {
                echo '<span class="msg">Maximum file size should not cross 50 KB on size!</span>';	
            }
        } else {
            echo '<span class="msg">This type of file not allowed!</span>';
        }
    } else {
        echo '<span class="msg">Select an excel file first!</span>';
    }
}
?>
<!-- <form action="<?php echo $_SERVER['PHP_SELF'];?>" method="post" enctype="multipart/form-data"> -->
<form action="" method="post" enctype="multipart/form-data">
    Upload excel file: 
    <input type="file" name="uploadFile" value="" />
    <input type="submit" name="submit" value="Upload" />
</form>