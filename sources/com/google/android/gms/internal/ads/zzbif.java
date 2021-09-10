package com.google.android.gms.internal.ads;

final class zzbif implements zzczl {
    private zzbqx zzeyy;
    private final /* synthetic */ zzbgz zzffq;
    private zzdab zzfqe;

    private zzbif(zzbgz zzbgz) {
        this.zzffq = zzbgz;
    }

    @Override // com.google.android.gms.internal.ads.zzczl
    public final /* synthetic */ zzczl zza(zzdab zzdab) {
        this.zzfqe = (zzdab) zzeqh.checkNotNull(zzdab);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzczl
    public final zzczm zzaim() {
        zzeqh.zza(this.zzeyy, zzbqx.class);
        zzeqh.zza(this.zzfqe, zzdab.class);
        return new zzbie(this.zzffq, this.zzfqe, new zzbpa(), new zzcle(), this.zzeyy, new zzdor());
    }

    @Override // com.google.android.gms.internal.ads.zzczl
    @Deprecated
    public final /* synthetic */ zzczl zzg(zzbwg zzbwg) {
        zzeqh.checkNotNull(zzbwg);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzczl
    public final /* synthetic */ zzczl zzg(zzbqx zzbqx) {
        this.zzeyy = (zzbqx) zzeqh.checkNotNull(zzbqx);
        return this;
    }
}
