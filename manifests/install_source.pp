# Class: r_cacti::install_source inherits r_cacti
#
#
class r_cacti::install_source inherits r_cacti {
  include archive
  archive { "/tmp/cacti-source-${version}.tar.gz":
    ensure        => present,
    extract       => true,
    extract_path  => "${target_dir_base}",
    source        => "${relsource}",
    creates       => "${target_dir_base}/cacti-release-${version}",
    cleanup       => true,
  }
  file { "${target_dir_base}/cacti":
    ensure        => 'link',
    target        => "${target_dir_base}/cacti-release-${version}",
    require       => Archive['cacti-source'],
  }
}