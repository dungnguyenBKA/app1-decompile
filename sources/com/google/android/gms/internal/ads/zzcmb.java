package com.google.android.gms.internal.ads;

public class zzcmb extends Exception {
    private final zzdom zzgnm;

    public zzcmb(zzdom zzdom) {
        this.zzgnm = zzdom;
    }

    public final zzdom zzarh() {
        return this.zzgnm;
    }

    public zzcmb(zzdom zzdom, String str) {
        super(str);
        this.zzgnm = zzdom;
    }

    public zzcmb(zzdom zzdom, String str, Throwable th) {
        super(str, th);
        this.zzgnm = zzdom;
    }
}
