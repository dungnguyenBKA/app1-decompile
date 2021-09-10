package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzegd;

public final class zzecc extends zzeax<zzees> {
    zzecc() {
        super(zzees.class, new zzecf(zzeaq.class));
    }

    @Override // com.google.android.gms.internal.ads.zzeax
    public final String getKeyType() {
        return "type.googleapis.com/google.crypto.tink.AesGcmKey";
    }

    @Override // com.google.android.gms.internal.ads.zzeax
    public final zzegd.zza zzbal() {
        return zzegd.zza.SYMMETRIC;
    }

    /* Return type fixed from 'com.google.android.gms.internal.ads.zzeba<com.google.android.gms.internal.ads.zzeev, com.google.android.gms.internal.ads.zzees>' to match base method */
    @Override // com.google.android.gms.internal.ads.zzeax
    public final zzeba<?, zzees> zzbao() {
        return new zzece(this, zzeev.class);
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [com.google.android.gms.internal.ads.zzemo] */
    @Override // com.google.android.gms.internal.ads.zzeax
    public final /* synthetic */ void zzc(zzees zzees) {
        zzees zzees2 = zzees;
        zzeiv.zzz(zzees2.getVersion(), 0);
        zzeiv.zzfu(zzees2.zzbbe().size());
    }

    /* Return type fixed from 'com.google.android.gms.internal.ads.zzemo' to match base method */
    @Override // com.google.android.gms.internal.ads.zzeax
    public final /* synthetic */ zzees zzp(zzejr zzejr) {
        return zzees.zzk(zzejr, zzeko.zzbhw());
    }
}
