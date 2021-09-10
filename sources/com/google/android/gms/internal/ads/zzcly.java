package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzr;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzcly implements Runnable {
    private final zzclq zzgmp;
    private final zzbaa zzgna;

    zzcly(zzclq zzclq, zzbaa zzbaa) {
        this.zzgmp = zzclq;
        this.zzgna = zzbaa;
    }

    public final void run() {
        zzbaa zzbaa = this.zzgna;
        String zzxy = zzr.zzkv().zzxs().zzyn().zzxy();
        if (!TextUtils.isEmpty(zzxy)) {
            zzbaa.set(zzxy);
        } else {
            zzbaa.setException(new Exception());
        }
    }
}
