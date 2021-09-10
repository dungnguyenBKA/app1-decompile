package com.facebook.ads.redexgen.X;

import android.net.Uri;
import android.os.Handler;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.Nullable;
import com.facebook.ads.AdError;
import com.facebook.ads.internal.protocol.AdErrorType;
import com.facebook.ads.internal.protocol.AdPlacementType;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.apache.http.HttpStatus;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.facebook.ads.redexgen.X.Rp  reason: case insensitive filesystem */
public class C0794Rp implements AbstractC01300i, AbstractC01350n {
    public static byte[] A0e;
    public static String[] A0f;
    public static final String A0g = C0794Rp.class.getSimpleName();
    public int A00;
    public int A01;
    public int A02 = -1;
    public int A03;
    public int A04;
    public int A05;
    public int A06 = HttpStatus.SC_OK;
    public int A07;
    public int A08;
    public long A09;
    public Uri A0A;
    public EnumC01290h A0B;
    public AnonymousClass11 A0C;
    public AnonymousClass16 A0D;
    public XJ A0E;
    @Nullable
    public JC A0F;
    public JX A0G;
    public JY A0H;
    public JY A0I;
    public JY A0J;
    public JZ A0K;
    public EnumC0581Jd A0L;
    public String A0M;
    public String A0N;
    @Nullable
    public String A0O;
    public String A0P;
    public String A0Q;
    public String A0R;
    public String A0S;
    public Collection<String> A0T;
    public HashMap<String, String> A0U = new HashMap<>();
    public List<C1143cD> A0V;
    public boolean A0W;
    public boolean A0X;
    public boolean A0Y;
    public boolean A0Z;
    public boolean A0a;
    public boolean A0b;
    public boolean A0c;
    public boolean A0d;

    public static String A01(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0e, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ FacebookMediationAdapter.ERROR_WRONG_NATIVE_TYPE);
        }
        return new String(copyOfRange);
    }

    public static void A05() {
        A0e = new byte[]{124, 89, 126, 85, 82, 84, 94, 88, 78, 95, 122, Byte.MAX_VALUE, 110, 106, 123, 108, 62, Byte.MAX_VALUE, 114, 108, 123, Byte.MAX_VALUE, 122, 103, 62, 114, 113, Byte.MAX_VALUE, 122, 123, 122, 62, 122, Byte.MAX_VALUE, 106, Byte.MAX_VALUE, 106, 94, 79, 66, 78, 69, 72, 78, 11, 101, 78, 95, 92, 68, 89, 64, 11, 103, 68, 74, 79, 78, 79, 43, 4, 1, 11, 3, 72, 0, 9, 24, 24, 13, 6, 13, 12, 72, 7, 6, 72, 4, 7, 11, 3, 27, 11, 26, 13, 13, 6, 72, 9, 12, 96, 79, 74, 64, 72, 3, 79, 76, 68, 68, 70, 71, 16, 39, 39, 58, 39, 117, 48, 45, 48, 54, 32, 33, 60, 59, 50, 117, 52, 54, 33, 60, 58, 59, 113, 80, 31, 121, 86, 83, 83, 22, 45, 34, 33, 47, 38, 99, 55, 44, 99, 51, 34, 49, 48, 38, 99, 32, 34, 49, 44, 54, 48, 38, 47, 99, 39, 34, 55, 34, 109, 85, 80, 107, 87, 92, 91, 93, 87, 81, 71, 107, 93, 87, 91, 90, 93, 88, 99, 95, 84, 83, 85, 95, 89, 79, 99, 80, 85, 82, 87, 99, 73, 78, 80, 3, 6, 61, 22, 16, 3, 12, 17, 14, 3, 22, 11, 13, 12, 73, 76, 94, 77, 90, 92, 65, 91, 77, 90, 119, 70, 73, 69, 77, 3, 12, 61, 14, 13, 5, 13, 61, 22, 27, 18, 7, 28, 17, 26, 7, 50, 48, 61, 61, 14, 37, 62, 14, 48, 50, 37, 56, 62, 63, 79, 77, 94, 72, 79, 66, 88, 62, 60, 47, 57, 52, 51, 57, 18, 16, 3, 30, 4, 2, 20, 29, 6, 10, 11, 17, 4, 12, 11, 0, 23, 58, 19, 12, 0, 18, 4, 7, 12, 9, 12, 17, 28, 58, 6, 13, 0, 6, 14, 58, 12, 11, 17, 0, 23, 19, 4, 9, 7, 11, 10, 16, 5, 13, 10, 1, 22, 59, 18, 13, 1, 19, 5, 6, 13, 8, 13, 16, 29, 59, 1, 10, 5, 6, 8, 1, 0, 35, 52, 122, 123, 106, 123, 125, 106, 119, 113, 112, 65, 109, 106, 108, 119, 112, 121, 109, 18, 25, 22, 21, 27, 18, 40, 4, 25, 22, 7, 4, 31, 24, 3, 40, 27, 24, 16, 39, 44, 35, 32, 46, 39, 29, 52, 43, 39, 53, 29, 46, 45, 37, 34, 41, 36, 53, 62, 55, 51, 34, 35, 24, 36, 55, 42, 65, 69, 70, 67, 120, 68, 72, 74, 74, 70, 73, 67, 68, 73, 77, 72, 64, 69, 66, 73, 102, 108, 96, 97, 25, 29, 17, 23, 21, 66, 69, 93, 74, 71, 66, 79, 74, 95, 66, 68, 69, 116, 73, 78, 67, 74, 93, 66, 68, 89, 3, 6, 1, 4, 48, 11, 10, 28, 12, 29, 6, 31, 27, 6, 0, 1, 75, 90, 73, 72, 82, 85, 92, 73, 88, 76, 74, 92, 102, 77, 75, 88, 87, 74, 85, 88, 77, 80, 86, 87, 73, 85, 88, 64, 102, 77, 75, 88, 87, 74, 85, 88, 77, 80, 86, 87, 2, 0, 29, 31, 29, 6, 23, 22, 45, 6, 0, 19, 28, 1, 30, 19, 6, 27, 29, 28, 111, 120, 108, 104, 120, 110, 105, 66, 116, 121, 54, 43, 36, 53, 54, 45, 42, 49, 4, 25, 22, 7, 4, 31, 24, 3, 40, 20, 24, 26, 7, 5, 18, 4, 4, 40, 6, 2, 22, 27, 30, 3, 14, 112, 109, 98, 115, 112, 107, 108, 119, 92, 111, 108, 100, 92, 103, 102, 111, 98, 122, 92, 112, 102, 96, 108, 109, 103, 5, 25, 21, 31, 23, 26, 41, 21, 25, 24, 2, 19, 14, 2, 39, 36, 59, 58, 39, 59, 38, 49, 48, 11, 32, 38, 53, 58, 39, 56, 53, 32, 61, 59, 58, 34, 37, 48, 35, 14, 35, 48, 37, 56, 63, 54, 45, 43, 60, 42, 55, 42, 50, 59, 73, 84, 73, 81, 88, 122, 124, 106, 107, 80, 125, 106, Byte.MAX_VALUE, 96, 125, 123, 80, 122, 125, 99, 12, 19, 30, 31, 21, 37, 27, 15, 14, 21, 10, 22, 27, 3, 37, 31, 20, 27, 24, 22, 31, 30, 36, 59, 54, 55, 61, 13, 63, 34, 54, 107, 116, 121, 120, 114, 66, 109, 111, 120, 113, 114, 124, 121, 66, 110, 116, 103, 120, 66, Byte.MAX_VALUE, 100, 105, 120, 110, 59, 36, 41, 40, 34, 18, 56, 63, 33, 105, 118, 122, 104, 87, 72, 68, 86, 64, 67, 72, 77, 72, 85, 88, 126, 66, 73, 68, 66, 74, 126, 72, 79, 72, 85, 72, 64, 77, 126, 69, 68, 77, 64, 88, Byte.MAX_VALUE, 96, 108, 126, 104, 107, 96, 101, 96, 125, 112, 86, 106, 97, 108, 106, 98, 86, 96, 103, 125, 108, 123, Byte.MAX_VALUE, 104, 101};
    }

    public static void A06() {
        A0f = new String[]{"OTBhn", "woE0GsYsDC", "jJJsRhZ6eh", "RbmDZKGZyk", "MbYnCV2deeCvNEpfUSPgn7RvJuamywdV", "va4Mi1JJiq4w08mNkhVxy34L1bzftr4W", "QQZqW8pW387BdDH3gcXSwYVoWAeaIxNz", "E72k8"};
    }

    static {
        A06();
        A05();
    }

    private Map<String, String> A03(Map<String, String> map) {
        HashMap hashMap = new HashMap();
        String A012 = A01(739, 4, 117);
        if (map.containsKey(A012)) {
            hashMap.put(A012, map.get(A012));
        }
        String A013 = A01(543, 8, 47);
        if (map.containsKey(A013)) {
            hashMap.put(A013, map.get(A013));
        }
        return hashMap;
    }

    private void A04() {
        if (!this.A0b) {
            JC jc = this.A0F;
            if (A0f[2].length() != 10) {
                throw new RuntimeException();
            }
            A0f[5] = "8ArINtb0xmmgo9NmELWQk3NiIhKYvaDc";
            if (jc != null) {
                jc.ACS(this.A0Q);
            }
            this.A0b = true;
        }
    }

    private void A07(XJ xj, JSONObject jSONObject, JC jc, String str, int i, int i2) {
        this.A0a = true;
        this.A0E = xj;
        this.A0F = jc;
        this.A02 = i;
        this.A01 = i2;
        A09(jSONObject, str);
    }

    private void A08(Map<String, String> map, Map<String, String> map2) {
        try {
            new Handler().postDelayed(new C0793Ro(this, map2, A03(map)), (long) (this.A05 * AdError.NETWORK_ERROR_CODE));
        } catch (Exception unused) {
        }
    }

    private void A09(JSONObject jSONObject, String str) {
        Uri parse;
        EnumC0581Jd jd;
        if (this.A0X) {
            throw new IllegalStateException(A01(9, 27, 116));
        } else if (jSONObject != null) {
            L1.A02(this.A0E, A01(36, 23, 65));
            this.A0N = str;
            this.A0P = jSONObject.optString(A01(533, 10, 119));
            this.A00 = jSONObject.optInt(A01(224, 12, 8), 0);
            this.A0O = jSONObject.optString(A01(394, 13, 45));
            String A022 = LG.A02(jSONObject, A01(HttpStatus.SC_PROXY_AUTHENTICATION_REQUIRED, 12, 77));
            if (TextUtils.isEmpty(A022)) {
                parse = null;
            } else {
                parse = Uri.parse(A022);
            }
            this.A0A = parse;
            String[] strArr = new String[12];
            strArr[0] = A01(209, 15, 66);
            strArr[1] = A01(655, 5, 87);
            strArr[2] = A01(647, 8, 52);
            strArr[3] = A01(HttpStatus.SC_INSUFFICIENT_SPACE_ON_RESOURCE, 8, 70);
            strArr[4] = A01(236, 4, 20);
            strArr[5] = A01(601, 14, 28);
            String[] strArr2 = A0f;
            if (strArr2[1].length() == strArr2[3].length()) {
                String[] strArr3 = A0f;
                strArr3[0] = "EgjH3";
                strArr3[7] = "aXmwT";
                strArr[6] = A01(457, 16, 5);
                strArr[7] = A01(615, 21, 62);
                strArr[8] = A01(195, 14, 8);
                strArr[9] = A01(513, 20, 24);
                strArr[10] = A01(497, 16, 83);
                strArr[11] = A01(480, 17, 83);
                for (String str2 : strArr) {
                    this.A0U.put(str2, LG.A02(jSONObject, str2));
                    if (A0f[4].charAt(15) == 'f') {
                        A0f[5] = "eWhcqXkmKwACVp6tQL5WW3qntxITuvc7";
                    }
                }
                String A012 = A01(240, 14, 59);
                String A023 = LG.A02(jSONObject, A012);
                if (!TextUtils.isEmpty(A023)) {
                    HashMap<String, String> hashMap = this.A0U;
                    if (A0f[6].charAt(13) != 'D') {
                        A0f[6] = "fJLCRXTMzJxf7DhTFL7Dp6MTDwlQmm1t";
                        hashMap.put(A012, A023);
                    } else {
                        A0f[2] = "EZfL37EHMq";
                        hashMap.put(A012, A023);
                    }
                }
                this.A0D = S3.A02(jSONObject, this.A0E);
                this.A0I = JY.A00(jSONObject.optJSONObject(A01(427, 4, 101)));
                this.A0J = JY.A00(jSONObject.optJSONObject(A01(431, 5, 26)));
                this.A0K = JZ.A00(jSONObject.optJSONObject(A01(636, 11, 59)));
                this.A0Q = LG.A02(jSONObject, A01(660, 15, 101));
                this.A0c = jSONObject.optBoolean(A01(379, 15, 40));
                this.A0d = jSONObject.optBoolean(A01(360, 19, 29));
                this.A05 = jSONObject.optInt(A01(576, 25, FacebookMediationAdapter.ERROR_REQUIRES_UNIFIED_NATIVE_ADS), 4);
                this.A04 = jSONObject.optInt(A01(551, 25, 29), 0);
                this.A07 = jSONObject.optInt(A01(743, 31, 75), 0);
                this.A08 = jSONObject.optInt(A01(774, 26, 99), AdError.NETWORK_ERROR_CODE);
                JSONObject optJSONObject = jSONObject.optJSONObject(A01(161, 15, 94));
                if (optJSONObject != null) {
                    this.A0H = JY.A00(optJSONObject);
                }
                this.A0M = LG.A02(jSONObject, A01(176, 19, 86));
                this.A0B = EnumC01290h.A00(jSONObject.optString(A01(436, 21, 65)));
                JSONArray jSONArray = null;
                try {
                    jSONArray = new JSONArray(jSONObject.optString(A01(343, 17, 116)));
                } catch (JSONException e) {
                    e.printStackTrace();
                }
                this.A0T = C01310j.A01(jSONArray);
                this.A0S = LG.A02(jSONObject, A01(730, 9, 39));
                this.A09 = jSONObject.optLong(A01(706, 24, 119), -1);
                this.A0R = LG.A02(jSONObject, A01(697, 9, 56));
                String A013 = A01(675, 22, 16);
                if (!jSONObject.has(A013)) {
                    this.A0L = EnumC0581Jd.A03;
                } else {
                    if (jSONObject.optBoolean(A013)) {
                        jd = EnumC0581Jd.A05;
                    } else {
                        jd = EnumC0581Jd.A04;
                    }
                    this.A0L = jd;
                }
                this.A0W = jSONObject.optBoolean(A01(312, 29, 14));
                this.A03 = jSONObject.optInt(A01(276, 36, 15), 100);
                try {
                    JSONArray optJSONArray = jSONObject.optJSONArray(A01(268, 8, 27));
                    if (optJSONArray != null && optJSONArray.length() > 0) {
                        int length = optJSONArray.length();
                        ArrayList arrayList = new ArrayList(length);
                        for (int i = 0; i < length; i++) {
                            C0794Rp rp = new C0794Rp();
                            rp.A07(this.A0E, optJSONArray.getJSONObject(i), this.A0F, this.A0N, i, length);
                            arrayList.add(new C1143cD(this.A0E, rp, (C03418x) null, this.A0G));
                        }
                        this.A0V = arrayList;
                    }
                } catch (JSONException e2) {
                    this.A0E.A04().A8V(A01(473, 7, 81), C03228e.A1s, new C03238f(e2));
                    Log.e(A0g, A01(131, 30, 41), e2);
                }
                this.A0X = true;
                this.A0Y = A0A();
                return;
            }
            throw new RuntimeException();
        }
    }

    private boolean A0A() {
        if (((!this.A0a && !TextUtils.isEmpty(this.A0U.get(A01(209, 15, 66)))) || (!TextUtils.isEmpty(this.A0U.get(A01(655, 5, 87))) && this.A0a)) && (this.A0I != null || this.A0a)) {
            JY jy = this.A0J;
            if (A0f[2].length() != 10) {
                throw new RuntimeException();
            }
            A0f[6] = "coz4LHwVNN2LSDndRSBnj9WvwXuRM5HO";
            if (jy != null || A6x() == AdPlacementType.NATIVE_BANNER) {
                return true;
            }
        }
        return false;
    }

    public final int A0B() {
        return this.A00;
    }

    public final int A0C() {
        return this.A01;
    }

    public final int A0D() {
        return this.A02;
    }

    public final int A0E() {
        return this.A03;
    }

    public final int A0F() {
        int i = this.A04;
        if (i < 0 || i > 100) {
            return 0;
        }
        return i;
    }

    public final int A0G() {
        return this.A06;
    }

    public final int A0H() {
        return this.A07;
    }

    public final int A0I() {
        return this.A08;
    }

    public final AnonymousClass16 A0J() {
        return this.A0D;
    }

    public final JY A0K() {
        if (!A0i()) {
            return null;
        }
        return this.A0H;
    }

    public final JY A0L() {
        if (!A0i()) {
            return null;
        }
        return this.A0J;
    }

    public final JY A0M() {
        if (!A0i()) {
            return null;
        }
        return this.A0I;
    }

    public final JZ A0N() {
        if (!A0i()) {
            return null;
        }
        A04();
        return this.A0K;
    }

    public final EnumC0581Jd A0O() {
        if (!A0i()) {
            return EnumC0581Jd.A03;
        }
        return this.A0L;
    }

    public final Long A0P() {
        if (!A0i()) {
            return -1L;
        }
        return Long.valueOf(this.A09);
    }

    public final String A0Q() {
        if (!A0i()) {
            return null;
        }
        A04();
        return LS.A01(this.A0U.get(A01(236, 4, 20)));
    }

    public final String A0R() {
        if (!A0i()) {
            return null;
        }
        return this.A0M;
    }

    public final String A0S() {
        if (A0i()) {
            return A01(0, 9, 87);
        }
        if (A0f[6].charAt(13) != 'D') {
            throw new RuntimeException();
        }
        A0f[4] = "6LnlrboEXfVkWbJfSSNj7sObvXF9GrkL";
        return null;
    }

    public final String A0T() {
        return this.A0P;
    }

    public final String A0U() {
        if (!A0i()) {
            return null;
        }
        return this.A0R;
    }

    public final String A0V() {
        if (!A0i()) {
            return null;
        }
        return this.A0S;
    }

    @Nullable
    public final String A0W(String str) {
        if (!A0i()) {
            return null;
        }
        A04();
        return this.A0U.get(str);
    }

    public final List<C1143cD> A0X() {
        if (!A0i()) {
            return null;
        }
        return this.A0V;
    }

    public final void A0Y() {
        Iterator<C1143cD> it;
        List<C1143cD> list = this.A0V;
        if (list != null) {
            boolean isEmpty = list.isEmpty();
            if (A0f[6].charAt(13) != 'D') {
                throw new RuntimeException();
            }
            A0f[6] = "kj4WnsmCok25qDrlf1kxSYggARLvW33C";
            if (!isEmpty) {
                List<C1143cD> list2 = this.A0V;
                if (A0f[2].length() != 10) {
                    it = list2.iterator();
                } else {
                    A0f[2] = "wGXHpE1nya";
                    it = list2.iterator();
                }
                while (true) {
                    boolean hasNext = it.hasNext();
                    if (A0f[2].length() != 10) {
                        A0f[6] = "0lb5BUzW8n1EJDWyWAqaA7d0lZJNpkzV";
                        if (!hasNext) {
                            return;
                        }
                    } else {
                        A0f[5] = "QJQdkpg5cmGOeaue26HVF3aLtsB2qwfM";
                        if (!hasNext) {
                            return;
                        }
                    }
                    it.next().unregisterView();
                }
            }
        }
    }

    public final void A0Z(AnonymousClass11 r1) {
        this.A0C = r1;
    }

    public final void A0a(XJ xj, AnonymousClass11 r6, JC jc, C01611n r8, JX jx) {
        int i;
        this.A0E = xj;
        this.A0C = r6;
        this.A0F = jc;
        this.A0G = jx;
        JSONObject A032 = r8.A03();
        C03418x A012 = r8.A01();
        if (A012 != null) {
            i = A012.A06();
        } else {
            i = HttpStatus.SC_OK;
        }
        this.A06 = i;
        A09(A032, LG.A02(A032, A01(341, 2, 42)));
        if (C01310j.A04(xj, this, jc)) {
            xj.A0A().A42();
            r6.AAx(this, new C0588Jl(AdErrorType.NO_FILL, A01(124, 7, 85)));
        } else if (r6 != null) {
            r6.AAu(this);
        }
    }

    public final void A0b(Map<String, String> urlParams) {
        if (A0i()) {
            if (!J4.A1E(this.A0E) || !C0633Li.A04(urlParams)) {
                HashMap hashMap = new HashMap();
                if (urlParams != null) {
                    hashMap.putAll(urlParams);
                }
                L1.A02(this.A0E, A01(90, 12, 73));
                AnonymousClass11 r0 = this.A0C;
                if (r0 != null) {
                    r0.AAt(this);
                }
                if (this.A0a) {
                    hashMap.put(A01(261, 7, 55), String.valueOf(this.A02));
                    hashMap.put(A01(254, 7, 70), String.valueOf(this.A01));
                }
                AbstractC01270f adAction = C01280g.A00(this.A0E, this.A0F, this.A0N, this.A0A, hashMap);
                if (adAction != null) {
                    try {
                        adAction.A0D();
                    } catch (Exception e) {
                        Log.e(A0g, A01(102, 22, 63), e);
                    }
                }
            } else {
                String str = A0g;
                if (A0f[4].charAt(15) != 'f') {
                    throw new RuntimeException();
                }
                A0f[6] = "D3JUlaax70Z19DqZX7Vx94n8SobUQcIP";
                Log.e(str, A01(59, 31, 2));
            }
        }
    }

    public final void A0c(Map<String, String> map) {
        JC jc = this.A0F;
        if (jc != null) {
            jc.A8R(this.A0N, map);
        }
    }

    public final void A0d(Map<String, String> map) {
        if (A0i() && !this.A0Z) {
            AnonymousClass11 r0 = this.A0C;
            if (r0 != null) {
                r0.AAv(this);
            }
            HashMap hashMap = new HashMap();
            if (map != null) {
                hashMap.putAll(map);
            }
            if (this.A0a) {
                hashMap.put(A01(261, 7, 55), String.valueOf(this.A02));
                hashMap.put(A01(254, 7, 70), String.valueOf(this.A01));
            }
            if (!TextUtils.isEmpty(A5x()) && this.A0F != null) {
                if (!this.A0a) {
                    this.A0E.A0A().A2a();
                    AnonymousClass24.A00(this.A0O);
                }
                this.A0F.A8a(A5x(), hashMap);
            }
            if (A0l() || A0m()) {
                A08(map, hashMap);
            }
            this.A0Z = true;
        }
    }

    public final void A0e(Map<String, String> map) {
        JC jc = this.A0F;
        if (jc != null) {
            jc.A8q(this.A0N, map);
        }
    }

    public final void A0f(Map<String, String> map) {
        JC jc = this.A0F;
        if (jc != null) {
            jc.A8r(this.A0N, map);
        }
    }

    public final boolean A0g() {
        return true;
    }

    public final boolean A0h() {
        return A0i() && this.A0A != null;
    }

    public final boolean A0i() {
        return this.A0X && this.A0Y;
    }

    public final boolean A0j() {
        return this.A0W;
    }

    public final boolean A0k() {
        return this.A0a;
    }

    public final boolean A0l() {
        if (J4.A0w(this.A0E) && A0i()) {
            boolean z = this.A0c;
            if (A0f[4].charAt(15) != 'f') {
                throw new RuntimeException();
            }
            A0f[6] = "hsrOxssvGH6abDOIeI9T6FJFSNjQSl4a";
            if (z) {
                return true;
            }
        }
        return false;
    }

    public final boolean A0m() {
        if (J4.A0w(this.A0E) && A0i()) {
            boolean z = this.A0d;
            String[] strArr = A0f;
            if (strArr[0].length() != strArr[7].length()) {
                throw new RuntimeException();
            }
            A0f[2] = "qputmJyOXU";
            if (z) {
                return true;
            }
        }
        return false;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC01300i, com.facebook.ads.redexgen.X.AbstractC01350n
    public final String A5x() {
        return this.A0N;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC01300i
    public final Collection<String> A6F() {
        return this.A0T;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC01300i
    public final EnumC01290h A6e() {
        return this.A0B;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC01350n
    public AdPlacementType A6x() {
        return AdPlacementType.NATIVE;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC01350n
    public final void onDestroy() {
    }
}
