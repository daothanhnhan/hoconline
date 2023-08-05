<?php
session_start();
include_once dirname(__FILE__) . "/../functions/database.php";
require_once 'vendor/autoload.php';
 // die('tuan');
// Lấy những giá trị này từ https://console.google.com
$client_id = '1059825477818-qjv8799v8uqefmbnfq37upj4jqcg2uj9.apps.googleusercontent.com'; 
$client_secret = 'E-SkTOheb-T5DGbiID7EpB6k';
$redirect_uri = 'https://maytinhdonganh.vn/login/login.php';
 
//Thông tin kết nói database
$db_username = "root"; //Database Username
$db_password = ""; //Database Password
$host_name = "localhost"; //Mysql Hostname
$db_name = 'free_tuts'; //Database Name
###################################################################
 
$client = new Google_Client();
$client->setClientId($client_id);
$client->setClientSecret($client_secret);
$client->setRedirectUri($redirect_uri);
$client->addScope("email");
$client->addScope("profile");
 
$service = new Google_Service_Oauth2($client);
 
// Nếu kết nối thành công, sau đó xử lý thông tin và lưu vào database
if (isset($_GET['code'])) {
    $client->authenticate($_GET['code']);
    $_SESSION['access_token'] = $client->getAccessToken();
    //header('Location: ' . filter_var($redirect_uri, FILTER_SANITIZE_URL));
    $user = $service->userinfo->get(); //get user info 

    $name = $user->name;
    $email = $user->email;
    $id = $user->id;
// die($user);
    $sql = "SELECT * FROM user WHERE user_email = '$email'";
    $result = mysqli_query($conn_vn, $sql);
    $num = mysqli_num_rows($result);
    if ($num == 0) {
        $pass = $id . 'gbvn';
        $pass = password_hash($pass, PASSWORD_DEFAULT);
        $sql = "INSERT INTO user (user_name, user_email, id_go, user_password) VALUE ('$name', '$email', '$id', '$pass')";
        $result = mysqli_query($conn_vn, $sql);

        $sql = "SELECT * FROM user WHERE id_go = '$id'";
        $result = mysqli_query($conn_vn, $sql);
        $row = mysqli_fetch_assoc($result);
        $_SESSION['user_id_gbvn'] = $row['user_id'];
        $_SESSION['user_name_gbvn'] = $row['user_name'];
        echo '<script>window.location.href="/thong-tin-tai-khoan"</script>';
        // echo $row['id'];
    } else {
        $row = mysqli_fetch_assoc($result);
        $id_go = $row['id_go'];
        $pass = $id . 'gbvn';
        $password = $row['user_password'];
        if ($id_go != '') {
            if (password_verify($pass, $password)) {
                $_SESSION['user_id_gbvn'] = $row['user_id'];
                $_SESSION['user_name_gbvn'] = $row['user_name'];
                echo '<script>window.location.href="/thong-tin-tai-khoan"</script>';
            } else {
                echo '<script>alert(\'Có lỗi xảy ra.\');window.location.href="/dang-nhap"</script>';
            }
        } else {
            echo '<script>alert(\'Email đã tồi tại.\');window.location.href="/dang-nhap"</script>';
        }
    }










    die;
    ///////////////////////////////////////////////////////////////////////
    // connect to database
    $mysqli = new mysqli($host_name, $db_username, $db_password, $db_name);
    if ($mysqli->connect_error) {
        die('Error : ('. $mysqli->connect_errno .') '. $mysqli->connect_error);
    }
 
    //Kiểm tra xem nếu user này đã tồn tại, sau đó nên login tự động
    $result = $mysqli->query("SELECT COUNT(google_id) as usercount FROM google_users WHERE google_id=$user->id");
    $user_count = $result->fetch_object()->usercount; //will return 0 if user doesn't exist
 
    //show user picture
    echo '<img src="'.$user->picture.'" style="float: right;margin-top: 33px;" />';
 
    if($user_count) // Nếu user tồn tại thì show thông tin hiện có
    {
        echo 'Welcome back '.$user->name.'! [<a href="'.$redirect_uri.'?logout=1">Log Out</a>]';
    }
    else //Ngược lại tạo mới 1 user vào database
    { 
        echo 'Hi '.$user->name.', Thanks for Registering! [<a href="'.$redirect_uri.'?logout=1">Log Out</a>]';
        $statement = $mysqli->prepare("INSERT INTO google_users (google_id, google_name, google_email, google_link, google_picture_link) VALUES (?,?,?,?,?)");
        $statement->bind_param('issss', $user->id,  $user->name, $user->email, $user->link, $user->picture);
        $statement->execute();
        echo $mysqli->error;
    }
    exit;
}
 
//Nếu sẵn sàng kết nối, sau đó lưu session với tên access_token
if (isset($_SESSION['access_token']) && $_SESSION['access_token']) {
    $client->setAccessToken($_SESSION['access_token']);
} else { // Ngược lại tạo 1 link để login
    $authUrl = $client->createAuthUrl();
}
 
//Hiển thị button để login
echo '<div style="margin:20px">';
if (isset($authUrl)){ 
    //show login url
    echo '<div align="center">';
    echo '<h3>Login with Google -- Demo</h3>';
    echo '<div>Please click login button to connect to Google.</div>';
    echo '<a class="login" href="' . $authUrl . '">LOGIN</a>';
    echo '</div>';
     
} 
echo '</div>';
?>
