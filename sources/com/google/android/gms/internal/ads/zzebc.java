package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

public final class zzebc {
    private final zzegl zzibn;

    private zzebc(zzegl zzegl) {
        this.zzibn = zzegl;
    }

    static final zzebc zza(zzegl zzegl) {
        if (zzegl != null && zzegl.zzbem() > 0) {
            return new zzebc(zzegl);
        }
        throw new GeneralSecurityException("empty keyset");
    }

    public final String toString() {
        return zzebq.zzb(this.zzibn).toString();
    }

    /* access modifiers changed from: package-private */
    public final zzegl zzbaq() {
        return this.zzibn;
    }
}
