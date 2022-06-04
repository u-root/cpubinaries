## Howto

You need to have QEMU set up. Then follow those steps:

### Clone the repo and run the VM

```sh
git clone https://github.com/u-root/cpubinaries
cd cpubinaries/uefi
./QEMU -kernel cpukernel
```

### Run `cpu` in another shell

```sh
cd cpubinaries/uefi
./cpu -key ./cpu_rsa -sp 23 localhost ls
```

### Try other commands

The [Gokrazy project](https://gokrazy.org/) has a neat tool called [`fbstatus`](
https://github.com/gokrazy/fbstatus). It's written in Go, so install it, and:

```sh
git clone https://github.com/gokrazy/fbstatus
cd fbstatus
go build .
```

Now this leaves a binary named `fbstatus` in that same directory. Run via `cpu`:

```sh
cd cpubinaries/uefi
./cpu -key ./cpu_rsa -sp 23 localhost /path/to/fbstatus/fbstatus
```

![`fbstatus` via `cpu`](fbstatus-cpu.png)

### On real hardware

Create a VFAT partition on a GPT partitioned USB drive, which will serve as the
[ESP (EFI System Partition)](https://en.wikipedia.org/wiki/EFI_system_partition)
and create the following directory structure in it:

```sh
mkdir -p /path/to/usbmount/efi/boot
```

Now, copy the `cpukernel` as `bootx64.efi` into it:

```sh
cp cpukernel /path/to/usbmount/efi/boot/bootx64.efi
```

And you can now boot into that when inserting that USB drive into an x86
machine running UEFI. You may need to select it from the boot menu.
