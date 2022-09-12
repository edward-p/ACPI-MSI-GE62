ACPI-MSI-GE62
---

This my Laptop's DSDT/SSDTs patched by myself for Linux.

__Important!!! For `MSI-GE62` only!!! Linux Only!!!__

It won't be flashed into the BIOS. Using the `acpi_override` feature provided by linux kernel instead.

### Compile and install

Required:
- acpica

```
cd src
make
sudo make install
```

And don't forget adding `initrd /boot/acpi_override.img` to your bootloader.


### Patches applied

- [x] Fix ACPI lockup issue when changing power status of discrete graphic card. See [commit/86a2f7c](https://github.com/edward-p/ACPI-MSI-GE62/commit/6728617efb76e508bd58e47ad6b4ec643aab63d3)
- [x] Mask `_OSI("Linux")` that modern linux kernel not using. See [commit/d4480296](https://github.com/edward-p/ACPI-MSI-GE62/commit/d448029618b5a20d4c9f21cd61032de933427f3c)
- [x] Fix TPM Firmware Bug (MSFT0101 problem). See [commit/3b0d840e](https://github.com/edward-p/ACPI-MSI-GE62/commit/3b0d840ece8999c2f35b0792f44700e4136f8ac2)

### Remaining issue

-	[ ] ACPI Warning: \_SB.PCI0.PEG0.PEGP._DSM: Argument #4 type mismatch - Found [Buffer]
