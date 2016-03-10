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
define('DB_NAME', 'dbwordpressadmin');

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
define('AUTH_KEY',         'gn:-[&H~Rqp178 k;0mpDadlI*&5Xf$[Az+oDrs*N?OU@-%-`w>-%1|^*RIUY}RC');
define('SECURE_AUTH_KEY',  '.| 49jo:!m_D f1`O+#W~;;2O+,E:H_q`?Hbs: hv(,U.3Jgwq=L?0k3FpMHsD{!');
define('LOGGED_IN_KEY',    'S!Stt_vCAmcM-%g/-U0-/V.sKq+Ujxa/~Xn`i{!^O#=hY@3M>-*=9[Qbc&0HLG?-');
define('NONCE_KEY',        'Q#T[*-**2#+},vNMA2v-)>VinY6(2,Gu9L/GmXVR3xP5*-Dz}<1Z:w:bHwH^dTa!');
define('AUTH_SALT',        'ZIvAm3M,R~M-BPRQu?ZskB[GsGD2_{ebLw>%aurq#g8lmVy@HS @R?%!>B8bfv/S');
define('SECURE_AUTH_SALT', '|Z+)7IHhVECH>@fNH:~h@+#xnAQ*q^]*;J2moysB=2?^BAsAEV#_}@>8Pu+*0Qbq');
define('LOGGED_IN_SALT',   'C>@?xG({]o8:FqGJM.@y-p-L7bm+r|0nU4^t,dGcgGJUP[yc_Dot/GcdKq-/+4hA');
define('NONCE_SALT',       'pdpmzTR}AfAV1&MGDNA~O8suA:l97x(TQ@jg{4mNi!hnMX6<h-MQ!?r2opsjWY-@');

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
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
