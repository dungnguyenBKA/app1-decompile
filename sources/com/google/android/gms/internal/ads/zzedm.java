package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzegd;
import java.security.GeneralSecurityException;

public final class zzedm extends zzeax<zzedx> {
    zzedm() {
        super(zzedx.class, new zzedl(zzebd.class));
    }

    /* access modifiers changed from: private */
    public static void zza(zzeeb zzeeb) {
        if (zzeeb.zzbbj() < 10) {
            throw new GeneralSecurityException("tag size too short");
        } else if (zzeeb.zzbbj() > 16) {
            throw new GeneralSecurityException("tag size too long");
        }
    }

    /* access modifiers changed from: private */
    public static void zzeu(int i) {
        if (i != 32) {
            throw new GeneralSecurityException("AesCmacKey size wrong, must be 32 bytes");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeax
    public final String getKeyType() {
        return "type.googleapis.com/google.crypto.tink.AesCmacKey";
    }

    @Override // com.google.android.gms.internal.ads.zzeax
    public final zzegd.zza zzbal() {
        return zzegd.zza.SYMMETRIC;
    }

    /* Return type fixed from 'com.google.android.gms.internal.ads.zzeba<com.google.android.gms.internal.ads.zzedy, com.google.android.gms.internal.ads.zzedx>' to match base method */
    @Override // com.google.android.gms.internal.ads.zzeax
    public final zzeba<?, zzedx> zzbao() {
        return new zzedo(this, zzedy.class);
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [com.google.android.gms.internal.ads.zzemo] */
    @Override // com.google.android.gms.internal.ads.zzeax
    public final /* synthetic */ void zzc(zzedx zzedx) {
        zzedx zzedx2 = zzedx;
        zzeiv.zzz(zzedx2.getVersion(), 0);
        zzeu(zzedx2.zzbbe().size());
        zza(zzedx2.zzbbf());
    }

    /* Return type fixed from 'com.google.android.gms.internal.ads.zzemo' to match base method */
    @Override // com.google.android.gms.internal.ads.zzeax
    public final /* synthetic */ zzedx zzp(zzejr zzejr) {
        return zzedx.zzc(zzejr, zzeko.zzbhw());
    }
}
