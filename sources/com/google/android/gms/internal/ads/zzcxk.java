package com.google.android.gms.internal.ads;

public final class zzcxk implements zzeqb<zzcxh> {
    private final zzeqo<zzcin> zzgwd;

    private zzcxk(zzeqo<zzcin> zzeqo) {
        this.zzgwd = zzeqo;
    }

    public static zzcxk zzaj(zzeqo<zzcin> zzeqo) {
        return new zzcxk(zzeqo);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzcxh(this.zzgwd.get());
    }
}
