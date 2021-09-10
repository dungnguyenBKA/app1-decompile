package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.os.Build;
import android.util.Base64;
import androidx.annotation.Nullable;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import com.vungle.warren.error.VungleException;
import java.util.Arrays;
import java.util.LinkedList;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import org.apache.http.HttpStatus;
import org.json.JSONException;
import org.json.JSONObject;

public final class OS {
    public static byte[] A0K;
    public static String[] A0L;
    public static final AtomicInteger A0M = new AtomicInteger();
    public long A00 = -1;
    @Nullable
    public OQ A01;
    @Nullable
    public OR A02;
    @Nullable
    public QE A03;
    public boolean A04 = false;
    public boolean A05 = true;
    public final AnonymousClass16 A06;
    public final AnonymousClass7D A07;
    public final XJ A08;
    public final JC A09;
    public final JJ A0A;
    public final C0625La A0B = new C0625La();
    public final OH A0C;
    public final C0933Xb A0D;
    public final C0705Od A0E;
    public final C0706Oe A0F;
    public final AbstractC0708Og A0G;
    public final String A0H;
    public final LinkedList<OP> A0I = new LinkedList<>();
    public final AtomicReference<String> A0J = new AtomicReference<>();

    public static String A0B(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0K, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 2);
        }
        return new String(copyOfRange);
    }

    public static void A0E() {
        A0K = new byte[]{37, 63, 39, 59, 39, 56, 13, 34, 40, 62, 35, 37, 40, 5, 34, 56, 41, 62, 42, 45, 47, 41, 5, 0, 54, 1, 20, 11, 22, 16, 13, 10, 3, 34, 13, 10, 13, 23, 12, 1, 0, 76, 67, 65, 23, 67, 77, 95, 96, 101, 83, 100, 113, 110, 115, 117, 104, 111, 102, 82, 117, 96, 115, 117, 100, 101, 41, 38, 36, 114, 38, 40, 58, 34, 55, 55, 34, 32, 43, 38, 39, 20, 21, 13, 54, 46, 11, 29, 26, 26, 13, 6, 28, 63, 62, 38, 29, 5, 88, 89, 118, 84, 67, 94, 65, 94, 67, 78, 103, 86, 66, 68, 82, 83, 31, 16, 18, 68, 16, 30, 12, 57, 56, 23, 53, 34, 63, 32, 63, 34, 47, 4, 51, 37, 35, 59, 51, 50, 126, 113, 115, 37, 113, Byte.MAX_VALUE, 109, 100, 114, 99, 86, 98, 99, Byte.MAX_VALUE, 92, 114, 110, 63, 48, 50, 100, 48, 59, 48, 50, 100, 48, 62, 44, 56, 46, 63, 9, 42, 56, 46, 125, Byte.MAX_VALUE, 10, 56, 56, 46, 63, 56, 99, 108, 110, 56, 108, 103, 108, 110, 56, 108, 98, 72, 83, 72, 93, 80, 107, 106, 114, 73, 81, 89, 94, 64, 81, 78, 67, 66, 72, 98, 81, 66, 73, 83, 15, 0, 2, 84, 0, 11, 7, 0, 2, 84, 0, 11, 7, 0, 2, 84, 0, 14, 28, 97, 126, 114, 96, 69, 114, 118, 115, 110, 67, 120, 68, Byte.MAX_VALUE, 120, 96, 63, 48, 50, 100, 48, 62, 44};
    }

    public static void A0F() {
        A0L = new String[]{"FzSVXB4mYbOB8Ap0RZsCDdXVsmLfm8Jd", "1LkH26oE6mA26lQtC6YvQW7uIFVycFeK", "rW0HdwO1ZwlnSaQ2Af", "GQ1qj5ap6z56eCi2le", "uXieXG3T7mAXvJ2", "QucdoxB0vpGTNezXYptNtkyhh8Rjdnlc", "00yn0QSHmKstnvXW3I3NQQkY4p", "j2c94AiQV22NdXj9VV604tyulZ5jlQdF"};
    }

    static {
        A0F();
        A0E();
    }

    public OS(XJ xj, AnonymousClass16 r12, JC jc, int i) {
        this.A08 = xj;
        this.A09 = jc;
        this.A06 = r12;
        this.A0D = new C0933Xb(this, xj);
        this.A07 = new AnonymousClass7D(this.A08);
        this.A0A = new JJ(r12.A0T(), jc);
        this.A0C = new OH(r12.A0Y(), r12.A0N().A0E().A08(), i);
        this.A0H = UUID.randomUUID().toString();
        this.A0F = C0707Of.A00(this.A08, r12.A0c(), this.A07, this.A0A, this.A0C, A0J());
        this.A0E = new C0705Od(this.A08, this, jc, this.A0C, this.A0H, r12.A0T());
        this.A0G = new C0934Xc(this);
    }

    private void A0D() {
        A0H(new OP(A0B(145, 22, 21), new String[]{this.A0H, A0B(1, 5, 11)}));
        A0H(new OP(A0B(167, 26, 73), new String[]{Base64.encodeToString(this.A0F.A04.toString().getBytes(), 0).replace(A0B(0, 1, 45), A0B(0, 0, FacebookMediationAdapter.ERROR_CREATE_NATIVE_AD_FROM_BID_PAYLOAD)), this.A0H}));
    }

    /* access modifiers changed from: private */
    @TargetApi(VungleException.SERVER_ERROR)
    public synchronized void A0G() {
        if (this.A04) {
            while (!this.A0I.isEmpty()) {
                OP poll = this.A0I.poll();
                if (poll != null) {
                    this.A0D.A05(String.format(Locale.US, poll.A00, poll.A02));
                    if (poll.A01) {
                        this.A0A.A03(JI.A0L, null);
                        this.A08.A0A().A4u(poll.A00);
                    }
                }
            }
        }
        String[] strArr = A0L;
        if (strArr[0].charAt(13) != strArr[7].charAt(13)) {
            String[] strArr2 = A0L;
            strArr2[2] = "zGpus9wW0BJIjoljGX";
            strArr2[3] = "A1e8XSvn3Bv6Tp7Ifd";
            return;
        }
        throw new RuntimeException();
    }

    private synchronized void A0H(OP op) {
        this.A0I.offer(op);
        A0G();
    }

    private boolean A0J() {
        return !A0K();
    }

    private boolean A0K() {
        return J4.A1t(this.A08, C0751Py.A04());
    }

    public final JJ A0M() {
        return this.A0A;
    }

    public final C0625La A0N() {
        return this.A0B;
    }

    public final C0933Xb A0O() {
        return this.A0D;
    }

    @Nullable
    public final String A0P() {
        return this.A0J.get();
    }

    public final void A0Q() {
        A0H(new OP(A0B(22, 26, 102), new String[]{this.A0H}));
    }

    public final void A0R() {
        A0H(new OP(A0B(48, 25, 3), new String[]{this.A0H}));
    }

    public final void A0S() {
        this.A05 = true;
    }

    public final void A0T() {
        this.A05 = false;
    }

    public final void A0U() {
        A0H(new OP(A0B(98, 23, 53), new String[]{this.A0H}));
    }

    public final void A0V() {
        A0H(new OP(A0B(235, 22, 21), new String[]{this.A0H}));
    }

    @SuppressLint({"AddJavascriptInterface"})
    public final void A0W() {
        if (Build.VERSION.SDK_INT > 16) {
            this.A0D.addJavascriptInterface(this.A0E, A0B(6, 16, 78));
        }
        this.A0A.A03(JI.A0O, null);
        String str = this.A0F.A00;
        this.A00 = System.currentTimeMillis();
        this.A0D.loadUrl(str);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(A0B(HttpStatus.SC_NON_AUTHORITATIVE_INFORMATION, 3, 46), str);
            jSONObject.put(A0B(86, 12, FacebookMediationAdapter.ERROR_WRONG_NATIVE_TYPE), OT.A00());
            jSONObject.put(A0B(193, 10, 62), A0M.getAndIncrement());
            jSONObject.put(A0B(73, 13, 65), Y4.getAttachedDynamicAdViews());
        } catch (JSONException unused) {
        }
        this.A08.A0A().A50(jSONObject.toString());
        A0D();
    }

    public final void A0X() {
        A0H(new OP(A0B(121, 24, 84), new String[]{this.A0H}));
    }

    public final void A0Y(OQ oq) {
        this.A01 = oq;
    }

    public final void A0Z(OR or) {
        this.A02 = or;
    }

    public final void A0a(AbstractC0704Oc oc) {
        this.A0E.A0I(oc);
    }

    public final void A0b(@Nullable QE qe) {
        this.A03 = qe;
    }

    public final void A0c(String str, JSONObject jSONObject) {
        A0H(new OP(A0B(HttpStatus.SC_PARTIAL_CONTENT, 29, 37), new String[]{this.A0H, str, jSONObject.toString()}, false));
    }

    public final void A0d(Map<String, String> map) {
        this.A09.A8U(this.A06.A0T(), new C0678Nc(map).A04(this.A03).A06());
    }

    public final boolean A0e() {
        return this.A0E.A0J();
    }

    public final boolean A0f() {
        return this.A05;
    }
}
