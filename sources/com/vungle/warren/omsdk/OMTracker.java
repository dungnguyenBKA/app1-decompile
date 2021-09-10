package com.vungle.warren.omsdk;

import android.webkit.WebView;
import java.util.concurrent.TimeUnit;

public class OMTracker implements WebViewObserver {
    static final long DESTROY_DELAY_MS = TimeUnit.SECONDS.toMillis(1);
    private l90 adSession;
    private final boolean enabled;
    private boolean started;

    public static class Factory {
        public OMTracker make(boolean z) {
            return new OMTracker(z);
        }
    }

    @Override // com.vungle.warren.omsdk.WebViewObserver
    public void onPageFinished(WebView webView) {
        if (this.started && this.adSession == null) {
            p90 p90 = p90.DEFINED_BY_JAVASCRIPT;
            q90 q90 = q90.DEFINED_BY_JAVASCRIPT;
            r90 r90 = r90.JAVASCRIPT;
            l90 a = l90.a(m90.a(p90, q90, r90, r90, false), n90.a(s90.a(BuildConfig.PARTNER_NAME, "6.9.1"), webView, null, null));
            this.adSession = a;
            a.c(webView);
            this.adSession.d();
        }
    }

    public void start() {
        if (this.enabled && e90.b()) {
            this.started = true;
        }
    }

    public long stop() {
        long j;
        l90 l90;
        if (!this.started || (l90 = this.adSession) == null) {
            j = 0;
        } else {
            l90.b();
            j = DESTROY_DELAY_MS;
        }
        this.started = false;
        this.adSession = null;
        return j;
    }

    private OMTracker(boolean z) {
        this.enabled = z;
    }
}
