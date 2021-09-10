package com.google.android.gms.internal.ads;

import java.util.Objects;

/* access modifiers changed from: package-private */
public final class zzdtf extends zzdtb {
    private String zzhso;
    private Boolean zzhsp;
    private Boolean zzhsq;

    zzdtf() {
    }

    @Override // com.google.android.gms.internal.ads.zzdtb
    public final zzdtc zzaxo() {
        String str = "";
        if (this.zzhso == null) {
            str = str.concat(" clientVersion");
        }
        if (this.zzhsp == null) {
            str = String.valueOf(str).concat(" shouldGetAdvertisingId");
        }
        if (this.zzhsq == null) {
            str = String.valueOf(str).concat(" isGooglePlayServicesAvailable");
        }
        if (str.isEmpty()) {
            return new zzdtd(this.zzhso, this.zzhsp.booleanValue(), this.zzhsq.booleanValue());
        }
        throw new IllegalStateException(str.length() != 0 ? "Missing required properties:".concat(str) : new String("Missing required properties:"));
    }

    @Override // com.google.android.gms.internal.ads.zzdtb
    public final zzdtb zzbo(boolean z) {
        this.zzhsp = Boolean.valueOf(z);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzdtb
    public final zzdtb zzbp(boolean z) {
        this.zzhsq = Boolean.TRUE;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzdtb
    public final zzdtb zzhe(String str) {
        Objects.requireNonNull(str, "Null clientVersion");
        this.zzhso = str;
        return this;
    }
}
