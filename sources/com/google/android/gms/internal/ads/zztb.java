package com.google.android.gms.internal.ads;

/* access modifiers changed from: package-private */
public final class zztb implements zzrm {
    private final /* synthetic */ zzsz zzbvc;

    zztb(zzsz zzsz) {
        this.zzbvc = zzsz;
    }

    @Override // com.google.android.gms.internal.ads.zzrm
    public final void zzp(boolean z) {
        if (z) {
            this.zzbvc.connect();
        } else {
            this.zzbvc.disconnect();
        }
    }
}
