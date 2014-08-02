class apache_linked (
  $html_location = '/vol/apache_html'
) inherits apache {
  file { $html_location:
    ensure    =>  directory,
    recurse   =>  true,
    owner     =>  'root',
    group     =>  'root',
  }

  File<| title == $docroot |> {
    ensure    =>  'link',
    target    =>  $html_location,
    force     =>  true,
  }
}
