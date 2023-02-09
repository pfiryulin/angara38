<section class="callbacksection" id="callback">
    <h3>Позвоните нам</h3>
    <?php
    // параметры по умолчанию
    $phon = get_posts( array(
        'numberposts' => -1,
        'category_name'    => 'phonenumbers',
        'orderby'     => 'date',
        'order'       => 'DESC',
        'post_type'   => 'post',
        'suppress_filters' => true, // подавление работы фильтров изменения SQL запроса
    ) );
    $post_id;

    global $post;

    foreach( $phon as $post ){
        setup_postdata( $post );
        $on_phonenumb_btn = get_field('phone_button');
        if($on_phonenumb_btn == 'on'){
            $post_id = $post->ID;
        }

    }

    wp_reset_postdata(); // сброс

    $phonenumb_btn = get_post($post_id, ARRAY_A);
    $title = $phonenumb_btn ['post_title'];

    ?>

    <div class="button">
        <a href="tel:<?= $title ?>"><?= $title ?> </a>
    </div>

    <h3>Или оставьте заявку и мы свяжемся с вами</h3>
    <?php
    echo do_shortcode('[contact-form-7 id="59" title="Contact form 1"]');
    ?>
</section>
</main>
<footer>
    <section class="footer__product">

        <?php

//        wp_nav_menu( [
//            'menu'            => 'footer',
//            'container'       => false,
//            'echo'            => true,
//            'fallback_cb'     => 'wp_page_menu',
//            'items_wrap'      => '<ul>%3$s</ul>',
//            'depth'           => 1,
//        ] );

        ?>

        <ul>
            <li><a href="">Песок</a></li>
            <li><a href="">ПГС</a></li>
            <li><a href="">Отсев</a></li>
        </ul>
        <ul>
            <li><a href="">Щебень</a></li>
            <li><a href="">Откат</a></li>
            <li><a href="">Плитняк</a></li>
        </ul>
        <ul>
            <li><a href="">Чернозем</a></li>
            <li><a href="">Перегной</a></li>
            <li><a href="">Грунт</a></li>
        </ul>
        <ul>
            <li><a href="">Уголь</a></li>
            <li><a href="">Вывоз снега</a></li>
            <li><a href="">Вывоз мусора</a></li>
        </ul>
    </section>
    <section class="footer__info">
        <div class="logo">
            <?php the_custom_logo(); ?>
        </div>
        <div class="footer__info-info">
            <span><?php the_field('header_title', 13);?></span>
            <span><?php the_field('header_subtitle', 13); ?></span>
        </div>
        <div class="footer__info-contacts">
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
    </section>
</footer>
<?php
wp_footer();
?>

</body>
</html>
