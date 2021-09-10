package com.google.android.gms.internal.ads;

public class zzap extends Exception {
    private long zzal;
    private final zzz zzbt;

    public zzap() {
        this.zzbt = null;
    }

    /* access modifiers changed from: package-private */
    public final void zza(long j) {
        this.zzal = j;
    }

    public zzap(zzz zzz) {
        this.zzbt = zzz;
    }

    public zzap(String str) {
        super(str);
        this.zzbt = null;
    }

    public zzap(Throwable th) {
        super(th);
        this.zzbt = null;
    }
}
