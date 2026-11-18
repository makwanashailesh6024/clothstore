<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * Localized language
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'ceramic_shop' );

/** Database username */
define( 'DB_USER', 'root' );

/** Database password */
define( 'DB_PASSWORD', '' );

/** Database hostname */
define( 'DB_HOST', '127.0.0.1' );
define( 'DISABLE_WP_CRON', true );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',          ']CPNc6Q%skc7>0th<%&+%[<+F65YRUd7hWC1p,^|2{ lo`m`E:OBCe[$R4fb/pMN' );
define( 'SECURE_AUTH_KEY',   'j6&vVf|?,j{I[^ku28k`s+6n1*%Et?_j5D(Z#wS-HF&QwmbSht%a42-Vtps?h)nF' );
define( 'LOGGED_IN_KEY',     'wv*]{BY&iQ/t*9^I/eIC+ DC[/bUQ&buCnA~7_UT^keozb%nk6y!E(&%?)v`y:YB' );
define( 'NONCE_KEY',         'u8))MM1=]Ds_+:z^w@3QKs/NB4cHI7Z`jXJGtnYgPra([{:XkSc32PbZ85_yJHEm' );
define( 'AUTH_SALT',         '>lfwI5Z_M{]tsp ,zokF:&RZe;+yv6uMlyu&i,6>F+tO>&W./`jCXd4L*YoCT(M&' );
define( 'SECURE_AUTH_SALT',  '{/fKR@Zv[H{DK[:Be]Q9$u dNVYWsRdiV7INTpXKX>5+):X/u@m-$]!(*W15d;wi' );
define( 'LOGGED_IN_SALT',    'b|aN5u)VV ZzaSWEv!KXv6+5EbMR=^vpmle9lVZGo(Z}3(sS/Ce+dUJhp2chKd@r' );
define( 'NONCE_SALT',        '!3Iyk/XmSC#9;h=B6z[NqidA1;7kQvE|,8x`_0&WifTjaoif_zlspo7O)fM5_Mhz' );
define( 'WP_CACHE_KEY_SALT', '[uX}t>bg/)>9<3/L4oK}0&!M/l}ws!71d*Q=kQuOP|^-[=mtcBe ^Oopwa.GckoW' );


/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';


/* Add any custom values between this line and the "stop editing" line. */



/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
if ( ! defined( 'WP_DEBUG' ) ) {
	define( 'WP_DEBUG', false );
}

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
