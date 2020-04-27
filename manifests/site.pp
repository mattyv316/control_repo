node default {
}
node 'learning.puppetlabs.vm'{
  include role::master_server
   file { '/root/README':
    ensure => file,
    content => "Welcome to ${fqdn}\n",
  }
}
