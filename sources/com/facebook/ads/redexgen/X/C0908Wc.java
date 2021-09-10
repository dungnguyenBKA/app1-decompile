package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.SystemClock;
import android.util.Log;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import javax.annotation.Nullable;

/* renamed from: com.facebook.ads.redexgen.X.Wc  reason: case insensitive filesystem */
public final class C0908Wc extends AnonymousClass6V {
    @Nullable
    public static Class A01;
    @Nullable
    public static Method A02;
    public static byte[] A03;
    public static String[] A04;
    public static final String A05 = C0908Wc.class.getSimpleName();
    public final Context A00;

    public static String A05(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 116);
        }
        return new String(copyOfRange);
    }

    public static void A08() {
        A03 = new byte[]{81, 102, 102, 123, 102, 52, 114, 113, 96, 119, 124, 125, 122, 115, 52, 71, 109, 103, 96, 113, 121, 52, 87, 120, 117, 103, 103, 109, 90, 90, 71, 90, 8, 78, 77, 92, 75, 64, 65, 70, 79, 8, 123, 81, 91, 92, 77, 69, 8, 101, 77, 92, 64, 71, 76, 54, 57, 51, 37, 56, 62, 51, 121, 56, 36, 121, 4, 46, 36, 35, 50, 58, 7, 37, 56, 39, 50, 37, 35, 62, 50, 36, 52, 54, 39};
    }

    public static void A09() {
        A04 = new String[]{"xTXDwnP", "m3mciujbx2dfIA", "OE7MuMg38emiZQLg98rjTkcMx4olKfMY", "goZdcnoJLHlC5XwgkHkMwQSnaoNWuJDR", "f3bA1NA8QYvQicC8fDBey3gVRJQFEJgU", "9Vn87dBsvW3P0a", "kKXiWp2Gy5boByJ8BFYnfmbiktlC7Ann", "A12rwgsTDNtSjGwwceoQgWf2GCS5lXG2"};
    }

    static {
        A09();
        A08();
    }

    public C0908Wc(Context context, C02715v r3) {
        super(context, r3);
        this.A00 = context;
        A01 = A04(this.A00);
        A02 = A06();
    }

    /* access modifiers changed from: private */
    @SuppressLint({"Nullable Dereference"})
    public AbstractC02956t A02(HashMap<String, C0907Wb> hashMap) {
        return new XA(SystemClock.elapsedRealtime(), A03(), hashMap, EnumC02946s.A0C);
    }

    @Nullable
    @SuppressLint({"BadMethodUse-android.util.Log.e"})
    public static Class A04(Context context) {
        try {
            return context.getClassLoader().loadClass(A05(55, 27, 35));
        } catch (ClassNotFoundException e) {
            String str = A05;
            String[] strArr = A04;
            if (strArr[2].charAt(28) != strArr[6].charAt(28)) {
                A04[7] = "FTL4wNiu3HGi8YEZOV1rCtrzX9Uy9DdR";
                Log.e(str, A05(0, 27, 96), e);
                return null;
            }
            throw new RuntimeException();
        }
    }

    @Nullable
    @SuppressLint({"BadMethodUse-android.util.Log.e"})
    public static Method A06() {
        try {
            Class<?>[] clsArr = {String.class};
            if (A01 == null) {
                return null;
            }
            return A01.getMethod(A05(82, 3, 39), clsArr);
        } catch (NoSuchMethodException e) {
            Log.e(A05, A05(27, 28, 92), e);
            return null;
        }
    }

    public final AbstractC02806e A0H(List<C02796d> list) {
        return new C0906Wa(this, list);
    }
}
