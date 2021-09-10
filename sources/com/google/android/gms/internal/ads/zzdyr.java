package com.google.android.gms.internal.ads;

final class zzdyr implements Runnable {
    private final /* synthetic */ zzdyo zzhzv;
    private final /* synthetic */ zzdzw zzhzw;
    private final /* synthetic */ int zzhzx;

    zzdyr(zzdyo zzdyo, zzdzw zzdzw, int i) {
        this.zzhzv = zzdyo;
        this.zzhzw = zzdzw;
        this.zzhzx = i;
    }

    public final void run() {
        try {
            if (this.zzhzw.isCancelled()) {
                zzdyo.zza(this.zzhzv, (zzdwy) null);
                this.zzhzv.cancel(false);
            } else {
                zzdyo.zza(this.zzhzv, this.zzhzx, this.zzhzw);
            }
        } finally {
            zzdyo.zzb(this.zzhzv, (zzdwy) null);
        }
    }
}
