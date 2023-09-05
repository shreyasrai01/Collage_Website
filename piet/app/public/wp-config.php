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
define( 'DB_NAME', 'local' );

/** Database username */
define( 'DB_USER', 'root' );

/** Database password */
define( 'DB_PASSWORD', 'root' );

/** Database hostname */
define( 'DB_HOST', 'localhost' );

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


define('AUTH_KEY',         'qpeXWdl0hOrutm+inmoZXzFi4BxiGY41RHmQ+NwaiQnmAqHEJEeGC6b7oqChJilkKpcY5rhwjoFBRwuRGgW0qw==');
define('SECURE_AUTH_KEY',  'GleQbqDDIhsK8meuaBUVyMe5/ahVGvMKV0vitjzmEvwON5QiHsV2zrTJhasHsePaugVwarOenWeZ7hMdzUKn6g==');
define('LOGGED_IN_KEY',    'GX4Uzw+8wujQQebFxbEU2ZNOFQa0ZXli7oadd0TwwEgPX8e0VffIXJ/svbS64o/wAHPA6trBljjzH3rWyIgQQw==');
define('NONCE_KEY',        'OS74+hfcw6Blvx0IqKnisHxxXqXFpudkg6CxxQNCpockhaOWpAiW3Am/UPDGbnUVevzoPFXNQTLBFw0P2RAE9A==');
define('AUTH_SALT',        'Icl2xI42hzMJ4hvI0Q5dvJgrKgZF2zF0uk6lbxQj3fpgW6tzeELCzZ0mD01E+eaonu1yK8YKxgM2K0CKP0XAPA==');
define('SECURE_AUTH_SALT', 'Ykdf19W0Caa3xARvyJFS8SyyplL90cXhaoV+5EIzvWFghLwdWKZyLcA7VwIov6ZhNbQLRwdsbOIELVbAC/ewGA==');
define('LOGGED_IN_SALT',   'Xfi8F0/Lmf2EIHKM60qpY/c3lmPu1A0Fi1Vd4QBOG3Jx6wh9G+NDuA2hIuJlCQYGHC99WzRmhbUS1FOhNyeD5A==');
define('NONCE_SALT',       '2vU1LjF4z4c98qXK2vdIhoe5IvDPsZvqwiupyKs9CueSR57T374IHDrukX86VR6XWsQpz9LDtX9NFSvjS1bJEA==');
define( 'WP_ENVIRONMENT_TYPE', 'local' );
/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
