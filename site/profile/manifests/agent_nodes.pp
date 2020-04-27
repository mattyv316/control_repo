class profile::agent_nodes {
  include dockeragent
  dockeragent::node{'web.puppetlabs.vm':}
  dockeragent::node{'db.puppetlabs.vm':}
  host {'web.puppetlabs.vm':
    ensure  => present,
    ip      => '172.18.0.2',
  }
  host {'db.puppetlabs.vm':
    ensure  => present,
    ip      => '172.18.0.3',
  }
}
