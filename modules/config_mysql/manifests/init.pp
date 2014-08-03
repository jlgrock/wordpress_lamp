class config_mysql {

  class { 'mysql::server':
    root_password     =>   'test',
  }

  # class {'mysql::server::monitor':
  #   mysql_monitor_hostname  =>  'somehost',
  #   mysql_monitor_password  =>  'mysqlmonitorpass',
  #   mysql_monitor_username  =>  'mysqlmonitor',
  # }

  class { 'mysql::bindings':
    php_enable        =>  true,
  }

  class { 'mysql::server::backup':
    backupcompress    =>  true,
    backupdatabases   =>  'wordpress',
    backupdir         =>  '/vol/backups',
    backuppassword    =>  'mypass2',
    backuprotate      =>  7,
    backupuser        =>  'wordpress_backup',
    file_per_database =>  true,
  }

}
