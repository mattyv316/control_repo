class profile::agent_nodes {
  include dockeragent
  dockeragent::node{'web.puppetlabs.vm':}
  dockeragent::node{'db.puppetlabs.vm':}
  host {'web.puppet.vm':
    ensure => present,
  }
  host {'db.puppet.vm':
    ensure => present,
  }
}
