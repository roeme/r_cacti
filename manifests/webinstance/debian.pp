# Class: r_cacti::webinstance::debian inherits r_cacti::webinstance::debian
#
#
class r_cacti::webinstance::debian inherits r_cacti::webinstance {
  if $manage_packages {
    ensure_packages([
      'libapache2-mod-php7.0',
      'php7.0'
      'php7.0-mysql',
      'php7.0-mbstring'],{'ensure' => 'present'})
  }
}