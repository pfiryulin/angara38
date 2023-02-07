<?php
/**
 * Основные параметры WordPress.
 *
 * Скрипт для создания wp-config.php использует этот файл в процессе установки.
 * Необязательно использовать веб-интерфейс, можно скопировать файл в "wp-config.php"
 * и заполнить значения вручную.
 *
 * Этот файл содержит следующие параметры:
 *
 * * Настройки базы данных
 * * Секретные ключи
 * * Префикс таблиц базы данных
 * * ABSPATH
 *
 * @link https://ru.wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Параметры базы данных: Эту информацию можно получить у вашего хостинг-провайдера ** //
/** Имя базы данных для WordPress */
define( 'DB_NAME', 'angara38' );

/** Имя пользователя базы данных */
define( 'DB_USER', 'angara38' );

/** Пароль к базе данных */
define( 'DB_PASSWORD', '' );

/** Имя сервера базы данных */
define( 'DB_HOST', 'localhost' );

/** Кодировка базы данных для создания таблиц. */
define( 'DB_CHARSET', 'utf8mb4' );

/** Схема сопоставления. Не меняйте, если не уверены. */
define( 'DB_COLLATE', '' );

/**#@+
 * Уникальные ключи и соли для аутентификации.
 *
 * Смените значение каждой константы на уникальную фразу. Можно сгенерировать их с помощью
 * {@link https://api.wordpress.org/secret-key/1.1/salt/ сервиса ключей на WordPress.org}.
 *
 * Можно изменить их, чтобы сделать существующие файлы cookies недействительными.
 * Пользователям потребуется авторизоваться снова.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'Y96?A}yEWw.@?.J M7$*gg}%L%Q *( aEOL5dmE]tYfz:Cq&l9 Mk:ZHBG7>)H1&' );
define( 'SECURE_AUTH_KEY',  'iVRN++0g12Z^qf!e?-?8ls_[g{6EYXCA] qQM62/f}G&1e(Vv/,,lw>n<Ett<*Du' );
define( 'LOGGED_IN_KEY',    'll!hapt3EyS%oOYfCROW5HF57!:?>C7Sj*7$%3:8Os)bI(-ICh% TMl_*wW|u0|w' );
define( 'NONCE_KEY',        '(=y>L$ME#]!r=>>NAl~sk!f,TFrzeo:e$ZGY_4uehB48oG|=[M]+2LTmG|VH8XC)' );
define( 'AUTH_SALT',        'jH9=7p>(p  5;ho3tY3llR{7,+c@G-`#M}/YpX|?GQvyeN/)7JV38hAA1X8/!64j' );
define( 'SECURE_AUTH_SALT', '`*nd{[q$v5.2V:cNSHZ1U[rL(~33(fX3uGQK;}}<mBL5wJ615RCFtUKmq>mRc[UN' );
define( 'LOGGED_IN_SALT',   'KdZqv$O zq{9QinbDX5@y-_%KN;$M8?(m? Czi|L7} aC]Dh1f<Ml0,(F&trCZ#B' );
define( 'NONCE_SALT',       'fngA@fnRQF#8Dt5E@KlUu!BoIiw#G/[c{5l++`@Ad`-3e]2b7-G^GseeFxMoaCxJ' );

/**#@-*/

/**
 * Префикс таблиц в базе данных WordPress.
 *
 * Можно установить несколько сайтов в одну базу данных, если использовать
 * разные префиксы. Пожалуйста, указывайте только цифры, буквы и знак подчеркивания.
 */
$table_prefix = 'wp_';

/**
 * Для разработчиков: Режим отладки WordPress.
 *
 * Измените это значение на true, чтобы включить отображение уведомлений при разработке.
 * Разработчикам плагинов и тем настоятельно рекомендуется использовать WP_DEBUG
 * в своём рабочем окружении.
 *
 * Информацию о других отладочных константах можно найти в документации.
 *
 * @link https://ru.wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Произвольные значения добавляйте между этой строкой и надписью "дальше не редактируем". */



/* Это всё, дальше не редактируем. Успехов! */

/** Абсолютный путь к директории WordPress. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Инициализирует переменные WordPress и подключает файлы. */
require_once ABSPATH . 'wp-settings.php';
