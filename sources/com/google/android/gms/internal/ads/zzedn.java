package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzegd;
import java.security.GeneralSecurityException;

public final class zzedn extends zzeax<zzefv> {
    public zzedn() {
        super(zzefv.class, new zzedq(zzebd.class));
    }

    public static void zza(zzefv zzefv) {
        zzeiv.zzz(zzefv.getVersion(), 0);
        if (zzefv.zzbbe().size() >= 16) {
            zza(zzefv.zzbdo());
            return;
        }
        throw new GeneralSecurityException("key too short");
    }

    @Override // com.google.android.gms.internal.ads.zzeax
    public final String getKeyType() {
        return "type.googleapis.com/google.crypto.tink.HmacKey";
    }

    @Override // com.google.android.gms.internal.ads.zzeax
    public final zzegd.zza zzbal() {
        return zzegd.zza.SYMMETRIC;
    }

    /* Return type fixed from 'com.google.android.gms.internal.ads.zzeba<com.google.android.gms.internal.ads.zzefz, com.google.android.gms.internal.ads.zzefv>' to match base method */
    @Override // com.google.android.gms.internal.ads.zzeax
    public final zzeba<?, zzefv> zzbao() {
        return new zzedp(this, zzefz.class);
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [com.google.android.gms.internal.ads.zzemo] */
    @Override // com.google.android.gms.internal.ads.zzeax
    public final /* synthetic */ void zzc(zzefv zzefv) {
        zza(zzefv);
    }

    /* Return type fixed from 'com.google.android.gms.internal.ads.zzemo' to match base method */
    @Override // com.google.android.gms.internal.ads.zzeax
    public final /* synthetic */ zzefv zzp(zzejr zzejr) {
        return zzefv.zzt(zzejr, zzeko.zzbhw());
    }

    /* access modifiers changed from: private */
    public static void zza(zzega zzega) {
        if (zzega.zzbbj() >= 10) {
            int i = zzeds.zzidt[zzega.zzbdu().ordinal()];
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        throw new GeneralSecurityException("unknown hash type");
                    } else if (zzega.zzbbj() > 64) {
                        throw new GeneralSecurityException("tag size too big");
                    }
                } else if (zzega.zzbbj() > 32) {
                    throw new GeneralSecurityException("tag size too big");
                }
            } else if (zzega.zzbbj() > 20) {
                throw new GeneralSecurityException("tag size too big");
            }
        } else {
            throw new GeneralSecurityException("tag size too small");
        }
    }
}
