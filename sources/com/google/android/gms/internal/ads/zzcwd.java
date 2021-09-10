package com.google.android.gms.internal.ads;

public final class zzcwd implements zzeqb<zzcwe> {
    private final zzeqo<zzcxh> zzgwd;

    private zzcwd(zzeqo<zzcxh> zzeqo) {
        this.zzgwd = zzeqo;
    }

    public static zzcwd zzai(zzeqo<zzcxh> zzeqo) {
        return new zzcwd(zzeqo);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzcwe(this.zzgwd.get());
    }
}
