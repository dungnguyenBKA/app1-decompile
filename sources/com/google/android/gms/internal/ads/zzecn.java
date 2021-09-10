package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzegd;

public final class zzecn extends zzeax<zzegp> {
    zzecn() {
        super(zzegp.class, new zzecm(zzeaq.class));
    }

    @Override // com.google.android.gms.internal.ads.zzeax
    public final String getKeyType() {
        return "type.googleapis.com/google.crypto.tink.KmsAeadKey";
    }

    @Override // com.google.android.gms.internal.ads.zzeax
    public final zzegd.zza zzbal() {
        return zzegd.zza.REMOTE;
    }

    /* Return type fixed from 'com.google.android.gms.internal.ads.zzeba<com.google.android.gms.internal.ads.zzegs, com.google.android.gms.internal.ads.zzegp>' to match base method */
    @Override // com.google.android.gms.internal.ads.zzeax
    public final zzeba<?, zzegp> zzbao() {
        return new zzecp(this, zzegs.class);
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [com.google.android.gms.internal.ads.zzemo] */
    @Override // com.google.android.gms.internal.ads.zzeax
    public final /* synthetic */ void zzc(zzegp zzegp) {
        zzeiv.zzz(zzegp.getVersion(), 0);
    }

    /* Return type fixed from 'com.google.android.gms.internal.ads.zzemo' to match base method */
    @Override // com.google.android.gms.internal.ads.zzeax
    public final /* synthetic */ zzegp zzp(zzejr zzejr) {
        return zzegp.zzv(zzejr, zzeko.zzbhw());
    }
}
