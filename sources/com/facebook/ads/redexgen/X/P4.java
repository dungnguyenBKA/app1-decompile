package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import android.webkit.WebSettings;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import androidx.annotation.Nullable;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

@SuppressLint({"ViewConstructor"})
public final class P4 extends FrameLayout {
    public static byte[] A0C;
    public static String[] A0D;
    public static final float A0E = ((float) ((int) (C0632Lh.A01 * 4.0f)));
    public static final RelativeLayout.LayoutParams A0F = new RelativeLayout.LayoutParams(-1, -1);
    public int A00 = 0;
    public long A01 = -1;
    public Map<String, String> A02;
    public final AnonymousClass16 A03;
    public final AnonymousClass1U A04;
    public final XJ A05;
    public final JC A06;
    public final NV A07 = new AnonymousClass82(this);
    public final C1020aD A08;
    public final P2 A09;
    public final AtomicBoolean A0A = new AtomicBoolean(false);
    public final AtomicBoolean A0B = new AtomicBoolean(false);

    public static String A06(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0C, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            int i5 = copyOfRange[i4] ^ i3;
            if (A0D[5].length() != 25) {
                throw new RuntimeException();
            }
            A0D[4] = "2xsSJQdmJTzWNKbVkLPVv70adF3crTtp";
            copyOfRange[i4] = (byte) (i5 ^ 37);
        }
        return new String(copyOfRange);
    }

    public static void A09() {
        A0C = new byte[]{11, 47, 29, 33, 44, 52, 44, 47, 33, 40, 12, 41, 52, 5, 22, 23, 13, 10, 3, 68, 1, 22, 22, 11, 22, 52, 8, 5, 29, 5, 6, 8, 1, 68, 0, 11, 39, 16, 5, 39, 8, 13, 7, 15, 68, 16, 22, 13, 3, 3, 1, 22, 1, 0, 68, 19, 13, 16, 12, 68, 20, 22, 1, 73, 1, 18, 1, 10, 16, 68, 7, 8, 13, 7, 15, 23, 68, 7, 11, 17, 10, 16, 68, 5, 10, 0, 68, 32, 1, 8, 5, 29, 106, 86, 91, 67, 91, 88, 86, 95, 123, 94, 73, 108, 83, 95, 77, 102, 97, 99, 109, 106, 36, 104, 107, 101, 96, 109, 106, 99, 36, 118, 97, 105, 107, 112, 97, 36, 116, 104, 101, 125, 101, 102, 104, 97, 61, 50, 55, 61, 53, 45, 112, 113, 120, 117, 109, 93, 65, 76, 84, 76, 79, 65, 72, 55, 43, 38, 62, 38, 37, 43, 34, 24, 53, 34, 42, 40, 51, 34, 21, 2, 10, 8, 19, 2, 56, 20, 2, 20, 20, 14, 8, 9, 56, 14, 3, 20, 15, 11, 5, 14, 107, 121, 126, 67, 106, 117, 121, 107};
    }

    public static void A0A() {
        A0D = new String[]{"2LrpfYyae0azpeRldXrTpIs5j5WolZYJ", "aTWFoH17M5HvBaS06GyoTMgY8LK09kB1", "ZT9jJV1ne", "vwbwskwEgIVHj6V8wHV", "a8UIfMhCahgZVDol7QIaAFMNjSR7v8Rm", "pauq9xVSe1TSbn6Nh8iDWIypG", "tig0s2h3zWgeN1kA13N6tuAlrnUP1dby", "gu60Pcp0oAdbO9RcUpkXMIBgrMh0CW0V"};
    }

    static {
        A0A();
        A09();
    }

    public P4(XJ xj, AnonymousClass16 r5, AnonymousClass1U r6, JC jc, P2 p2, Map<String, String> map) {
        super(xj);
        this.A05 = xj;
        this.A03 = r5;
        this.A04 = r6;
        this.A06 = jc;
        this.A09 = p2;
        this.A02 = map;
        this.A08 = A04();
        addView(this.A08, A0F);
    }

    public static /* synthetic */ int A00(P4 p4) {
        int i = p4.A00;
        p4.A00 = i + 1;
        return i;
    }

    @SuppressLint({"AddJavascriptInterface", "ClickableViewAccessibility"})
    private C1020aD A04() {
        C1020aD aDVar = new C1020aD(this.A05, new WeakReference(this.A07), 10);
        aDVar.setCornerRadius(A0E);
        aDVar.setLogMultipleImpressions(false);
        aDVar.setCheckAssetsByJavascriptBridge(false);
        aDVar.setWebViewTimeoutInMillis(this.A04.A09());
        aDVar.setRequestId(this.A03.A0Y());
        aDVar.setOnTouchListener(new P3(this, null));
        WebSettings settings = aDVar.getSettings();
        settings.setLoadWithOverviewMode(true);
        settings.setUseWideViewPort(true);
        settings.setAllowFileAccess(true);
        if (Build.VERSION.SDK_INT >= 16) {
            settings.setAllowFileAccessFromFileURLs(true);
        }
        if (Build.VERSION.SDK_INT > 16) {
            aDVar.addJavascriptInterface(new P5(this.A05, this, this.A06, this.A02, this.A03.A0T()), A06(0, 12, FacebookMediationAdapter.ERROR_FACEBOOK_INITIALIZATION));
        }
        return aDVar;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:12:0x00b4, code lost:
        if (r3 <= ((long) com.facebook.ads.redexgen.X.J4.A0F(r7))) goto L_0x00b6;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:18:0x00ee, code lost:
        if (r3 <= ((long) com.facebook.ads.redexgen.X.J4.A0F(r7))) goto L_0x00b6;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:19:0x00f1, code lost:
        r9.A05.A04().A8V(r5, com.facebook.ads.redexgen.X.C03228e.A1v, r6);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:25:?, code lost:
        return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void A0B() {
        /*
        // Method dump skipped, instructions count: 265
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.P4.A0B():void");
    }

    /* JADX INFO: Multiple debug info for r7v0 'this'  com.facebook.ads.redexgen.X.P4: [D('e' java.lang.Exception), D('debugLogEvent' com.facebook.ads.redexgen.X.8f)] */
    public final void A0C() {
        String A0F2;
        if (this.A04.A0K()) {
            C03238f r5 = new C03238f(A06(FacebookMediationAdapter.ERROR_NULL_CONTEXT, 29, 33));
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put(A06(170, 17, 66), this.A04.A0G());
                jSONObject.put(A06(187, 5, 69), this.A03.A0T());
            } catch (JSONException e) {
                Log.e(A06(92, 15, 31), A06(12, 13, 65), e);
            }
            r5.A05(jSONObject);
            r5.A03(1);
            XJ xj = this.A05;
            if (A0D[4].charAt(0) != 'P') {
                A0D[1] = "TEDpWyR4sKSlO4xRZxixfnQAFgDgpHMF";
                xj.A04().A8W(A06(155, 15, 98), C03228e.A1w, r5);
            } else {
                throw new RuntimeException();
            }
        }
        try {
            C1020aD aDVar = this.A08;
            if (!TextUtils.isEmpty(this.A04.A0C())) {
                A0F2 = this.A04.A0C();
            } else {
                A0F2 = this.A04.A0F();
            }
            aDVar.loadUrl(A0F2);
        } catch (Exception e2) {
            this.A05.A04().A8V(A06(192, 8, 57), C03228e.A2J, new C03238f(e2));
        }
    }

    public final void A0D() {
        this.A08.removeJavascriptInterface(A06(0, 12, FacebookMediationAdapter.ERROR_FACEBOOK_INITIALIZATION));
        this.A08.destroy();
    }

    public C0625La getTouchDataRecorder() {
        return this.A08.getTouchDataRecorder();
    }

    @Nullable
    public QE getViewabilityChecker() {
        return this.A08.getViewabilityChecker();
    }
}
