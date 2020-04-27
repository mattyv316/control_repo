class profile::agent_nodes {
  include dockeragent
  dockeragent::node{'web.puppetlabs.vm':}
  dockeragent::node{'db.puppetlabs.vm':}
}
