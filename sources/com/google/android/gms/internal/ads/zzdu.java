package com.google.android.gms.internal.ads;

import java.io.File;
import java.security.GeneralSecurityException;

/* access modifiers changed from: package-private */
public final class zzdu implements zzduy {
    private final /* synthetic */ zzdsx zzwa;

    zzdu(zzds zzds, zzdsx zzdsx) {
        this.zzwa = zzdsx;
    }

    @Override // com.google.android.gms.internal.ads.zzduy
    public final boolean zzb(File file) {
        try {
            return this.zzwa.zzb(file);
        } catch (GeneralSecurityException unused) {
            return false;
        }
    }
}
