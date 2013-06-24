<?php
/**
 * The base configurations of the WordPress.
 *
 * This file has the following configurations: MySQL settings, Table Prefix,
 * Secret Keys, WordPress Language, and ABSPATH. You can find more information
 * by visiting {@link http://codex.wordpress.org/Editing_wp-config.php Editing
 * wp-config.php} Codex page. You can get the MySQL settings from your web host.
 *
 * This file is used by the wp-config.php creation script during the
 * installation. You don't have to use the web site, you can just copy this file
 * to "wp-config.php" and fill in the values.
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'allenemei_wp');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8');

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
define('AUTH_KEY',         'TC+zipLt?),avsjM.vRLJy@rRnY%a$xXu|AU/w}+fD-7HtfWGe6?)MUkbTBd1zIN');
define('SECURE_AUTH_KEY',  'jx$@#shw1qFw:YkEIdO<4 z-H7gzb#W3y)XfSOV?0@zAePH<g2?:w;L48z-2>Kf>');
define('LOGGED_IN_KEY',    '#f6$C_NfLZyQ=C ,,UWcmAsb%i?rn1ImKDvF%7{{k0(hABWpukA~JtsJCa&@bWg^');
define('NONCE_KEY',        'UpJaIzXL^kY|aC_d8ckG)g5LWy3J:[ankx)04DfQ$[HeG^@DI=m]gKEib?8C9CUk');
define('AUTH_SALT',        'dPb2aS>?u+7w|Oc)ez1@6w2TPB3kOJIW}A_o~eTE_OfVN@Xymqv~7T$i2mPiCLh}');
define('SECURE_AUTH_SALT', '^4 +hp]e>s[|U;nkzlgxwkWJHF$Ha@P#]z-vCx`a1/=#{)SR(sYm=FU8t%7Vd#Xd');
define('LOGGED_IN_SALT',   '&2 ..RH-2L!k8%^G)YvYUaM-EVq@)B`#4T(d&liO b+OB/N,mT 1SGxE1rCi]@H4');
define('NONCE_SALT',       'C=m;qLS;L4j42JP8i.cayO3oVU`su`Yg}s^A%WYFLb Mvm @xk8WeF{&Y^zbJpxV');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each a unique
 * prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * WordPress Localized Language, defaults to English.
 *
 * Change this to localize WordPress. A corresponding MO file for the chosen
 * language must be installed to wp-content/languages. For example, install
 * de_DE.mo to wp-content/languages and set WPLANG to 'de_DE' to enable German
 * language support.
 */
define('WPLANG', '');

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
