package com.google.android.gms.internal.ads;

final /* synthetic */ class zzbba implements Runnable {
    private final zzbav zzeko;

    private zzbba(zzbav zzbav) {
        this.zzeko = zzbav;
    }

    static Runnable zza(zzbav zzbav) {
        return new zzbba(zzbav);
    }

    public final void run() {
        this.zzeko.stop();
    }
}
