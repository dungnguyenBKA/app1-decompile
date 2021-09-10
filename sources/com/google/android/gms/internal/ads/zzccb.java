package com.google.android.gms.internal.ads;

public final class zzccb implements zzeqb<zzccc> {
    private final zzeqo<zzcbs> zzged;

    private zzccb(zzeqo<zzcbs> zzeqo) {
        this.zzged = zzeqo;
    }

    public static zzccb zzz(zzeqo<zzcbs> zzeqo) {
        return new zzccb(zzeqo);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzccc(this.zzged.get());
    }
}
