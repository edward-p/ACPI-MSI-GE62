amls= dsdt.aml ssdt10.aml ssdt11.aml ssdt12.aml ssdt13.aml \
ssdt1.aml ssdt2.aml ssdt3.aml ssdt4.aml ssdt5.aml ssdt6.aml \
ssdt7.aml ssdt8.aml ssdt9.aml

all: $(amls) acpi_override.img

$(amls): %.aml: %.dsl
	iasl -tc $<

acpi_override.img: $(amls)
	mkdir -p kernel/firmware/acpi
	cp $(amls) kernel/firmware/acpi
	find kernel | cpio -H newc --create > acpi_override.img

clean:
	rm -rf kernel
	rm acpi_override.img
	rm *.hex *.aml