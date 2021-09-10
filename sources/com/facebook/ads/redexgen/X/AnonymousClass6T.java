package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.content.Context;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import javax.annotation.Nullable;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.facebook.ads.redexgen.X.6T  reason: invalid class name */
public final class AnonymousClass6T {
    public static byte[] A07;
    public static String[] A08;
    public int A00;
    public final C02715v A01;
    public final UA A02;
    public final UB A03;
    public final UC A04;
    public final AnonymousClass6U A05;
    public final C02996x A06;

    static {
        A05();
        A04();
    }

    public static String A02(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A07, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 75);
        }
        return new String(copyOfRange);
    }

    public static void A04() {
        A07 = new byte[]{-31, 4};
    }

    public static void A05() {
        A08 = new String[]{"Nj4TqS4QnuHXli7th2heksSDMg2Z", "RSouwChKZWzGhunCWCHEu7HkA4YX3nJn", "5fVToSkDBkuydhS3BZw", "o644y0JXIVns0cvIXh4fs0HcxxzuSHU9", "L6wIWC4w0dKe6dclyvwc8pXUf7KK", "NV8kH7O4XMciCHnyYHa8lR80N34PEowy", "S6E1x33SpjjOrFFRELF", "CEXaqd5N8FzuUquPi7vxqko1f9a5yOv1"};
    }

    public AnonymousClass6T(Context context, AnonymousClass6U r3, C02715v r4) {
        this.A03 = new UB(context, r4);
        this.A04 = new UC(context, r4);
        this.A02 = new UA(context, r4);
        this.A06 = new C02996x(context, r4);
        this.A05 = r3;
        this.A01 = r4;
        A06();
    }

    @Nullable
    public static C02796d A00(int i, String str, int i2, int i3) {
        if (i != 10300) {
            if (i == 10920) {
                return A01(str, i2, i3, EnumC02786c.A03);
            }
            if (!(i == 10940 || i == 10941)) {
                switch (i) {
                    case 10943:
                    case 10944:
                    case 10945:
                        break;
                    default:
                        return null;
                }
            }
        }
        return A01(str, i2, i3, EnumC02786c.A04);
    }

    @Nullable
    public static C02796d A01(String str, int i, int i2, EnumC02786c r6) {
        int i3 = AnonymousClass6S.A00[r6.ordinal()];
        if (i3 == 1) {
            return new C02796d(Integer.valueOf(Integer.parseInt(str)), i, i2);
        }
        if (i3 != 2) {
            return null;
        }
        return new C02796d(str, i, i2);
    }

    /* JADX INFO: Multiple debug info for r0v11 int: [D('minApiLevel' int), D('deprecatedApiLevel' int)] */
    @Nullable
    private List<C02796d> A03(int i) throws JSONException {
        ArrayList arrayList = new ArrayList();
        Map<Integer, String> A0i = this.A01.A0i();
        if (A0i == null || A0i.isEmpty() || !A0i.containsKey(Integer.valueOf(i))) {
            return arrayList;
        }
        JSONObject jSONObject = new JSONObject(A0i.get(Integer.valueOf(i)));
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            JSONArray jSONArray = jSONObject.getJSONArray(next);
            if (jSONArray != null && jSONArray.length() == 2) {
                arrayList.add(A00(i, next, jSONArray.getInt(0), jSONArray.getInt(1)));
            }
        }
        return arrayList;
    }

    @SuppressLint({"BadMethodUse-android.util.Log.e", "CatchGeneralException"})
    private final void A06() {
        String A022 = A02(1, 1, 69);
        try {
            JSONObject jSONObject = new JSONObject(this.A01.A0h());
            Integer valueOf = jSONObject.has(A022) ? Integer.valueOf(jSONObject.getInt(A022)) : null;
            if (valueOf != null) {
                this.A00 = valueOf.intValue();
                this.A06.A04(this.A00);
                A07(jSONObject.getJSONArray(A02(0, 1, 51)));
            }
        } catch (Throwable th) {
            AnonymousClass67.A04(th);
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:30:0x00b3, code lost:
        if (r4.containsKey(r8) == false) goto L_0x00b5;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:42:0x00fb, code lost:
        if (r4.containsKey(r8) == false) goto L_0x00b5;
     */
    @android.annotation.SuppressLint({"BadMethodUse-android.util.Log.e"})
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void A07(org.json.JSONArray r11) throws java.lang.Exception {
        /*
        // Method dump skipped, instructions count: 262
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.AnonymousClass6T.A07(org.json.JSONArray):void");
    }

    private final boolean A08(EnumSet<EnumC02846i> enumSet) {
        if (!enumSet.contains(this.A01.A0a()) || !enumSet.contains(EnumC02846i.A05) || !enumSet.contains(EnumC02846i.A06) || enumSet.contains(EnumC02846i.A0A)) {
            return true;
        }
        return false;
    }

    public final int A09() {
        return this.A00;
    }

    public final UA A0A() {
        return this.A02;
    }

    public final UB A0B() {
        return this.A03;
    }

    public final UC A0C() {
        return this.A04;
    }

    public final C02996x A0D() {
        return this.A06;
    }
}
