# Class: r_cacti::webinstance::debian inherits r_cacti::webinstance::debian
#
#
class r_cacti::webinstance::debian inherits r_cacti::webinstance {
  if $manage_packages {
    ensure_packages([
      'libapache2-mod-php7.0',
      'php7.0',
      'php7.0-mysql',
      'php7.0-mbstring',
      'php7.0-xml',
      'php7.0-gd',
      'php7.0-ldap'
      'php7.0-snmp',
      'php7.0-gmp'],{'ensure' => 'present'})
  }
}