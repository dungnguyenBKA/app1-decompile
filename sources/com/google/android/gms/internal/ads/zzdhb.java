package com.google.android.gms.internal.ads;

public final class zzdhb implements zzeqb<zzdgz> {
    private final zzeqo<zzdzv> zzewf;
    private final zzeqo<zzayg> zzexx;
    private final zzeqo<String> zzfyr;

    public zzdhb(zzeqo<zzayg> zzeqo, zzeqo<zzdzv> zzeqo2, zzeqo<String> zzeqo3) {
        this.zzexx = zzeqo;
        this.zzewf = zzeqo2;
        this.zzfyr = zzeqo3;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzdgz(this.zzexx.get(), this.zzewf.get(), this.zzfyr.get());
    }
}
