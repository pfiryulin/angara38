<?php

/*
Template Name: Щебень
*/

get_header() ?>
<main>
    <?php
    // параметры по умолчанию
    $phonenumber = get_posts( array(
        'numberposts' => -1,
        'category_name'    => 'crushed_stone',
        'orderby'     => 'date',
        'order'       => 'DESC',
        'post_type'   => 'post',
        'suppress_filters' => true, // подавление работы фильтров изменения SQL запроса
    ) );

    global $post;

    foreach( $phonenumber as $post ){
        setup_postdata( $post );

        $image = get_field('product_img');
        // формат вывода the_title() ...
        ?>
        <div class="productcard">
            <div class="productcard__img">
                <img src="<?php echo $image['url'] ?>" alt="<?= $image['alt'] ?>">
            </div>
            <h3><?php the_title(); ?></h3>
            <div class="productcard__description">
                <?php the_field('product_descript'); ?>
            </div>

            <div class="productcard__coast">
                <?php the_field('product_coast'); ?>
            </div>

            <div class="productcard__button button">
                <a href="#callback">Заказать</a>
            </div>

        </div>
        <?php
    }

    wp_reset_postdata(); // сброс

    ?>
<?php get_footer() ?>
