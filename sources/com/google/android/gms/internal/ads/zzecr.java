package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzegd;

public final class zzecr extends zzeax<zzegt> {
    zzecr() {
        super(zzegt.class, new zzecq(zzeaq.class));
    }

    @Override // com.google.android.gms.internal.ads.zzeax
    public final String getKeyType() {
        return "type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey";
    }

    @Override // com.google.android.gms.internal.ads.zzeax
    public final zzegd.zza zzbal() {
        return zzegd.zza.REMOTE;
    }

    /* Return type fixed from 'com.google.android.gms.internal.ads.zzeba<com.google.android.gms.internal.ads.zzegw, com.google.android.gms.internal.ads.zzegt>' to match base method */
    @Override // com.google.android.gms.internal.ads.zzeax
    public final zzeba<?, zzegt> zzbao() {
        return new zzect(this, zzegw.class);
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [com.google.android.gms.internal.ads.zzemo] */
    @Override // com.google.android.gms.internal.ads.zzeax
    public final /* synthetic */ void zzc(zzegt zzegt) {
        zzeiv.zzz(zzegt.getVersion(), 0);
    }

    /* Return type fixed from 'com.google.android.gms.internal.ads.zzemo' to match base method */
    @Override // com.google.android.gms.internal.ads.zzeax
    public final /* synthetic */ zzegt zzp(zzejr zzejr) {
        return zzegt.zzx(zzejr, zzeko.zzbhw());
    }
}
