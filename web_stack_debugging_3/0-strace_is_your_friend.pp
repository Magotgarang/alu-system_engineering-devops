# fix appache 500, automate with puppet
exec { 'fixing typo..':
onlyif => 'test -e /var/www/html/wp-settings.php',
command => "sed -i 's/phpp/php/' /var/www/html/wp-settings.php",
path  => '/usr/local/sbin:/usr/local/bin:/usr/bin:/sbin:/bin',
}
