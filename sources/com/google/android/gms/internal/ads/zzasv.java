package com.google.android.gms.internal.ads;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzasv implements Runnable {
    private final String zzdjf;
    private final zzazo zzdua;

    zzasv(zzazo zzazo, String str) {
        this.zzdua = zzazo;
        this.zzdjf = str;
    }

    public final void run() {
        this.zzdua.zzel(this.zzdjf);
    }
}
