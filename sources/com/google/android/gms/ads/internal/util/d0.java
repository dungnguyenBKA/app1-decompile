package com.google.android.gms.ads.internal.util;

import android.content.Context;
import android.webkit.WebSettings;
import java.util.concurrent.Callable;

/* access modifiers changed from: package-private */
public final /* synthetic */ class d0 implements Callable {
    private final Context b;
    private final WebSettings c;

    d0(Context context, WebSettings webSettings) {
        this.b = context;
        this.c = webSettings;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        Context context = this.b;
        WebSettings webSettings = this.c;
        if (context.getCacheDir() != null) {
            webSettings.setAppCachePath(context.getCacheDir().getAbsolutePath());
            webSettings.setAppCacheMaxSize(0);
            webSettings.setAppCacheEnabled(true);
        }
        webSettings.setDatabasePath(context.getDatabasePath("com.google.android.gms.ads.db").getAbsolutePath());
        webSettings.setDatabaseEnabled(true);
        webSettings.setDomStorageEnabled(true);
        webSettings.setDisplayZoomControls(false);
        webSettings.setBuiltInZoomControls(true);
        webSettings.setSupportZoom(true);
        webSettings.setAllowContentAccess(false);
        return Boolean.TRUE;
    }
}
