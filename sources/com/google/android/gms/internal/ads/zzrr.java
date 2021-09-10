package com.google.android.gms.internal.ads;

import android.webkit.ValueCallback;
import android.webkit.WebView;

/* access modifiers changed from: package-private */
public final class zzrr implements Runnable {
    final /* synthetic */ zzrp zzbth;
    private ValueCallback<String> zzbtv = new zzrq(this);
    final /* synthetic */ zzrj zzbtw;
    final /* synthetic */ WebView zzbtx;
    final /* synthetic */ boolean zzbty;

    zzrr(zzrp zzrp, zzrj zzrj, WebView webView, boolean z) {
        this.zzbth = zzrp;
        this.zzbtw = zzrj;
        this.zzbtx = webView;
        this.zzbty = z;
    }

    public final void run() {
        if (this.zzbtx.getSettings().getJavaScriptEnabled()) {
            try {
                this.zzbtx.evaluateJavascript("(function() { return  {text:document.body.innerText}})();", this.zzbtv);
            } catch (Throwable unused) {
                this.zzbtv.onReceiveValue("");
            }
        }
    }
}
