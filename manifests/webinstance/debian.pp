# Class: r_cacti::webinstance::debian inherits r_cacti::webinstance::debian
#
#
class r_cacti::webinstance::debian inherits r_cacti::webinstance::debian {
  include apache
  apache::vhost { 'cacti-vhost':
    docroot       => "$target_dir_base/cacti",
    docroot_owner => $cacti_user,
    docroot_group => $cacti_group,
  }
}