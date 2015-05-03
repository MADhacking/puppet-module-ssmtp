# ssmtp::params provides OS specific parameters used internally

class ssmtp::params {
  case $::operatingsystem {
    'Gentoo' : {
      $package = ['mail-mta/ssmtp']
      $group = 'root'
      $owner = 'root'
      $conf = '/etc/ssmtp/ssmtp.conf'
    }
    default  : {
      fail("${::operatingsystem} not supported!")
    }
  }
}
