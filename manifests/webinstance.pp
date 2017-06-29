# Clasr_s: cacti::webinstance inherits r_cacti
#
#
class r_cacti::webinstance inherits r_cacti {
  if $mkvhost {
    include apache
    apache::vhost { 'cacti-vhost':
      docroot       => "${target_dir_base}/cacti",
      docroot_owner => $cacti_user,
      docroot_group => $cacti_group,
      serveraliases => $vhostdomain,
    }
  }

  include r_cacti::install_source

  case $osfamily {
    'Debian': {
      #include r_cacti::webinstance::debian
    }
    default: {
      fail("Unknown \$osfamily: ${osfamily}")
    }
  }
}