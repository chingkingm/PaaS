wget 172.31.0.242:/repo/downloads/test_db-master.tar.bz2



lang en_US
keyboard us
timezone Asia/Shanghai --isUtc --nontp
rootpw $1$vAeTf9$4n8TDnbq4OPQq2dl1kRrr0 --iscrypted
reboot
text
url --url=http://172.31.100.100/dvd 
bootloader --append="rhgb quiet crashkernel=auto console=tty0
console=ttyS0,115200"
zerombr
clearpart --all --initlabel
autopart
auth --passalgo=sha512 --useshadow
firstboot --disable
selinux --enforcing
firewall --enabled
%packages
@^minimal
kexec-tools
%end



virt-install \
--name demo \
--memory 2048 \
--disk /var/lib/libvirt/images/vmdisk.qcow2 \
--graphics none \
--network bridge=br0 \
--extra-args="ks=http://172.31.100.100/ks/ks.cfg console=tty0 console=ttyS0,115200" \
--location http://172.31.100.100/dvd

virt-install \
--name host01 \
--memory 512 \
--graphics none \
--vcpus 1 \
--network network=private \
--disk /var/lib/libvirt/images/vm01.qcow2 \
--import

### mysql

1. root pass rlpl4W5h%x:?

wget -O /opt/cirros-0.5.2-x86_64-disk.img \ http://219.140.166.58:17242/openstackImg/cirros-0.5.2-x86_64-disk.img

wget -O /opt/centos7.qcow2 \ http://219.140.166.58:17242/vm/centos7/centos7.qcow2