<?php
add_option('mailer_gmail_username', 'thehalfheart@gmail.com');
add_option('mailer_gmail_password', '@password');

// Hàm get_option
echo get_option('mailer_gmail_username');



// Dùng lệnh var_dump thay vì echo vì lúc này là false
var_dump(get_option('mailer_gmail_username'));


// Die để dễ nhìn kết quả
die;
?>