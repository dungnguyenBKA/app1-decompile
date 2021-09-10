package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import java.util.Map;

@TargetApi(11)
public final class zzbfg extends zzbff {
    public zzbfg(zzbeb zzbeb, zztu zztu, boolean z) {
        super(zzbeb, zztu, z);
    }

    @Override // com.google.android.gms.internal.ads.zzbee, android.webkit.WebViewClient
    public final WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        return zza(webView, str, (Map<String, String>) null);
    }
}
