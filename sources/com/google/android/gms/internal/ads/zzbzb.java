package com.google.android.gms.internal.ads;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzbzb implements zzbvn {
    private final zzbeb zzeuk;

    zzbzb(zzbeb zzbeb) {
        this.zzeuk = zzbeb;
    }

    @Override // com.google.android.gms.internal.ads.zzbvn
    public final void zzakf() {
        zzbeb zzbeb = this.zzeuk;
        if (zzbeb.zzact() != null) {
            zzbeb.zzact().close();
        }
    }
}
