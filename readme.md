## About

This is a [VarryingVagrantVagrant](https://github.com/Varying-Vagrant-Vagrants/VVV) for testing Jetpack. It is based on @aubreypwd's [WordPress Theme Review VVV](https://github.com/aubreypwd/wordpress-themereview-vvv/).

## Install

You'll need to first have [VarryingVagrantVagrant](https://github.com/Varying-Vagrant-Vagrants/VVV) installed. Then, follow the steps below to get up and running with this Jetpack VVV.

1. Clone this repo (or [download it](https://github.com/RCowles/wordpress-jetpack-vvv/)) into your `www` directory.
2. Re-provision your VVV with `vagrant up --provision`.

This will create a `/vagrant-install/www/wordpress-jetpack/htdocs` folder with a fresh WordPress install.

You can access your new local site http://jetpack.wordpress.dev/ and start testing Jetpack!

## Included plugins

The installation will include the [Jetpack plugin](https://github.com/automattic/jetpack), as well as a [Jetpack GitHub plugin](https://github.com/enejb/jetpack-github) that allows you to change which branch you are using from the WordPress Dashboard.

## Reset

Delete the `htdocs` folder when you want to start over with a fresh install.

## WordPress Login Creds

Login with `admin`, password `password`.