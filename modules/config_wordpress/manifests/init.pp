class config_wordpress {
  include 'config_wordpress'
  include 'config_mysql'


  class { 'wordpress':
    install_dir =>  '/vol/apache_html/wordpress/',
    require     =>  Package['wget'],
  }
}
