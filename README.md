ACPI-MSI-GE62
---

This my Laptop's DSDT/SSDTs patched by myself for Linux.

__Important!!! For `MSI-GE62` only!!! Linux Only!!!__

It won't be flashed into the BIOS. Using the `acpi_override` feature provided by linux kernel.

### Compile and install

Required:
- acpica

```
cd src
make
sudo make install
```

And don't forget add `initrd /boot/acpi_override.img` to your bootloader.


### Ptches applied

- [x] Fix ACPI lockup issue when changing power status of discrete graphic card. [86a2f7c](https://github.com/edward-p/ACPI-MSI-GE62/commit/6728617efb76e508bd58e47ad6b4ec643aab63d3)
- [x] Mask `_OSI("Linux")` that modern linux kernel not using. [d4480296](https://github.com/edward-p/ACPI-MSI-GE62/commit/d448029618b5a20d4c9f21cd61032de933427f3c)
- [x] Fix TPM Firmware Bug (MSFT0101 problem). [86a2f7ca](https://github.com/edward-p/ACPI-MSI-GE62/commit/86a2f7ca0d57d56b79cbbb5c04a461588e05998c)

### Remained issue

-	[ ] ACPI Warning: \_SB.PCI0.PEG0.PEGP._DSM: Argument #4 type mismatch - Found [Buffer]