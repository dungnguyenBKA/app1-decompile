package com.facebook.ads.redexgen.X;

import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.facebook.ads.redexgen.X.0t  reason: invalid class name and case insensitive filesystem */
public final class C01410t {
    public static byte[] A03;
    public static String[] A04;
    public AtomicReference<String> A00 = new AtomicReference<>(A00(0, 2, 25));
    public JSONObject A01 = new JSONObject();
    public final LinkedHashSet<String> A02 = new LinkedHashSet<>();

    static {
        A02();
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 79);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A03 = new byte[]{13, 11, 56, 58, 43, 74, 65, 76, 93, 86, 95, 91, 74, 75, 112, 70, 75, 86, 90, 67, 100, 88, 90, 75, 75, 94, 95, 100, 90, 73, 73, 90, 66, 100, 87, 94, 85, 92, 79, 83, 112, 124, 124, 106, 109, 109, 122, 113, 124, 122, 108, 19, 6, 17, 10, 12, 7, 22, 1, 27, 26, 49, 1, 13, 13, 27, 28, 28, 11, 0, 13, 11, 49, 29, 11, 13, 29, 97, 118, 108, 109, 70, 105, 124, 107, 112, 118, 125};
    }

    public static void A02() {
        A04 = new String[]{"Nqgg", "8wGIqWp", "y92csH8tMmRGnIZZsga62xjDucPy6znH", "NuhdC57WslsG6uEsDnOxbiezpeKaNBmF", "EG4F575TP", "HLT5liagTN6y0JvSt92F6CLrVRU5nCH8", "PjujBbxPTNTRaLXrj7yD38jvaiKi7YAc", "GRbHVCF"};
    }

    public final String A03() {
        String str = this.A00.get();
        return str == null ? A00(0, 2, 25) : str;
    }

    public final JSONObject A04() {
        return this.A01;
    }

    public final synchronized void A05() {
        JSONArray jSONArray = new JSONArray();
        Iterator<String> it = this.A02.iterator();
        while (it.hasNext()) {
            jSONArray.put(it.next());
        }
        this.A00.set(jSONArray.toString());
    }

    public final void A06(String str) throws JSONException {
        if (str != null && !str.trim().isEmpty()) {
            this.A01 = new JSONObject(str);
            Iterator<String> keys = this.A01.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                if (this.A01.get(next) instanceof String) {
                    A0A(new JSONObject((String) this.A01.get(next)));
                }
            }
        }
    }

    public final synchronized void A07(String str) {
        if (this.A02.size() >= AnonymousClass1M.A00()) {
            Iterator<String> it = this.A02.iterator();
            if (it.hasNext()) {
                this.A02.remove(it.next());
            }
        }
        this.A02.add(str);
        C02665q.A03();
    }

    public final synchronized void A08(String str) throws JSONException {
        if (str != null) {
            if (!str.trim().isEmpty()) {
                JSONArray jSONArray = new JSONArray(str);
                int i = 0;
                while (true) {
                    if (i >= jSONArray.length()) {
                        break;
                    } else if (i >= AnonymousClass1M.A00()) {
                        break;
                    } else {
                        this.A02.add(jSONArray.getString(i));
                        i++;
                    }
                }
            }
        }
    }

    public final synchronized void A09(String str) {
        this.A02.remove(str);
        C02665q.A03();
    }

    public final void A0A(JSONObject jSONObject) throws JSONException {
        String optString = jSONObject.optString(A00(5, 12, 96), null);
        int optInt = jSONObject.optInt(A00(51, 6, 44));
        int optInt2 = jSONObject.optInt(A00(77, 11, 86));
        int optInt3 = jSONObject.optInt(A00(17, 23, 116), 50);
        long optLong = jSONObject.optLong(A00(2, 3, 20));
        AnonymousClass1M r4 = new AnonymousClass1M(optString);
        if (optString != null && this.A01.has(optString) && (this.A01.get(optString) instanceof AnonymousClass1M)) {
            r4 = (AnonymousClass1M) this.A01.get(optString);
        }
        String A002 = A00(40, 11, 80);
        if (jSONObject.has(A002)) {
            r4.A07((JSONArray) jSONObject.get(A002));
        }
        String A003 = A00(57, 20, 33);
        if (jSONObject.has(A003)) {
            r4.A05(jSONObject.optInt(A003));
        }
        r4.A06(optInt, optInt2, optLong, optInt3);
        String[] strArr = A04;
        if (strArr[3].charAt(11) != strArr[2].charAt(11)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A04;
        strArr2[3] = "tpg9MOL30KnGen5hdACKzszPCJWxtgkM";
        strArr2[2] = "0kRc9hG2BxRGhE0oYKlFhIYiMAEEJmAF";
        this.A01.put(optString, r4);
    }
}
