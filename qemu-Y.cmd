qemu/build/qemu-system-x86_64
 -machine q35,memory-backend=hg0 -m 512m -cpu host -accel kvm   
 -object memory-backend-file,id=hg0,size=512m,mem-path=/dev/hugepages/2m,share=off

 -object iothread,id=io0
  -device virtio-blk-pci,num-queues=4,drive=disk0,disable-legacy=on,iothread=io0,packed=on
  -drive if=none,id=disk0,file=/VMs/Y.qcow2,cache=none,aio=native

 -device virtio-net-pci,packed=on,mq=on,disable-legacy=on,netdev=nd0,mac=06:ae:bf:83:21:c9
  -netdev tap,id=nd0,vhost=on,helper=/usr/local/libexec/qemu-bridge-helper

 -vnc i7:5
 -overcommit mem-lock=on
 
 -monitor stdio
 -nographic
