package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import com.vungle.warren.error.VungleException;

@TargetApi(VungleException.SERVER_ERROR)
public final class zzbfi extends zzbff {
    public zzbfi(zzbeb zzbeb, zztu zztu, boolean z) {
        super(zzbeb, zztu, z);
    }

    @Override // android.webkit.WebViewClient
    public final WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
        if (webResourceRequest == null || webResourceRequest.getUrl() == null) {
            return null;
        }
        return zza(webView, webResourceRequest.getUrl().toString(), webResourceRequest.getRequestHeaders());
    }
}
