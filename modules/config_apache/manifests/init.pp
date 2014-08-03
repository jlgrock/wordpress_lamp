class config_apache() {
  include 'apache_linked'

  class {'apache::mod::php':
  }
}
