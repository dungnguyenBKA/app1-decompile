package com.facebook.ads.redexgen.X;

import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.net.http.SslError;
import android.text.TextUtils;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.SslErrorHandler;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.vungle.warren.error.VungleException;
import java.lang.ref.WeakReference;
import java.util.Arrays;

public class NP extends WebViewClient {
    public static byte[] A03;
    @Nullable
    public WeakReference<NN> A00;
    public final WeakReference<XJ> A01;
    public final WeakReference<NM> A02;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 97);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A03 = new byte[]{54, 55, 68, 74, 73, 15, 55, 65, 54, 67, 64, 39, 52, 42, 56, 53, 47, 42, -12, 47, 52, 58, 43, 52, 58, -12, 39, 41, 58, 47, 53, 52, -12, 28, 15, 11, 29, 59, 64, 70, 55, 64, 70, 31, 13, 10, 7, 30, 17, 13, 31};
    }

    public NP(WeakReference<NM> weakReference, WeakReference<XJ> weakReference2) {
        this.A02 = weakReference;
        this.A01 = weakReference2;
    }

    /* JADX INFO: Multiple debug info for r0v28 android.content.pm.ResolveInfo: [D('info' android.content.pm.ResolveInfo), D('intent' android.content.Intent)] */
    private boolean A02(WebView webView, String str) {
        if (this.A01.get() == null) {
            return false;
        }
        if ((C1031aO.A0A) && (TextUtils.isEmpty(str) || A00(0, 11, 116).equals(str))) {
            return true;
        }
        Uri parse = Uri.parse(str);
        String scheme = parse.getScheme();
        try {
            if (!(C1031aO.A0A) || !A00(37, 6, 113).equalsIgnoreCase(scheme)) {
                if (((C1031aO.A0A) && LE.A04(str)) || !C1031aO.A0D.contains(scheme)) {
                    return C0616Kp.A0C(this.A01.get(), new Intent(A00(11, 26, 101), parse));
                }
                return false;
            }
            Intent parseUri = Intent.parseUri(str, 1);
            if (this.A01.get().getPackageManager().resolveActivity(parseUri, 65536) != null && C0616Kp.A0C(this.A01.get(), parseUri)) {
                webView.goBack();
                return true;
            }
            return false;
        } catch (Exception e) {
            this.A01.get().A04().A8W(A00(43, 8, 71), C03228e.A2H, new C03238f(e));
            this.A01.get().A0A().A7m(e.toString());
        }
    }

    public final void A03(WeakReference<NN> weakReference) {
        this.A00 = weakReference;
    }

    public final void onPageFinished(WebView webView, String str) {
        super.onPageFinished(webView, str);
        if (this.A02.get() != null) {
            this.A02.get().AAz(str);
        }
        WeakReference<NN> weakReference = this.A00;
        if (weakReference != null && weakReference.get() != null) {
            this.A00.get().A9Y(webView.canGoBack());
            this.A00.get().AAD(webView.canGoForward());
        }
    }

    public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        super.onPageStarted(webView, str, bitmap);
        if (this.A02.get() != null) {
            this.A02.get().AB1(str);
        }
    }

    public final void onReceivedError(WebView webView, int i, String str, String str2) {
        super.onReceivedError(webView, i, str, str2);
        if (this.A01.get() != null) {
            StringBuilder sb = new StringBuilder();
            String A002 = A00(0, 0, 27);
            sb.append(A002);
            sb.append(str);
            String sb2 = sb.toString();
            this.A01.get().A0A().A7j(LE.A01(i, sb2, A002 + str2));
        }
    }

    @RequiresApi(api = VungleException.ASSET_DOWNLOAD_RECOVERABLE)
    public final void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        super.onReceivedError(webView, webResourceRequest, webResourceError);
        if (this.A01.get() != null) {
            int errorCode = webResourceError.getErrorCode();
            StringBuilder sb = new StringBuilder();
            String A002 = A00(0, 0, 27);
            sb.append(A002);
            sb.append((Object) webResourceError.getDescription());
            String sb2 = sb.toString();
            this.A01.get().A0A().A7j(LE.A01(errorCode, sb2, A002 + webResourceRequest.getUrl()));
        }
    }

    public final void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
        super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
        if (this.A01.get() != null) {
            this.A01.get().A0A().A7k();
        }
    }

    public final void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
        super.onReceivedSslError(webView, sslErrorHandler, sslError);
        if (this.A01.get() != null) {
            this.A01.get().A0A().A7l();
        }
    }

    @RequiresApi(api = VungleException.DB_ERROR)
    public final boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        NS.A03(C03228e.A2I);
        NM nm = this.A02.get();
        if (nm == null) {
            return true;
        }
        nm.ABP();
        return true;
    }

    @Override // android.webkit.WebViewClient
    @RequiresApi(api = VungleException.SERVER_ERROR)
    public final boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
        return A02(webView, webResourceRequest.getUrl().toString());
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        return A02(webView, str);
    }
}
