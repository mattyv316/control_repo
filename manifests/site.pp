node default {
}
node 'learning.puppet.vm'{
  include role::master_server
}
