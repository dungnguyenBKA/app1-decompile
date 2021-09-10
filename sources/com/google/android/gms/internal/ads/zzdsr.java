package com.google.android.gms.internal.ads;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzdsr implements Runnable {
    private final String zzdjf;
    private final zzdss zzhlk;

    zzdsr(zzdss zzdss, String str) {
        this.zzhlk = zzdss;
        this.zzdjf = str;
    }

    public final void run() {
        this.zzhlk.zzhc(this.zzdjf);
    }
}
