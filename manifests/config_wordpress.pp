class wordpress_lamp::config_wordpress {
  include 'wordpress_lamp::config_wordpress'
  include 'wordpress_lamp::config_mysql'


  class { 'wordpress':
    install_dir =>  '/vol/apache_html/wordpress/',
    require     =>  Package['wget'],
  }
}
