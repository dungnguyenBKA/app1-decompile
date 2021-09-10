package com.google.android.gms.internal.ads;

import android.net.Uri;

final /* synthetic */ class zzbfc implements zzbfe {
    private final zzbeb zzeuk;

    zzbfc(zzbeb zzbeb) {
        this.zzeuk = zzbeb;
    }

    @Override // com.google.android.gms.internal.ads.zzbfe
    public final void zzj(Uri uri) {
        zzbfn zzacx = this.zzeuk.zzacx();
        if (zzacx == null) {
            zzazk.zzev("Unable to pass GMSG, no AdWebViewClient for AdWebView!");
        } else {
            zzacx.zzj(uri);
        }
    }
}
