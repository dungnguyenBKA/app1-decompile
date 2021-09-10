package com.google.android.gms.internal.ads;

public final class zzdbm implements zzeqb<zzdbk> {
    private final zzeqo<zzdzv> zzewf;
    private final zzeqo<zzdnp> zzfvf;
    private final zzeqo<zzazn> zzfze;

    private zzdbm(zzeqo<zzdzv> zzeqo, zzeqo<zzdnp> zzeqo2, zzeqo<zzazn> zzeqo3) {
        this.zzewf = zzeqo;
        this.zzfvf = zzeqo2;
        this.zzfze = zzeqo3;
    }

    public static zzdbm zzaa(zzeqo<zzdzv> zzeqo, zzeqo<zzdnp> zzeqo2, zzeqo<zzazn> zzeqo3) {
        return new zzdbm(zzeqo, zzeqo2, zzeqo3);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzdbk(this.zzewf.get(), this.zzfvf.get(), this.zzfze.get());
    }
}
