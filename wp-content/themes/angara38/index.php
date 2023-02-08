
<?php
    get_header();
?>
<main>
    <section class="main__baner baner">
        <div class="main__baner-title">
            <h3>   Продажа и доставка
                НЕРУДНЫХ МАТЕРИАЛОВ
            </h3>
        </div>
        <div class="main__baner-info">
            Мы доставим все виды сыпучих материалов. Точно в договоренные сроки, по самым выгодным ценам, весь заявленный объем.
        </div>
        <div class="main__buner-button button">
            <a href="#callback">Заказать звонок</a>
        </div>
    </section>
    <section class="main__baner trust">
        <h3 class="trust-title">Нам доверяют потому что:</h3>
        <div class="main__baner-info trust-resons">
            <ul>
                <li><span>Мы более</span> 10<span> Лет на рынке грузоперевозок.</span></li>
                <li><span>У нас более </span>5000<span> Довольных клиентов.</span></li>
                <li><span>Мы пунктуальны и честны.</span></li>
                <li><span>Наши сотрудники обладают богатым опытом.</span></li>
                <li><span>Вся продукция соответствует </span>ГОСТ</li>
                <li><span>Доставляем </span>от 1 до 25<span> тонн</span></li>
            </ul>
        </div>
    </section>
    <section class="order">
        <h3>Как заказать?</h3>
        <img src="<?php echo bloginfo('template_url')?>/assets/images/phone_black.png" alt="">
        <span>Свяжитесь с нами</span>

        <img src="<?php echo bloginfo('template_url')?>/assets/images/manager.png" alt="">
        <span>Наш менеджер подробно проконсультирует о сроках доставки и выставит счет</span>

        <img src="<?php echo bloginfo('template_url')?>/assets/images/invoice.png" alt="">
        <span>Оплатите счет</span>


        <img src="<?php echo bloginfo('template_url')?>/assets/images/truck.png" alt="">
        <span>Дождитесь доставки и примите груз</span>

    </section>
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
<?php
    get_footer();
?>
