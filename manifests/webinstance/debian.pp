# Class: r_cacti::webinstance::debian inherits r_cacti::webinstance::debian
#
#
class r_cacti::webinstance::debian inherits r_cacti::webinstance {
  if $manage_packages {
    ensure_packages(['libapache2-mod-php7.0','php7.0'],{'ensure' => 'present'})
    apache::mod { 'php7.0':
      path => '/usr/lib/apache2/modules/libphp7.0.so',
    }
  }
}