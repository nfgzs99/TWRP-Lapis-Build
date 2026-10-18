#!/sbin/sh

load_panel()
{
    insmod /lib/modules/kfifo_buf.ko
    insmod /lib/modules/nt_usb_ts.ko
    insmod /lib/modules/haptic.ko
    insmod /lib/modules/haptic_sfdc.ko
    insmod /lib/modules/regulator-vibrator.ko
    insmod /vendor_dlkm/lib/modules/touchpanel_event_notify.ko
    insmod /vendor_dlkm/lib/modules/ft3683g.ko
    insmod /vendor_dlkm/lib/modules/mtk_ioctl_touch_boost.ko
    insmod /vendor_dlkm/lib/modules/touch_boost.ko
    insmod /vendor_dlkm/lib/modules/eph861.ko
}

load_panel
wait 1
setprop modules.loaded 1
exit 0