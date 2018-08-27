<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'website_one');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '4 K{;BT<. (G!G>g )(FyA[uN9-qxTc$#Ow6v3:}h9|Qo~iF;*J#2]`/a o&6.O3');
define('SECURE_AUTH_KEY',  '*8$O8<$m/CvG7epkK&&TV&$$8= -}Ep}GA]aZM?Rz#e]?6r[)HO Fy+`NmR5Lj`P');
define('LOGGED_IN_KEY',    'HtWQT!vg$N{yM9IAl;Z%{~uz0*s]wB0fa}J%3Pjwx{0{g&wo2zd_hr8SNN(X YnS');
define('NONCE_KEY',        'iemherDh9Ni->i{!=V`zV9*c.QrFWbEJKwMiHEh(V40Uo:@30Dzy*-Yhq#.Q75Wj');
define('AUTH_SALT',        '8?xx>/ccGkvq<)vn(=NiM`)/56 /q3-*fVHq%d1o5KC/`li$uR6OC/7iy2g@hf$Z');
define('SECURE_AUTH_SALT', ' 6:>Kr&?pQ@Eh*gww1_q!B|;gBwm{$~(xR*sGBK5D{lXSExt]u[vK t)WZD4!.Gw');
define('LOGGED_IN_SALT',   'jG^UUZZ$(}]J{_8[0wVwQ6XQnI!{mua^P^+ZZKF>L@GP#@Xh]Z@+V!#K|E@_H^8*');
define('NONCE_SALT',       ';OR:r1:eJff>m`j|w<f)p2b0l^6 cSqLt|gB6UPJe7t4i1^YU>~9dE!ba2E$ $9 ');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', true);
define('WP_DEBUG_DISPLAY', false);
define('WP_DEBUG_LOG', true);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
