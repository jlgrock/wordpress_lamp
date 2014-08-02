class wordpress_lamp::config_apache() {
  include 'apache_linked'

  class {'apache::mod::php':
  }
}
