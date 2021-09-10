package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import android.webkit.JavascriptInterface;
import com.facebook.ads.internal.api.BuildConfigApi;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import com.vungle.warren.error.VungleException;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.facebook.ads.redexgen.X.Od  reason: case insensitive filesystem */
public final class C0705Od {
    public static byte[] A08;
    public WeakReference<OS> A00;
    public WeakReference<AbstractC0704Oc> A01 = new WeakReference<>(null);
    public boolean A02;
    public final XJ A03;
    public final OH A04;
    public final String A05;
    public final String A06;
    public final WeakReference<JC> A07;

    static {
        A08();
    }

    public static String A01(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A08, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 116);
        }
        return new String(copyOfRange);
    }

    public static void A08() {
        A08 = new byte[]{-20, -8, -10, -10, -22, -9, -19, 47, 62, 55, 55, 46, 53, 40, 44, 56, 45, 46, 12, 27, 20, 20, 11, 18, 5, 19, 11, 25, 25, 7, 13, 11, 65, 80, 73, 73, 64, 71, 58, 79, 84, 75, 64, -19, -34, -14, -16, -30, -31, -65, -10, -46, -16, -30, -17, 25, 26, 7, 24, 26, 11, 10, -24, 31, -5, 25, 11, 24, -24, -23, -42, -23, -38};
    }

    public C0705Od(XJ xj, OS os, JC jc, OH oh, String str, String str2) {
        this.A03 = xj;
        this.A00 = new WeakReference<>(os);
        this.A07 = new WeakReference<>(jc);
        this.A04 = oh;
        this.A05 = str;
        this.A06 = str2;
        this.A02 = false;
    }

    public static Map<String, String> A03(JSONObject jSONObject) {
        Iterator<String> keys = jSONObject.keys();
        HashMap hashMap = new HashMap();
        while (keys.hasNext()) {
            String next = keys.next();
            hashMap.put(next, jSONObject.optString(next));
        }
        return hashMap;
    }

    private void A04() {
        AbstractC0704Oc oc = this.A01.get();
        if (oc != null) {
            oc.close();
        }
    }

    private void A05() {
        AbstractC0704Oc oc = this.A01.get();
        if (oc != null) {
            oc.A7a();
        }
    }

    private void A06() {
        AbstractC0704Oc oc = this.A01.get();
        if (oc != null) {
            oc.A8E();
        }
    }

    private void A07() {
        this.A03.A0A().A4t();
        this.A02 = true;
        AbstractC0704Oc oc = this.A01.get();
        if (oc != null) {
            oc.AEB();
        }
    }

    /* access modifiers changed from: private */
    public void A09(EnumC0703Ob ob, String str) throws JSONException {
        switch (C0702Oa.A00[ob.ordinal()]) {
            case 1:
                A0F(new JSONObject(str));
                break;
            case 2:
                A06();
                break;
            case 3:
                A04();
                break;
            case 4:
                A07();
                break;
            case 5:
                A0G(new JSONObject(str));
                break;
            case 6:
                A0H(new JSONObject(str));
                break;
            case 7:
                if (BuildConfigApi.isDebug()) {
                }
                break;
            case 8:
                A05();
            case 9:
                this.A03.A0A().A55(str);
                break;
            case 10:
            case 11:
            case VungleException.NO_AUTO_CACHED_PLACEMENT /*{ENCODED_INT: 12}*/:
            case 13:
            case VungleException.SERVER_RETRY_ERROR /*{ENCODED_INT: 14}*/:
                A0A(ob, str);
                break;
        }
        OS os = this.A00.get();
        if (os != null) {
            switch (C0702Oa.A00[ob.ordinal()]) {
                case VungleException.NO_SPACE_TO_INIT /*{ENCODED_INT: 16}*/:
                    os.A0T();
                    return;
                case 17:
                    os.A0S();
                    return;
                case VungleException.NO_SPACE_TO_LOAD_AD_AUTO_CACHED /*{ENCODED_INT: 18}*/:
                    os.A0d(A03(new JSONObject(str)));
                    return;
                default:
                    return;
            }
        }
    }

    private void A0A(EnumC0703Ob ob, String str) throws JSONException {
        AbstractC0704Oc oc = this.A01.get();
        if (oc != null) {
            switch (C0702Oa.A00[ob.ordinal()]) {
                case 10:
                    oc.AAG();
                    return;
                case 11:
                    oc.ABc();
                    return;
                case VungleException.NO_AUTO_CACHED_PLACEMENT /*{ENCODED_INT: 12}*/:
                    A0D(oc, str);
                    return;
                case 13:
                    A0C(oc, str);
                    return;
                case VungleException.SERVER_RETRY_ERROR /*{ENCODED_INT: 14}*/:
                    A0B(oc, str);
                    return;
                default:
                    return;
            }
        }
    }

    private void A0B(AbstractC0704Oc oc, String str) throws JSONException {
        oc.AAs(new JSONObject(str).optBoolean(A01(68, 5, 1), false));
    }

    private void A0C(AbstractC0704Oc oc, String str) throws JSONException {
        oc.AC4(new JSONObject(str).optBoolean(A01(43, 12, 9), false));
    }

    private void A0D(AbstractC0704Oc oc, String str) throws JSONException {
        oc.AC6(new JSONObject(str).optBoolean(A01(55, 13, 50), false));
    }

    private void A0F(JSONObject jSONObject) {
        AbstractC0704Oc oc = this.A01.get();
        if (oc != null) {
            String optString = jSONObject.optString(A01(0, 7, 21));
            if (TextUtils.isEmpty(optString)) {
                oc.A7V();
            } else {
                oc.A7W(optString);
            }
        }
    }

    private void A0G(JSONObject jSONObject) {
        JC jc = this.A07.get();
        if (jc != null) {
            String optString = jSONObject.optString(A01(32, 11, FacebookMediationAdapter.ERROR_REQUIRES_ACTIVITY_CONTEXT));
            if (!TextUtils.isEmpty(optString)) {
                new JJ(this.A06, jc).A04(optString, A03(jSONObject));
            }
        }
    }

    private void A0H(JSONObject jSONObject) {
        int optInt = jSONObject.optInt(A01(7, 11, 85), -1);
        if (optInt != -1) {
            String optString = jSONObject.optString(A01(18, 14, 50));
            if (!TextUtils.isEmpty(optString)) {
                this.A03.A0A().A8T(optInt, optString);
            }
        }
    }

    public final void A0I(AbstractC0704Oc oc) {
        this.A01 = new WeakReference<>(oc);
    }

    public final boolean A0J() {
        return this.A02;
    }

    @JavascriptInterface
    public void postMessage(String str) {
        ExecutorC0627Lc.A00(new OZ(this, str));
    }
}
