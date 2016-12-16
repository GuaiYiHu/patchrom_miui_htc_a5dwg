#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 14188544 1d86c1b0b2c45e1c42c2b171302127bbde2b90f5 10565632 d368e0b86ee48b2c022a00f78a7fe31dd7e29e70
fi

if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:14188544:1d86c1b0b2c45e1c42c2b171302127bbde2b90f5; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:10565632:d368e0b86ee48b2c022a00f78a7fe31dd7e29e70 EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery 1d86c1b0b2c45e1c42c2b171302127bbde2b90f5 14188544 d368e0b86ee48b2c022a00f78a7fe31dd7e29e70:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
