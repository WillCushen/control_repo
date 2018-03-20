node default {
  file {'/root/README':
    ensure => file,
    content => 'This is a readme',
  }
}

node 'tci-linux-2', 'tci-linux-5' {
  include libvirt
  include stdlib
}
