package com.google.android.gms.internal.ads;

public final class zzcyn implements zzeqb<zzcxy> {
    private final zzeqo<zzdrz> zzgjp;

    private zzcyn(zzeqo<zzdrz> zzeqo) {
        this.zzgjp = zzeqo;
    }

    public static zzcyn zzak(zzeqo<zzdrz> zzeqo) {
        return new zzcyn(zzeqo);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzcxy(this.zzgjp.get());
    }
}
