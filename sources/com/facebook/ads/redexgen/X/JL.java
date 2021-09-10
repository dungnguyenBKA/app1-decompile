package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import android.view.View;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class JL {
    public static byte[] A00;
    public static final Map<String, String> A01 = new HashMap();
    public static final Map<String, List<String>> A02 = new HashMap();

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 27);
        }
        return new String(copyOfRange);
    }

    public static void A03() {
        A00 = new byte[]{-68, -51, -49, -52, -33, -52, -42, -27, -34, -34, -43, -36, -3, 0, -14, -11, -16, 5, -6, -2, -10, -16, -2, 4, -68, -81, -69, -65, -81, -67, -66, -87, -66, -77, -73, -81, -87, -73, -67, -111, -108, 123, -126, -111, -118, -118, -127, -120, 123, -120, -117, -125, -125, -123, -118, -125};
    }

    static {
        A03();
    }

    @Nullable
    public static String A01(String str) {
        return A01.get(str);
    }

    public static List<String> A02(XJ xj, JSONArray jSONArray) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < jSONArray.length(); i++) {
            try {
                arrayList.add(jSONArray.getString(i));
            } catch (JSONException e) {
                xj.A04().A8V(A00(39, 17, 1), C03228e.A0y, new C03238f(e));
            }
        }
        return arrayList;
    }

    public static void A04(View view, JJ jj, JI ji) {
        view.addOnAttachStateChangeListener(new JK(jj, ji));
    }

    public static void A05(XJ xj, String str, long j) {
        JJ jj = new JJ(str, xj.A06());
        HashMap hashMap = new HashMap();
        hashMap.put(A00(24, 15, 47), LZ.A06(j));
        hashMap.put(A00(12, 12, 118), LZ.A04(j));
        jj.A03(JI.A0D, hashMap);
    }

    public static void A06(XJ xj, JSONObject jSONObject, long j, @Nullable String str) {
        JSONObject optJSONObject = jSONObject.optJSONObject(A00(2, 4, 80));
        if (optJSONObject != null) {
            JSONArray optJSONArray = jSONObject.optJSONArray(A00(6, 6, 85));
            if (TextUtils.isEmpty(str) && optJSONArray != null) {
                A07(xj, optJSONObject, A02(xj, optJSONArray), j, null);
            } else if (!TextUtils.isEmpty(str) && A02.containsKey(str)) {
                A07(xj, optJSONObject, A02.get(str), j, str);
            }
        }
    }

    public static void A07(XJ xj, JSONObject jSONObject, List<String> list, long j, @Nullable String str) {
        String A002 = A00(0, 2, 62);
        if (jSONObject.has(A002)) {
            String optString = jSONObject.optString(A002);
            A08(optString, str);
            A09(optString, list);
            A05(xj, optString, j);
        }
    }

    public static void A08(@Nullable String str, @Nullable String str2) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            A01.put(str, str2);
        }
    }

    public static void A09(String str, List<String> list) {
        if (!TextUtils.isEmpty(str) && !list.isEmpty()) {
            A02.put(str, list);
        }
    }

    public static boolean A0A(String str, JI ji) {
        return A0B(str, ji.A03());
    }

    public static boolean A0B(String str, String str2) {
        if (!A02.containsKey(str) || !A02.get(str).contains(str2)) {
            return false;
        }
        return true;
    }
}
