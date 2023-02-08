<!doctype html>
<html lang="en">
<head>
    <?php
    wp_head();
    ?>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="css/style.css">
    <link href="https://fonts.googleapis.com/css2?family=Roboto&family=Source+Sans+Pro:wght@400;600;700&display=swap" rel="stylesheet">
    <title>
        <?php bloginfo('name');
        echo ' | ';
        bloginfo('description'); ?>
    </title>
</head>
<body>
<header>
    <div class="header__info">
        <div class="logo">
            <?php the_custom_logo(); ?>
        </div>
        <div class="header__info-info">
<!--            <h1>Продажа и доставка инертных материалов.</h1>-->
<!--            <span>Работаем  без выходных 8:00-18:00</span>-->
            <h1><?php the_field('header_title', 13);?></h1>
            <span><?php the_field('header_subtitle', 13); ?></span>
        </div>
        <div class="header__info-contacts">
        <?php
            // параметры по умолчанию
            $phonenumber = get_posts( array(
            'numberposts' => 5,
            'category_name'    => 'phonenumbers',
            'orderby'     => 'date',
            'order'       => 'DESC',
            'post_type'   => 'post',
            'suppress_filters' => true, // подавление работы фильтров изменения SQL запроса
            ) );

            global $post;

            foreach( $phonenumber as $post ){
            setup_postdata( $post );
                // формат вывода the_title() ...
            ?>
                <a href="tel:<?php the_title() ?>"><?php the_title() ?></a><br>
            <?php
            }

            wp_reset_postdata(); // сброс

            ?>
        </div>
        <div class="burger">
            <span>  </span>
        </div>
    </div>

    <div class="header__menu" id="navigation">

        <?php

            wp_nav_menu( [
//                'theme_location'  => '',
                'menu'            => 'Main',
                'container'       => false,
//                'container_class' => '',
//                'container_id'    => '',
//                'menu_class'      => 'menu',
//                'menu_id'         => '',
                'echo'            => true,
                'fallback_cb'     => 'wp_page_menu',
//                'before'          => '',
//                'after'           => '',
//                'link_before'     => '',
//                'link_after'      => '',
                'items_wrap'      => '<ul>%3$s</ul>',
                'depth'           => 1,
//                'walker'          => '',
            ] );

        ?>

    </div>
</header>
