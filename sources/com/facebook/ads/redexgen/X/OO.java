package com.facebook.ads.redexgen.X;

import android.os.Build;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.vungle.warren.error.VungleException;
import java.util.Arrays;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;

public class OO extends WebViewClient {
    public static byte[] A01;
    public static String[] A02;
    public final /* synthetic */ OS A00;

    static {
        A02();
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 124);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{3, 4, 18, 2, 17, 8, 15, 19, 8, 14, 13, -11, -6, -11, -44, 3, -14, 4, -7, 13, 26, 26, 23, 26, -21, 23, 12, 13, 48, 43, 64, 51, 45, 57, 56, -8, 51, 45, 57, 39, 51, 51, 47, 30, 36, 49, 49, 46, 49, 71, 73, 64, 70, 73, 64, 75, 80, -4, -7, -13};
    }

    public static void A02() {
        A02 = new String[]{"hfMJ0frXuRQdVVGg5HhbkedMp84qvG2m", "353suYezQm1X4xGGmKd", "JSegO1TQToLz4SD5sG2", "wzs2neDsiDlXGMSMfb3", "O6PuLNBrYuNMqKQgURK12L6N", "9iUPqfJGnhoj94eJuJeS1Wm6njk1Rmvr", "BdwoSzPq3MvWa04biSMwYNzp8DFOBLqT", "enVVpEgx3aC4K8YdK2hdvlOQVko"};
    }

    public OO(OS os) {
        this.A00 = os;
    }

    public /* synthetic */ OO(OS os, C0934Xc xc) {
        this(os);
    }

    private void A03(int i, String str, String str2, boolean z) {
        if (z) {
            this.A00.A0T();
        }
        this.A00.A0A.A03(JI.A0Q, null);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(A00(19, 9, 44), i);
            jSONObject.put(A00(0, 11, 35), str);
            jSONObject.put(A00(57, 3, 11), str2);
        } catch (JSONException unused) {
        }
        String jSONObject2 = jSONObject.toString();
        this.A00.A08.A0A().A53(jSONObject2);
        this.A00.A0C.A05(C03228e.A0t, jSONObject2);
    }

    public final void onPageFinished(WebView webView, String str) {
        this.A00.A0A.A03(JI.A0R, null);
        this.A00.A08.A0A().A54(LZ.A01(this.A00.A00));
        this.A00.A0T();
        this.A00.A04 = true;
        this.A00.A0G();
        if (this.A00.A01 != null) {
            this.A00.A01.ACB();
        }
    }

    public final void onReceivedError(WebView webView, int i, String str, String str2) {
        super.onReceivedError(webView, i, str, str2);
        if (Build.VERSION.SDK_INT < 23) {
            A03(i, str, str2, true);
        }
    }

    @RequiresApi(api = VungleException.ASSET_DOWNLOAD_RECOVERABLE)
    public final void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        super.onReceivedError(webView, webResourceRequest, webResourceError);
        int errorCode = webResourceError.getErrorCode();
        StringBuilder sb = new StringBuilder();
        String A002 = A00(0, 0, 48);
        sb.append(A002);
        sb.append((Object) webResourceError.getDescription());
        String sb2 = sb.toString();
        A03(errorCode, sb2, A002 + webResourceRequest.getUrl(), true);
    }

    @RequiresApi(api = VungleException.SERVER_ERROR)
    public final void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
        int i;
        super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
        if (!webResourceRequest.getUrl().toString().toLowerCase(Locale.US).contains(A00(28, 11, 78))) {
            if (webResourceResponse != null) {
                i = webResourceResponse.getStatusCode();
            } else {
                i = -1;
            }
            A03(i, A00(39, 10, 67), A00(0, 0, 48) + webResourceRequest.getUrl(), false);
        }
    }

    @RequiresApi(api = VungleException.DB_ERROR)
    public final boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(A00(11, 8, 21), renderProcessGoneDetail.didCrash());
            jSONObject.put(A00(49, 8, 91), renderProcessGoneDetail.rendererPriorityAtExit());
        } catch (JSONException unused) {
        }
        this.A00.A08.A0A().A4z(jSONObject.toString());
        OT.A03(this.A00.A06.A0Y());
        if (this.A00.A02 == null) {
            return true;
        }
        OR or = this.A00.A02;
        String[] strArr = A02;
        if (strArr[1].length() != strArr[2].length()) {
            throw new RuntimeException();
        }
        A02[0] = "kv0KfCNN1XAdbICEJBZwu3dTiw7XNBbg";
        or.ABG();
        return true;
    }

    @Override // android.webkit.WebViewClient
    @Nullable
    @RequiresApi(api = VungleException.SERVER_ERROR)
    public final WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
        return C0709Oh.A00(this.A00.A08, this.A00.A07, webResourceRequest, this.A00.A0F, this.A00.A0G, this.A00.A06.A0j());
    }
}
