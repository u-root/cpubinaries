# cpubinaries
This is a set of cpubinaries so you can learn how to use it.

We include:

a kernel (cpukernel) with a built-in initramfs comtaining cpud, as well as a public
key. Also included, should you want to build your own, is the config file (cpu.config).

a binary client program, cpu, as well as the private key to use. You can place this
key in ~/.ssh or specify it via the -key option to cpu.

a script to run the usb stick via qemu (TESTQEMU); and a script to run a cpu command (EXAMPLE).

the extlinux.conf used for the stick.

usbstick.xz is a compressed USB stick image which is bootable. It will uncompress to about
7G. You can use the TESTQEMU script to try it out, or dd it onto a usb stick and boot that
stick on an x86 system.

Be careful how you use the keys; they're public. You should really only use them as part
of the demo.

The cpukernel was built using the github.com:linuxboot/mainboards repo. If you clone this repo,
cd mainboards/intel/generic
make fetch
make cpukernel

will rebuild the kernel.