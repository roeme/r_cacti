# Class: r_cacti::deploy_config inherits r_cacti
#
#
class r_cacti::deploy_config inherits r_cacti {
  file { "${target_dir_base}/cacti/include/config.php":
    ensure    => file,
    content   => template('r_cacti/config.php.erb'),
    require   => File["${target_dir_base}/cacti"],
  }
}