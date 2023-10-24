content: runtime.config vmm.config linux initrd

runtime.config vmm.config:
	cp $(REP_DIR)/recipes/raw/vmm-busybox-arm64/$@ $@

initrd:
	wget --quiet -c -O $@ http://genode.org/files/release-20.02/initrd-arm64

linux:
	wget --quiet -c -O $@ http://genode.org/files/release-22.11/linux-virtio-arm64
