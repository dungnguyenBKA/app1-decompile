package com.google.android.gms.internal.ads;

import android.graphics.Bitmap;

final /* synthetic */ class zzawp implements Runnable {
    private final zzawm zzeah;
    private final Bitmap zzeai;

    zzawp(zzawm zzawm, Bitmap bitmap) {
        this.zzeah = zzawm;
        this.zzeai = bitmap;
    }

    public final void run() {
        this.zzeah.zza(this.zzeai);
    }
}
