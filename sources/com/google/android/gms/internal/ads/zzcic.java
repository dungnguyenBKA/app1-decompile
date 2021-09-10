package com.google.android.gms.internal.ads;

/* access modifiers changed from: package-private */
public final class zzcic implements zzaqt {
    private final /* synthetic */ zzchs zzgkd;

    zzcic(zzchs zzchs) {
        this.zzgkd = zzchs;
    }

    @Override // com.google.android.gms.internal.ads.zzaqt
    public final void zzc(int i, int i2, int i3, int i4) {
        this.zzgkd.zzfwu.onAdOpened();
    }

    @Override // com.google.android.gms.internal.ads.zzaqt
    public final void zzvq() {
        this.zzgkd.zzfwu.onAdClosed();
    }

    @Override // com.google.android.gms.internal.ads.zzaqt
    public final void zzvr() {
        this.zzgkd.zzgka.zzakf();
    }
}
