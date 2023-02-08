<?php

add_action('wp_enqueue_scripts', 'angara38_scripts');

function angara38_scripts(){
    wp_enqueue_style('angara38_style', get_stylesheet_uri());
    wp_enqueue_script('angara38_scripts', get_template_directory_uri().'/assets/script/script.js',array(), null, true);

}

add_theme_support( 'custom-logo');
add_theme_support( 'menus');
?>