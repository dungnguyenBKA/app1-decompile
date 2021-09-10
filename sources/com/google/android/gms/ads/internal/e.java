package com.google.android.gms.ads.internal;

import android.os.RemoteException;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.gms.internal.ads.zzazk;

/* access modifiers changed from: package-private */
public final class e extends WebViewClient {
    private final /* synthetic */ zzl a;

    e(zzl zzl) {
        this.a = zzl;
    }

    public final void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        if (this.a.h != null) {
            try {
                this.a.h.onAdFailedToLoad(0);
            } catch (RemoteException e) {
                zzazk.zze("#007 Could not call remote method.", e);
            }
        }
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        if (str.startsWith(this.a.a0())) {
            return false;
        }
        if (str.startsWith("gmsg://noAdLoaded")) {
            if (this.a.h != null) {
                try {
                    this.a.h.onAdFailedToLoad(3);
                } catch (RemoteException e) {
                    zzazk.zze("#007 Could not call remote method.", e);
                }
            }
            this.a.U(0);
            return true;
        } else if (str.startsWith("gmsg://scriptLoadFailed")) {
            if (this.a.h != null) {
                try {
                    this.a.h.onAdFailedToLoad(0);
                } catch (RemoteException e2) {
                    zzazk.zze("#007 Could not call remote method.", e2);
                }
            }
            this.a.U(0);
            return true;
        } else if (str.startsWith("gmsg://adResized")) {
            if (this.a.h != null) {
                try {
                    this.a.h.onAdLoaded();
                } catch (RemoteException e3) {
                    zzazk.zze("#007 Could not call remote method.", e3);
                }
            }
            this.a.U(this.a.T(str));
            return true;
        } else if (str.startsWith("gmsg://")) {
            return true;
        } else {
            if (this.a.h != null) {
                try {
                    this.a.h.onAdLeftApplication();
                } catch (RemoteException e4) {
                    zzazk.zze("#007 Could not call remote method.", e4);
                }
            }
            zzl.S(this.a, zzl.Q(this.a, str));
            return true;
        }
    }
}
