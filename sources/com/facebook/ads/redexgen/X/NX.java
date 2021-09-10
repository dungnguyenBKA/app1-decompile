package com.facebook.ads.redexgen.X;

import android.graphics.Bitmap;
import android.net.http.SslError;
import android.os.Handler;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.SslErrorHandler;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.facebook.ads.internal.protocol.AdErrorType;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import com.vungle.warren.error.VungleException;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.Date;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONException;
import org.json.JSONObject;

public class NX extends WebViewClient {
    public static byte[] A0A;
    public Date A00;
    public boolean A01 = false;
    public final XJ A02;
    public final WeakReference<C1020aD> A03;
    public final WeakReference<NV> A04;
    public final WeakReference<AtomicBoolean> A05;
    public final WeakReference<C0625La> A06;
    public final WeakReference<QE> A07;
    public final AtomicInteger A08;
    public final AtomicReference<String> A09;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0A, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 74);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A0A = new byte[]{90, 103, 107, 109, 126, 63, 123, 126, 107, 126, 37, 63, 114, 101, 101, 120, 101, 72, 116, 120, 115, 114, 23, 0, 0, 29, 0, 45, 22, 23, 1, 17, 0, 27, 2, 6, 27, 29, 28, 107, 113, 93, 117, 103, 96, 93, 112, 103, 113, 109, 119, 112, 97, 103, 93, 103, 112, 112, 109, 112, 17, 18, 28, 25, 20, 19, 26, 34, 9, 20, 16, 24, 34, 20, 19, 34, 16, 20, 17, 17, 20, 14, 14, 5, 20, 90, 90, 37, 50, 50, 63, 37, 45, 48, 52, 57, 63, 50, 37, 51, 48, 47, 46, 51, 37, 22, 1, 21, 17, 1, 23, 16, 59, 13, 0, 113, 99, 100, 89, 112, 111, 99, 113};
    }

    public NX(XJ xj, WeakReference<NV> weakReference, WeakReference<QE> weakReference2, WeakReference<C0625La> weakReference3, WeakReference<AtomicBoolean> weakReference4, WeakReference<C1020aD> weakReference5, AtomicInteger atomicInteger, AtomicReference<String> atomicReference) {
        this.A02 = xj;
        this.A04 = weakReference;
        this.A07 = weakReference2;
        this.A06 = weakReference3;
        this.A05 = weakReference4;
        this.A03 = weakReference5;
        this.A08 = atomicInteger;
        this.A09 = atomicReference;
    }

    private void A02(int i, CharSequence charSequence, long j) {
        JSONObject jSONObject = new JSONObject();
        boolean z = charSequence != null;
        try {
            jSONObject.put(A00(12, 10, 93), i);
            jSONObject.put(A00(22, 17, 56), charSequence);
            jSONObject.put(A00(39, 21, 72), z);
            jSONObject.put(A00(60, 22, 55), j);
            jSONObject.put(A00(FacebookMediationAdapter.ERROR_REQUIRES_UNIFIED_NATIVE_ADS, 10, 46), this.A09.get());
        } catch (JSONException unused) {
        }
        AbstractC03218d A042 = this.A02.A04();
        int i2 = C03228e.A2J;
        String defaultErrorMessage = AdErrorType.WEB_VIEW_FAILED_TO_LOAD.getDefaultErrorMessage();
        A042.A8V(A00(115, 8, 76), i2, new C03238f(defaultErrorMessage, A00(0, 12, 85) + jSONObject.toString()));
    }

    /* access modifiers changed from: private */
    public void A03(int i, @Nullable String str) {
        if (A00(82, 23, 42).equals(str)) {
            this.A02.A0A().AEd();
            return;
        }
        this.A02.A0A().AEe(i, str);
        A02(i, str, new Date().getTime() - this.A00.getTime());
        if (this.A04.get() != null) {
            this.A04.get().AAB(i, str);
        }
    }

    public final void onPageFinished(WebView webView, String str) {
        boolean z;
        AnonymousClass0R A0A2 = this.A02.A0A();
        if (this.A03.get() != null) {
            z = true;
        } else {
            z = false;
        }
        A0A2.AEf(z);
        if (!(this.A03.get() == null || this.A05.get() == null || this.A05.get().get())) {
            this.A03.get().A06();
        }
        this.A01 = true;
    }

    public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        super.onPageStarted(webView, str, bitmap);
        this.A02.A0A().AEg();
        this.A00 = new Date();
        new Handler().postDelayed(new C1021aE(this), (long) this.A08.get());
    }

    public final void onReceivedError(WebView webView, int i, String str, String str2) {
        this.A01 = true;
        A03(i, str);
    }

    @RequiresApi(api = VungleException.ASSET_DOWNLOAD_RECOVERABLE)
    public final void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        boolean A0p = J4.A0p(this.A02);
        String A002 = A00(0, 0, 49);
        if (A0p) {
            this.A01 = true;
            A03(webResourceError.getErrorCode(), A002 + ((Object) webResourceError.getDescription()));
            return;
        }
        this.A02.A0A().AEh(LE.A01(webResourceError.getErrorCode(), A002 + ((Object) webResourceError.getDescription()), A002 + webResourceRequest.getUrl()));
    }

    public final void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
        this.A02.A0A().AEi();
        sslErrorHandler.cancel();
    }

    @RequiresApi(api = VungleException.DB_ERROR)
    public final boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        NS.A03(C03228e.A2G);
        NV nv = this.A04.get();
        if (nv == null) {
            return true;
        }
        nv.ACA();
        return true;
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        if (this.A04.get() == null) {
            return true;
        }
        this.A04.get().A9j(str, new C0678Nc().A04(this.A07.get()).A03(this.A06.get()).A06());
        return true;
    }
}
