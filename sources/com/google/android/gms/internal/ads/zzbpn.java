package com.google.android.gms.internal.ads;

public final class zzbpn implements zzeqb<zzbnw> {
    private final zzeqo<zzbsg> zzffw;
    private final zzeqo<zzbud> zzffx;
    private final zzeqo<zzbsw> zzfhf;
    private final zzeqo<zzdnl> zzfrr;
    private final zzeqo<zzdmw> zzfvr;
    private final zzeqo<zzdkk> zzfxp;
    private final zzeqo<zzbrh> zzfxq;

    private zzbpn(zzeqo<zzdnl> zzeqo, zzeqo<zzdmw> zzeqo2, zzeqo<zzbsg> zzeqo3, zzeqo<zzbsw> zzeqo4, zzeqo<zzdkk> zzeqo5, zzeqo<zzbrh> zzeqo6, zzeqo<zzbud> zzeqo7) {
        this.zzfrr = zzeqo;
        this.zzfvr = zzeqo2;
        this.zzffw = zzeqo3;
        this.zzfhf = zzeqo4;
        this.zzfxp = zzeqo5;
        this.zzfxq = zzeqo6;
        this.zzffx = zzeqo7;
    }

    public static zzbpn zza(zzeqo<zzdnl> zzeqo, zzeqo<zzdmw> zzeqo2, zzeqo<zzbsg> zzeqo3, zzeqo<zzbsw> zzeqo4, zzeqo<zzdkk> zzeqo5, zzeqo<zzbrh> zzeqo6, zzeqo<zzbud> zzeqo7) {
        return new zzbpn(zzeqo, zzeqo2, zzeqo3, zzeqo4, zzeqo5, zzeqo6, zzeqo7);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzbnw(this.zzfrr.get(), this.zzfvr.get(), this.zzffw.get(), this.zzfhf.get(), this.zzfxp.get(), this.zzfxq.get(), this.zzffx.get());
    }
}
