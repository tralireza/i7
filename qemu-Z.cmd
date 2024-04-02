qemu-system-x86_64   -name Z
 -object memory-backend-file,id=hg0,size=16g,mem-path=/dev/hugepages1g,prealloc=on,share=off
 -machine q35,mem-merge=off,dump-guest-core=off,vmport=off,memory-backend=hg0
 -accel kvm,dirty-ring-size=16384
 -cpu host -smp 2 -m 16g -boot dc
 -boot menu=on
 -device pcie-root-port,id=pcirp0,bus=pcie.0

 -object iothread,id=io0
  -device virtio-blk-pci,drive=disk0,disable-legacy=on,num-queues=4,iothread=io0,packed=on,bootindex=1
  -drive if=none,id=disk0,file=/VMs/14z0.qcow2,format=qcow2,cache=none,aio=native

 -object iothread,id=io1
  -device virtio-blk-pci,drive=disk1,disable-legacy=on,num-queues=4,iothread=io1,packed=on
  -drive if=none,id=disk1,file=/dev/disk/by-id/ata-WDC_WD40EZRX-00SPEB0_WD-WCC4E2EC819J,format=raw,cache=none,aio=native

 -object iothread,id=io2
 -device virtio-blk-pci,drive=disk2,disable-legacy=on,num-queues=4,iothread=io2,packed=on
 -drive if=none,id=disk2,file=/VMs/bkzStore.qcow2,format=qcow2,cache=none,aio=native

 -device virtio-net,packed=on,mq=on,netdev=nd0,mac=06:ae:bf:e1:93:39,disable-legacy=on,bus=pcie.0
  -netdev tap,vhost=on,id=nd0,helper=/usr/local/libexec/qemu-bridge-helper
 -device virtio-net,packed=on,mq=on,netdev=nd1,mac=06:ae:bf:e1:71:17,disable-legacy=on,bus=pcie.0
  -netdev tap,vhost=on,id=nd1,helper=/usr/local/libexec/qemu-bridge-helper

 -overcommit mem-lock=on
 -vnc i7:0
 -monitor telnet:i7:55031,server,nowait
 -daemonize
