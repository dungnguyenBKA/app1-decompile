package com.google.android.gms.internal.ads;

import android.webkit.ValueCallback;

/* access modifiers changed from: package-private */
public final class zzrq implements ValueCallback<String> {
    private final /* synthetic */ zzrr zzbtu;

    zzrq(zzrr zzrr) {
        this.zzbtu = zzrr;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // android.webkit.ValueCallback
    public final /* synthetic */ void onReceiveValue(String str) {
        zzrr zzrr = this.zzbtu;
        zzrr.zzbth.zza(zzrr.zzbtw, zzrr.zzbtx, str, zzrr.zzbty);
    }
}
