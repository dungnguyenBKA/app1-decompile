package com.facebook.ads.redexgen.X;

import androidx.annotation.Nullable;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.facebook.ads.redexgen.X.Rs  reason: case insensitive filesystem */
public final class C0797Rs implements AbstractC01300i {
    public static byte[] A08;
    public static String[] A09;
    public final EnumC01290h A00;
    public final String A01;
    public final String A02;
    @Nullable
    public final String A03;
    public final String A04;
    public final String A05;
    public final Collection<String> A06;
    public final Map<String, String> A07;

    static {
        A03();
        A02();
    }

    public static String A01(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A08, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 101);
        }
        return new String(copyOfRange);
    }

    public static void A02() {
        A08 = new byte[]{9, 11, 28, 1, 30, 9, 28, 1, 7, 6, 55, 11, 7, 5, 5, 9, 6, 12, 4, 19, 59, 58, 43, 58, 60, 43, 54, 48, 49, 0, 44, 43, 45, 54, 49, 56, 44, 95, 84, 89, 72, 67, 74, 78, 95, 94, 101, 89, 74, 87, 53, 50, 42, 61, 48, 53, 56, 61, 40, 53, 51, 50, 3, 62, 57, 52, 61, 42, 53, 51, 46, 42, 38, 53, 44, 50, 55, 106, 98, 115, 102, 99, 102, 115, 102, 53, 34, 54, 50, 34, 52, 51, 24, 46, 35};
    }

    public static void A03() {
        A09 = new String[]{"a8CS69kVNecuN9Nm4E1lChlBM", "ag8ss2YsLKCBvL1N8ZsAQ7i2G", "9IBuBVemd2S2dbE3BWmY83r4APvNrK7d", "ZoqrROBX", "uf7sNUy4ZjnbrmNcJuZuOOSXLwo6bRiZ", "LuNKGusWtlIWkNNSsxJCgMD8UDEcDleP", "s1ncMgVhGbgxvH35X0QQBiYqSsxlrK3j", "2ghFrXKxVbUZFk6auJt6qCgV8pKBUCZ9"};
    }

    public C0797Rs(String str, String str2, EnumC01290h r3, Collection<String> detectionStrings, Map<String, String> metadata, String str3, String str4, @Nullable String str5) {
        this.A04 = str;
        this.A01 = str2;
        this.A00 = r3;
        this.A06 = detectionStrings;
        this.A07 = metadata;
        this.A05 = str3;
        this.A02 = str4;
        this.A03 = str5;
    }

    public static C0797Rs A00(JSONObject jSONObject) {
        JSONArray jSONArray;
        if (jSONObject == null) {
            return null;
        }
        String optString = jSONObject.optString(A01(71, 6, 34));
        String activationCommand = jSONObject.optString(A01(0, 18, 13));
        String encryptedCPM = jSONObject.optString(A01(85, 10, 34));
        String A022 = LG.A02(jSONObject, A01(18, 2, 2));
        EnumC01290h A002 = EnumC01290h.A00(jSONObject.optString(A01(50, 21, 57)));
        try {
            jSONArray = new JSONArray(jSONObject.optString(A01(20, 17, 58)));
        } catch (JSONException e) {
            e.printStackTrace();
            jSONArray = null;
        }
        Collection<String> A012 = C01310j.A01(jSONArray);
        JSONObject optJSONObject = jSONObject.optJSONObject(A01(77, 8, 98));
        HashMap hashMap = new HashMap();
        if (optJSONObject != null) {
            Iterator<String> keys = optJSONObject.keys();
            while (true) {
                boolean hasNext = keys.hasNext();
                if (A09[4].charAt(10) == 'n') {
                    String[] strArr = A09;
                    strArr[3] = "3Uh3uJOo";
                    strArr[1] = "LYOYANb7jIXToaEoAzTea1MWV";
                    if (!hasNext) {
                        break;
                    }
                    String next = keys.next();
                    hashMap.put(next, optJSONObject.optString(next));
                } else {
                    throw new RuntimeException();
                }
            }
        }
        return new C0797Rs(optString, activationCommand, A002, A012, hashMap, encryptedCPM, A022, LG.A02(jSONObject, A01(37, 13, 95)));
    }

    public final String A04() {
        return this.A01;
    }

    public final String A05() {
        return this.A04;
    }

    @Nullable
    public final String A06() {
        return this.A03;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC01300i
    public final String A5x() {
        return this.A02;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC01300i
    public final Collection<String> A6F() {
        return this.A06;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC01300i
    public final EnumC01290h A6e() {
        return this.A00;
    }
}
