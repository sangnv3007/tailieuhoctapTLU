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
define('WP_CACHE', true);
define( 'WPCACHEHOME', 'C:\xampp\htdocs\shopphukienxemay\wp-content\plugins\wp-super-cache/' );
define('DB_NAME', 'shopphukienxemay');

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
define('AUTH_KEY',         '!C!OC7vauRb-3.Fn4x?5/Mm&NAqLF7W%o649.L(m7a:I, c41DsJ)h[w iF1%2K;');
define('SECURE_AUTH_KEY',  's$ ,[+Qa6v,-lVzY5eC4n|hxn+,<F(QNrbND2k*ic/E| eVGO9Q%-?[$_~=a2~38');
define('LOGGED_IN_KEY',    'q*ahT!J7F!^D/zAp@c&5~}BH6dO2g>q&Eao{)?L%))|ZjctWP@F7le:jF-=*N-k;');
define('NONCE_KEY',        'N2-.[W>Rz/7:p<4^UYTz2W].%J~e*:b|3D=_0LM:>m5Rzw<}{>Rr#f>-t7a>g&R~');
define('AUTH_SALT',        'fKd[JPLAF3)1][@?EPWS.}.%q^M@5MkzfFIs.?zLTjlpQ?.!/X)<~I#ip|n^A&JE');
define('SECURE_AUTH_SALT', 'EXmCSX/ZG|:4O~:JZb`5{=}6_f:yy**rq0to4uy[Cz}w>}#|cVnY<41n/al.7z3^');
define('LOGGED_IN_SALT',   'Tj]P`/#2<DXYj[aBtMhtnZHDj+9kFK:qmnf40A$9:&[d| C<)s5[TF`!h+cFW3uQ');
define('NONCE_SALT',       '|&<{<S^3T6PC_CrxYzTPa3Z=fM=|98q$vc0Y-xDiOp8PEH*KI/7<Vb6 aV@5mRZe');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_shopxemay';

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
