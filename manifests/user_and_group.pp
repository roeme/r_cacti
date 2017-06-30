# Class: r_cacti::user_and_group
#
#
class r_cacti::user_and_group {
  user { "${::r_cacti::cacti_user}":
    ensure  => present,
    comment => 'Cacti system account',
    home    => "${::r_cacti::target_dir_base}/cacti",
    system  => true,
    gid     => "${::r_cacti::cacti_group}",
  }
  group { "${::r_cacti::cacti_group}":
    ensure  => present,
  }
}