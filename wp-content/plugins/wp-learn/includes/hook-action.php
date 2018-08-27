<?php
function usef_settings_page_html()
{
    ?>
    Foo: <input id="foo" name="foo" type="text">
    Bar: <input id="bar" name="bar" type="text">
    <?php
    do_action('usef_after_settings_page_html');//set name of this action
}
?>

<?php 
function usef_add_settings()
{
    ?>
    New 1: <input id="new_setting" name="new_settings" type="text">
    <?php
}
add_action('usef_after_settings_page_html', 'usef_add_settings');