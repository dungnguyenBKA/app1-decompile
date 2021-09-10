package com.google.android.gms.internal.ads;

public final class zzbir implements zzeqb<zzazo> {
    private final zzeqo<String> zzfqs;

    public zzbir(zzeqo<String> zzeqo) {
        this.zzfqs = zzeqo;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (zzazo) zzeqh.zza(new zzazo(this.zzfqs.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
