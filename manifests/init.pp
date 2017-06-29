# Class: r_cacti
# ===========================
#
# Full description of class r_cacti here.
#
# Parameters
# ----------
#
# Document parameters here.
#
# * `sample parameter`
# Explanation of what this parameter affects and what it defaults to.
# e.g. "Specify one or more upstream ntp servers as an array."
#
# Variables
# ----------
#
# Here you should define a list of variables that this module would require.
#
# * `sample variable`
#  Explanation of how this variable affects the function of this class and if
#  it has a default. e.g. "The parameter enc_ntp_servers must be set by the
#  External Node Classifier as a comma separated list of hostnames." (Note,
#  global variables should be avoided in favor of class parameters as
#  of Puppet 2.6.)
#
# Examples
# --------
#
# @example
#    class { 'r_cacti':
#      servers => [ 'pool.ntp.org', 'ntp.local.company.com' ],
#    }
#
# Authors
# -------
#
# Author Name <author@domain.com>
#
# Copyright
# ---------
#
# Copyright 2017 Your name here, unless otherwise noted.
#
class r_cacti(
  String  $version           = "1.1.10",
  String  $target_dir_base   = "/usr/share/local",
  String  $relsource         = "https://github.com/Cacti/cacti/archive/release/${version}.tar.gz",
  Boolean $setup_link_varlog = true,
  String  $cacti_user        = 'cacti',
  String  $cacti_group       = 'cacti',
  Boolean $mkusergroup       = true,
  Boolean $mkvhost           = true,
  Optional[String] $vhostdomain = undef,
  Optional[String] $httpd_group = undef
  ) {
}
