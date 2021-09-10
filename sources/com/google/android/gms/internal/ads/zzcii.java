package com.google.android.gms.internal.ads;

public final class zzcii implements zzeqb<zzcif> {
    private final zzeqo<zzbeb> zzfuu;

    private zzcii(zzeqo<zzbeb> zzeqo) {
        this.zzfuu = zzeqo;
    }

    public static zzcii zzaa(zzeqo<zzbeb> zzeqo) {
        return new zzcii(zzeqo);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzcif(this.zzfuu.get());
    }
}
