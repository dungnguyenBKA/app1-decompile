package com.google.android.gms.internal.ads;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzcsk implements Runnable {
    private final zzbeb zzeuk;

    private zzcsk(zzbeb zzbeb) {
        this.zzeuk = zzbeb;
    }

    static Runnable zze(zzbeb zzbeb) {
        return new zzcsk(zzbeb);
    }

    public final void run() {
        this.zzeuk.zzadk();
    }
}
