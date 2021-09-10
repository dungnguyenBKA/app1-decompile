package com.google.android.gms.internal.ads;

public final class zzcqa implements zzeqb<zzcpv> {
    private final zzeqo<zzcpt> zzfco;
    private final zzeqo<zzdzv> zzgqr;

    private zzcqa(zzeqo<zzcpt> zzeqo, zzeqo<zzdzv> zzeqo2) {
        this.zzfco = zzeqo;
        this.zzgqr = zzeqo2;
    }

    public static zzcqa zzaq(zzeqo<zzcpt> zzeqo, zzeqo<zzdzv> zzeqo2) {
        return new zzcqa(zzeqo, zzeqo2);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzcpv(this.zzfco.get(), this.zzgqr.get());
    }
}
