package com.google.android.gms.internal.ads;

public final class zzdei implements zzeqb<zzdej> {
    private final zzeqo<String> zzgle;

    private zzdei(zzeqo<String> zzeqo) {
        this.zzgle = zzeqo;
    }

    public static zzdei zzaq(zzeqo<String> zzeqo) {
        return new zzdei(zzeqo);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzdej(this.zzgle.get());
    }
}
