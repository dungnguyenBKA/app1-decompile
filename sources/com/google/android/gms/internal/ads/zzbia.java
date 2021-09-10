package com.google.android.gms.internal.ads;

final class zzbia implements zzchh {
    private zzbqx zzeyy;
    private zzdnl zzeyz;
    private zzdkv zzezc;
    private zzdjx zzezd;
    private zzbwg zzezg;
    private final /* synthetic */ zzbgz zzffq;

    private zzbia(zzbgz zzbgz) {
        this.zzffq = zzbgz;
    }

    /* Return type fixed from 'com.google.android.gms.internal.ads.zzbqy' to match base method */
    @Override // com.google.android.gms.internal.ads.zzbqy
    public final /* synthetic */ zzbqy<zzchi> zza(zzdjx zzdjx) {
        this.zzezd = zzdjx;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzchh
    /* renamed from: zzaid */
    public final zzchi zzagm() {
        zzeqh.zza(this.zzezg, zzbwg.class);
        zzeqh.zza(this.zzeyy, zzbqx.class);
        return new zzbid(this.zzffq, new zzbpa(), new zzdon(), new zzbqh(), new zzcle(), this.zzezg, this.zzeyy, new zzdor(), this.zzeyz, this.zzezc, this.zzezd);
    }

    @Override // com.google.android.gms.internal.ads.zzchh
    public final /* synthetic */ zzchh zzf(zzbqx zzbqx) {
        this.zzeyy = (zzbqx) zzeqh.checkNotNull(zzbqx);
        return this;
    }

    /* Return type fixed from 'com.google.android.gms.internal.ads.zzbqy' to match base method */
    @Override // com.google.android.gms.internal.ads.zzbqy
    public final /* synthetic */ zzbqy<zzchi> zza(zzdkv zzdkv) {
        this.zzezc = zzdkv;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzchh
    public final /* synthetic */ zzchh zzf(zzbwg zzbwg) {
        this.zzezg = (zzbwg) zzeqh.checkNotNull(zzbwg);
        return this;
    }

    /* Return type fixed from 'com.google.android.gms.internal.ads.zzbqy' to match base method */
    @Override // com.google.android.gms.internal.ads.zzbqy
    public final /* synthetic */ zzbqy<zzchi> zza(zzdnl zzdnl) {
        this.zzeyz = zzdnl;
        return this;
    }
}
