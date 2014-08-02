include wordpress_lamp::config_mysql
include wordpress_lamp::config_apache
# include wordpress_lamp::config_nginx
include wordpress_lamp::config_wordpress

file { '/vol':
  mode      =>  '664',
  group     =>  'root',
  owner     =>  'root',
  ensure    =>  directory,
  recurse   =>  false,
  before    =>  Class['wordpress_lamp::config_mysql', 'wordpress_lamp::config_apache'],
}

package { 'wget':
  ensure    =>  present,
}
