<?php
// Hàm bổ sung chữ freetuts.net vào chuỗi
function add_string_to_title($title)
{
    return 'website_one - ' . $title;
}

// Đưa hàm add_string_to_title vào hook filter the_title
add_filter('the_titles', 'add_string_to_title', 10, 1);

function the_titles()
{
    $title = 'Nội dung lấy từ CSDL';
    
    // Vì có bổ sung hàm callback add_string_to_title nên lúc này ta phải duyệt title trước khi trả về
    $title = add_string_to_title($title);
    
    // Trả về
    return $title;
}
?>