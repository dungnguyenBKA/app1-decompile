package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzegd;
import java.security.GeneralSecurityException;

public final class zzecz extends zzebj<zzefn, zzefo> {
    private static final byte[] zzidj = new byte[0];

    zzecz() {
        super(zzefn.class, zzefo.class, new zzecy(zzeau.class));
    }

    @Override // com.google.android.gms.internal.ads.zzeax
    public final String getKeyType() {
        return "type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey";
    }

    @Override // com.google.android.gms.internal.ads.zzeax
    public final zzegd.zza zzbal() {
        return zzegd.zza.ASYMMETRIC_PRIVATE;
    }

    @Override // com.google.android.gms.internal.ads.zzeax
    public final zzeba<zzefj, zzefn> zzbao() {
        return new zzedb(this, zzefj.class);
    }

    @Override // com.google.android.gms.internal.ads.zzeax
    public final /* synthetic */ void zzc(zzemo zzemo) {
        zzefn zzefn = (zzefn) zzemo;
        if (!zzefn.zzbbe().isEmpty()) {
            zzeiv.zzz(zzefn.getVersion(), 0);
            zzedh.zza(zzefn.zzbdb().zzbcu());
            return;
        }
        throw new GeneralSecurityException("invalid ECIES private key");
    }

    @Override // com.google.android.gms.internal.ads.zzeax
    public final /* synthetic */ zzemo zzp(zzejr zzejr) {
        return zzefn.zzr(zzejr, zzeko.zzbhw());
    }
}
