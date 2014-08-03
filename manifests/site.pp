package { 'wget':
  ensure    =>  present,
}

file { '/vol':
  mode      =>  '664',
  group     =>  'root',
  owner     =>  'root',
  ensure    =>  directory,
  recurse   =>  false,
  before    =>  Class['config_mysql', 'config_apache'],
}

include config_mysql
include config_apache
# include config_nginx
include config_wordpress
