# If we delete htdocs, let's just start over.
if [ ! -d htdocs ]
then

	# Create the database over again.
	mysql -u root --password=root -e "DROP DATABASE IF EXISTS wordpress_jetpack"
	mysql -u root --password=root -e "CREATE DATABASE IF NOT EXISTS wordpress_jetpack"
	mysql -u root --password=root -e "GRANT ALL PRIVILEGES ON wordpress_jetpack.* TO wp@localhost IDENTIFIED BY 'wp';"

	# Checkout WordPress.
	svn checkout -q http://svn.automattic.com/wordpress/trunk/ htdocs

	cd htdocs

	# Configure and setup WordPress.
	wp core config --allow-root --dbname="wordpress_jetpack" --dbuser=wp --dbpass=wp --dbhost="localhost" --extra-php <<PHP
define( 'WP_DEBUG', true );
define( 'WP_DEBUG_LOG', true );
PHP

	wp core install --allow-root --url=jetpack.wordpress.dev --title="A Jetpack VVV" --admin_user=admin --admin_password=password --admin_email=your@email.com

	# Clone the Jetpack plugin.
	git clone https://github.com/Automattic/jetpack.git wp-content/plugins/jetpack

		# Activate the developer plugin.
		wp plugin --allow-root activate jetpack

	# Clone the Jetpack GitHub plugin.
	git clone https://github.com/enejb/jetpack-github.git wp-content/plugins/jetpack-github

		# Activate the Jetpack GitHub plugin.
		wp plugin --allow-root activate jetpack-github

	cd ..

else
	svn up htdocs
fi