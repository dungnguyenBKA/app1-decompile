package com.facebook.ads.redexgen.X;

import android.os.Build;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.facebook.ads.AdError;
import com.facebook.ads.RewardData;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.apache.http.HttpStatus;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.facebook.ads.redexgen.X.16  reason: invalid class name */
public abstract class AnonymousClass16 implements Serializable {
    public static JSONObject A0M = null;
    public static byte[] A0N = null;
    public static String[] A0O = null;
    public static final long serialVersionUID = -5352540727250859603L;
    public int A00;
    public int A01 = HttpStatus.SC_OK;
    public int A02;
    public RewardData A03;
    public AnonymousClass17 A04;
    public AnonymousClass1P A05;
    public AnonymousClass1S A06;
    public AnonymousClass1Z A07;
    public String A08;
    public String A09;
    @Nullable
    public String A0A;
    @Nullable
    public String A0B;
    public String A0C;
    public String A0D = A00(0, 0, 70);
    public String A0E;
    public String A0F;
    public boolean A0G;
    public boolean A0H;
    public boolean A0I;
    public boolean A0J;
    public final int A0K;
    public final List<AnonymousClass19> A0L;

    static {
        A03();
        A02();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0N, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 60);
        }
        return new String(copyOfRange);
    }

    public static void A02() {
        String[] strArr = A0O;
        if (strArr[2].charAt(14) != strArr[1].charAt(14)) {
            A0O[5] = "bfB1pGz3pHLReaUGKuLSmGsyYLYBAtW";
            A0N = new byte[]{40, 45, 22, 42, 33, 38, 32, 42, 44, 58, 22, 37, 32, 39, 34, 22, 60, 59, 37, 118, 121, 72, 123, 120, 112, 120, 72, 99, 110, 103, 114, 83, 81, 83, 88, 85, 111, 81, 67, 67, 85, 68, 67, 91, 89, 74, 87, 77, 75, 93, 84, 39, 43, 41, 106, 34, 37, 39, 33, 38, 43, 43, 47, 106, 37, 32, 55, 106, 45, 42, 48, 33, 54, 55, 48, 45, 48, 45, 37, 40, 106, 39, 40, 45, 39, 47, 33, 32, 0, 23, 37, 50, 45, 30, 41, 40, 37, 36, 30, 47, 32, 55, 40, 38, 32, 53, 40, 46, 47, 30, 36, 47, 32, 35, 45, 36, 37, 14, 25, 6, 53, 2, 25, 53, 15, 4, 11, 8, 6, 15, 14, 97, 118, 105, 90, 109, 124, 103, 119, 108, 97, 90, 96, 107, 100, 103, 105, 96, 97, 86, 75, 92, 83, 95, 91, 81, 109, 65, 86, 89, 109, 94, 83, 75, 87, 64, 109, 90, 70, 95, 94, 109, 71, 64, 94, 34, 41, 36, 53, 62, 55, 51, 34, 35, 24, 36, 55, 42, 93, 87, 91, 90, 10, 13, 23, 6, 17, 16, 23, 10, 23, 10, 2, 15, 40, 37, 42, 32, 55, 39, 37, 52, 33, 94, 83, 75, 93, 71, 70, 76, 67, 86, 75, 84, 71, 85, 74, 87, 81, 87, 68, 76, 81, 110, 121, 109, 105, 121, 111, 104, 67, 117, 120, 50, 37, 55, 33, 50, 36, 37, 36, 31, 54, 41, 36, 37, 47, 60, 33, 60, 36, 45, 113, 118, 104, 25, 31, 9, 51, 2, 9, 27, 51, 0, 13, 21, 3, 25, 24, 51, 15, 3, 2, 24, 30, 3, 0, 0, 9, 30, 16, 15, 3, 17, 7, 4, 15, 10, 15, 18, 31, 57, 5, 14, 3, 5, 13, 57, 15, 8, 15, 18, 15, 7, 10, 57, 2, 3, 10, 7, 31, 108, 115, Byte.MAX_VALUE, 109, 123, 120, 115, 118, 115, 110, 99, 69, 121, 114, Byte.MAX_VALUE, 121, 113, 69, 115, 116, 110, Byte.MAX_VALUE, 104, 108, 123, 118};
            return;
        }
        throw new RuntimeException();
    }

    public static void A03() {
        A0O = new String[]{"1gqRR9im7tmNjhPy8NnQpjCX4rd8Ielc", "ZkOx7RNEMabKvQ7fgN15WIbWDw11JZFu", "ifeh8sROmLFDdOYqa0sy0eFfj5RHH1gU", "fnDzwAhU6GMUs0cCq2fTQuWEzv5lBJki", "OVtNfYqIZ80xqW4zrHdkYxbTKYgYXHc", "chIpxbYwiAOd1RIHlv8aEwW7ihQHRwI", "GnSiEcQE", "uApEYGhuY9oy1RN675k2bDQ9FUD4oA7y"};
    }

    public abstract int A0J();

    public abstract int A0K();

    public AnonymousClass16(List<AnonymousClass19> list) {
        this.A0L = list;
    }

    public static List<AnonymousClass19> A01(JSONObject jSONObject, XJ xj, AnonymousClass1L r5) {
        JSONArray optJSONArray = jSONObject.optJSONArray(A00(43, 8, 4));
        if (optJSONArray != null && optJSONArray.length() > 0) {
            return AnonymousClass1H.A01(optJSONArray, jSONObject, xj, r5);
        }
        ArrayList arrayList = new ArrayList();
        AnonymousClass19 A002 = AnonymousClass19.A00(jSONObject);
        r5.A3F(A002, jSONObject);
        arrayList.add(A002);
        return arrayList;
    }

    private void A04(int i) {
        this.A00 = i;
    }

    private void A05(int i) {
        this.A02 = i;
    }

    private void A06(AnonymousClass17 r1) {
        this.A04 = r1;
    }

    private void A07(AnonymousClass1P r1) {
        this.A05 = r1;
    }

    private final void A08(AnonymousClass1S r1) {
        this.A06 = r1;
    }

    private void A09(AnonymousClass1Z r1) {
        this.A07 = r1;
    }

    private void A0A(String str) {
        this.A09 = str;
    }

    private void A0B(String str) {
        this.A0E = str;
    }

    private final void A0C(String str) {
        this.A08 = str;
    }

    private void A0D(JSONObject jSONObject) {
        if (!TextUtils.isEmpty(this.A09)) {
            this.A0D = jSONObject.toString();
        }
    }

    private void A0E(boolean z) {
        this.A0J = z;
    }

    public final int A0F() {
        return this.A00;
    }

    public final int A0G() {
        return this.A01;
    }

    public final int A0H() {
        return this.A02;
    }

    public final int A0I() {
        return this.A0K;
    }

    @Nullable
    public final RewardData A0L() {
        return this.A03;
    }

    public final AnonymousClass17 A0M() {
        return this.A04;
    }

    public final AnonymousClass19 A0N() {
        return this.A0L.get(0);
    }

    @Nullable
    public final AnonymousClass19 A0O(int i) {
        if (i < 0 || i >= this.A0L.size()) {
            return null;
        }
        return this.A0L.get(i);
    }

    public final AnonymousClass1P A0P() {
        return this.A05;
    }

    public final AnonymousClass1S A0Q() {
        return this.A06;
    }

    public final AnonymousClass1Z A0R() {
        return this.A07;
    }

    /* JADX WARNING: Removed duplicated region for block: B:27:0x0085  */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x001a  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.lang.String A0S() {
        /*
        // Method dump skipped, instructions count: 150
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.AnonymousClass16.A0S():java.lang.String");
    }

    public final String A0T() {
        return this.A08;
    }

    public final String A0U() {
        return this.A09;
    }

    @Nullable
    public final String A0V() {
        return this.A0A;
    }

    @Nullable
    public final String A0W() {
        return this.A0B;
    }

    public final String A0X() {
        return this.A0C;
    }

    public final String A0Y() {
        return this.A0E;
    }

    public final String A0Z() {
        return this.A0F;
    }

    public final List<AnonymousClass19> A0a() {
        return Collections.unmodifiableList(this.A0L);
    }

    public final JSONObject A0b() {
        return A0M;
    }

    public final JSONObject A0c() {
        try {
            return new JSONObject(this.A0D);
        } catch (JSONException unused) {
            return new JSONObject();
        }
    }

    public final void A0d(int i) {
        this.A01 = i;
    }

    public final void A0e(RewardData rewardData) {
        this.A03 = rewardData;
    }

    public final void A0f(@Nullable String str) {
        this.A0B = str;
    }

    public final void A0g(String str) {
        this.A0C = str;
    }

    public final void A0h(String str) {
        this.A0F = str;
    }

    public final void A0i(JSONObject jSONObject) {
        String str;
        JSONObject jSONObject2;
        A0M = jSONObject.optJSONObject(A00(31, 12, 12));
        AnonymousClass1R A062 = new AnonymousClass1R().A06(jSONObject.optString(A00(257, 5, 116)));
        String A002 = A00(188, 4, 8);
        JSONObject optJSONObject = jSONObject.optJSONObject(A002);
        String A003 = A00(0, 0, 70);
        if (optJSONObject != null) {
            str = jSONObject.optJSONObject(A002).optString(A00(262, 3, 56));
        } else {
            str = A003;
        }
        A08(A062.A05(str).A04(jSONObject.optString(A00(0, 19, 117))).A07(AnonymousClass1T.A03(jSONObject)).A08());
        JSONObject optJSONObject2 = jSONObject.optJSONObject(A00(213, 6, 14));
        JSONObject jSONObject3 = null;
        if (optJSONObject2 != null) {
            String A004 = A00(225, 8, 25);
            if (A0O[5].length() != 31) {
                throw new RuntimeException();
            }
            String[] strArr = A0O;
            strArr[2] = "L9OC0yGJthGch16tOTqUcqcE9MnsMaz6";
            strArr[1] = "n6CgIEssquLp46jPM2UWfBhL1rINMjIc";
            jSONObject2 = optJSONObject2.optJSONObject(A004);
        } else {
            jSONObject2 = null;
        }
        AnonymousClass1I A012 = AnonymousClass1I.A01(jSONObject2);
        if (optJSONObject2 != null) {
            jSONObject3 = optJSONObject2.optJSONObject(A00(HttpStatus.SC_NO_CONTENT, 9, 120));
        }
        A06(new AnonymousClass17(A012, AnonymousClass1I.A01(jSONObject3)));
        A09(AnonymousClass1T.A01(jSONObject));
        A07(AnonymousClass1T.A00(jSONObject));
        A0C(jSONObject.optString(A00(88, 2, 95)));
        A0B(jSONObject.optString(A00(233, 10, 32), A003));
        A0A(jSONObject.optString(A00(149, 26, 14), A003));
        this.A0H = jSONObject.optBoolean(A00(117, 14, 86));
        this.A0I = jSONObject.optBoolean(A00(131, 18, 57));
        this.A0G = jSONObject.optBoolean(A00(90, 27, 125), true);
        A04(jSONObject.optInt(A00(19, 12, 43), 0));
        A0D(jSONObject);
        A05(jSONObject.optInt(A00(290, 31, 90), 0));
        A0d(jSONObject.optInt(A00(321, 26, 38), AdError.NETWORK_ERROR_CODE));
        A0E(jSONObject.optBoolean(A00(265, 25, 80)));
        this.A0A = jSONObject.optString(A00(175, 13, 123));
    }

    public final boolean A0j() {
        return this.A0H;
    }

    public final boolean A0k() {
        return this.A0I;
    }

    public final boolean A0l() {
        return this.A0G;
    }

    public final boolean A0m() {
        if (Build.VERSION.SDK_INT >= 21) {
            String A0U = A0U();
            if (A0O[7].charAt(30) != '7') {
                throw new RuntimeException();
            }
            A0O[4] = "Ho9CziPGzu0GN5git9gLyxI3YsNmgO7";
            if (!TextUtils.isEmpty(A0U)) {
                return true;
            }
        }
        return false;
    }

    public final boolean A0n() {
        return this.A0J;
    }
}
