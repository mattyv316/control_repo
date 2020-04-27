class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@learning.puppetlabs.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC8mOS2HsjkCrtOctWWft3a89/ziYICWvVdr1++wwvvdPF7DhWWdUZY1MRAbwpXPjB4w+GQ/ws5l0Ln//Nz6hc5Mgv6sv2C5zdZVjOc/w8Cqp3P/QCzVajMqONUIiYaf+XfAWI88nBKFBwEn4ScshVPZ9HL2opEqqBU8VLMUVZYLxhs/1IR0Z8QqyIjSt5JL+yJp2zTLwzJqQVuGBgHvAi4j71H4aRFScBzxHUIkmlk5JEpSAuIc2z9eVbievnYkndkFWQQ/8O9DNuC7IZ4IfWOJDH1Fmu4sacw9YDaJoLsloic15DLy5dZjethnp2cazDfBS7pZaYn5SHRC9ihbR3p',
  } 
