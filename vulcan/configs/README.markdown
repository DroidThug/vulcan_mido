The files in this directory are meant to be used as a base for Vulcan config. If you want to build a custom kernel with features, all options in vulcan-custom.cfg are to be enabled.
These enable advanced kernel features.

The way to enable these options would be:
```
     ARCH=arm64 scripts/kconfig/merge_config.sh arch/arm64/configs/vulcan_defconfig vulcan/configs/config.vulcan
```
This will generate a .config that can then be used to save a new defconfig or
compile a new kernel with advanced features enabled.
