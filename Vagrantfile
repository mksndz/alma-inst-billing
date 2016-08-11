# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure('2') do |config|

  config.vm.box = 'bivee/rails'

  config.vm.network :forwarded_port, guest: 3000, host: 3000
  config.vm.network :forwarded_port, guest: 5432, host: 5500

  config.vm.network :private_network, ip: '192.168.50.50'

  config.vm.synced_folder '.', '/vagrant', nfs: true

  config.vm.provider :virtualbox do |v, override|
    v.gui = false

    # Linked clones for extremely fast import of machines
    v.linked_clone = true

    # box customizations for speed
    v.customize ['modifyvm', :id, '--natdnshostresolver1', 'on']
    v.customize ['modifyvm', :id, '--audio', 'none']
    v.customize ['modifyvm', :id, '--clipboard', 'bidirectional']
    v.customize ['modifyvm', :id, '--usb', 'off']
    v.customize ['modifyvm', :id, '--ioapic', 'on']
  end

end
