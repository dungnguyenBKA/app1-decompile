package com.google.android.gms.internal.ads;

public final class zzdbi implements zzeqb<zzdbg> {
    private final zzeqo<zzcin> zzewd;
    private final zzeqo<zzdzv> zzhak;
    private final zzeqo<String> zzhay;

    private zzdbi(zzeqo<String> zzeqo, zzeqo<zzdzv> zzeqo2, zzeqo<zzcin> zzeqo3) {
        this.zzhay = zzeqo;
        this.zzhak = zzeqo2;
        this.zzewd = zzeqo3;
    }

    public static zzdbi zzz(zzeqo<String> zzeqo, zzeqo<zzdzv> zzeqo2, zzeqo<zzcin> zzeqo3) {
        return new zzdbi(zzeqo, zzeqo2, zzeqo3);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzdbg(this.zzhay.get(), this.zzhak.get(), this.zzewd.get());
    }
}
