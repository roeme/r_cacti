# Class: r_cacti::install_source inherits r_cacti
#
#
class r_cacti::install_source inherits r_cacti {
  include archive
  archive { "/tmp/cacti-source-${version}.tar.gz":
    ensure       => present,
    extract      => true,
    extract_path => "${target_dir_base}",
    source       => "${relsource}",
    creates      => "${target_dir_base}/cacti-release-${version}",
    cleanup      => true,
  }
  file { "${target_dir_base}/cacti":
    ensure       => 'link',
    target       => "${target_dir_base}/cacti-release-${version}",
    require      => Archive["/tmp/cacti-source-${version}.tar.gz"],
  }
  file { '/var/log/cacti':
    ensure       => 'directory',
    owner        => 'cacti',
    group        => 'root',
    mode         => '0775',
  }
  file { "${::r_cacti::target_dir_base}/cacti/log":
    ensure  => link,
    target  => '/var/log/cacti',
    require => "${::r_cacti::target_dir_base}/cacti",
  }
}