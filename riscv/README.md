## `cpu` on RISC-V

If you want to play with another architecture, try [RISC-V](https://riscv.org/)!

Note: The below shell scripts are for convenience. Have a look inside!

### Run `cpud` in QEMU

This script will bind the VM's `cpud` to your localhost port `42` so that you
can run it alongside e.g. the UEFI based system in `../uefi`.

```sh
./QEMU -kernel cpukernel -nographic
```

To shut down after use, just enter `shutdown`.

### Test commands

```sh
./cpu.sh cat /proc/cpuinfo
```

Should print:

```
processor       : 0
hart            : 0
isa             : rv64imafdcsu
mmu             : sv48
```

```sh
./cpu.sh ls
```

Should yield:

```
QEMU
README.md
cpu
cpu.sh
cpukernel
hello-rust.sh
```

### Test application

Clone and build:
```sh
git clone https://github.com/orangecms/hello-linux-rv64-rs
cd hello-linux-rv64-rs
cargo build --release --target riscv64gc-unknown-linux-gnu
```

From this directory, `cpubinaries/riscv`:
```sh
./hello-rust.sh
```
