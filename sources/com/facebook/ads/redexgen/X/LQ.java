package com.facebook.ads.redexgen.X;

import android.content.Context;
import androidx.annotation.Nullable;
import java.io.PrintWriter;
import java.util.Arrays;
import java.util.Random;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class LQ {
    public static byte[] A00;
    public static final Pattern A01 = Pattern.compile(A02(0, 24, 13));

    public static String A02(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 124);
        }
        return new String(copyOfRange);
    }

    public static void A07() {
        A00 = new byte[]{89, 45, 2, 90, 16, 5, 45, 2, 90, 42, 16, 92, 11, 95, 44, 90, 88, 42, 48, 92, 43, 44, 95, 91, 120, 78, 73, 73, 94, 85, 79, 27, 72, 79, 90, 88, 80, 27, 79, 73, 90, 88, 94, 33, 45, 47, 108, 36, 35, 33, 39, 32, 45, 45, 41, 108, 35, 38, 49};
    }

    static {
        A07();
    }

    public static String A00() {
        return A06(new Exception(A02(24, 19, 71)), -1, -1, false);
    }

    public static String A01(int i) {
        if (i > 0 && new Random().nextFloat() < 1.0f / ((float) i)) {
            return A00();
        }
        return null;
    }

    public static String A03(Context context, @Nullable Throwable th) {
        return A06(th, J4.A0G(context), J4.A01(context), J4.A10(context));
    }

    public static String A04(String str) {
        Matcher matcher = A01.matcher(str);
        if (matcher.matches()) {
            return matcher.group(1);
        }
        return str;
    }

    public static String A06(@Nullable Throwable th, int i, int i2, boolean z) {
        String A02 = A02(0, 0, 122);
        if (th == null) {
            return A02;
        }
        try {
            C1163cX cXVar = new C1163cX();
            LO lo = cXVar;
            if (i2 >= 0) {
                lo = new C1165cZ(lo, i2);
            }
            if (i >= 0) {
                lo = new C1166ca(lo, i, i);
            }
            if (z) {
                lo = new C1164cY(lo);
            }
            C1162cW cWVar = new C1162cW(cXVar, 1, lo);
            th.printStackTrace(new PrintWriter(new LP(cWVar)));
            cWVar.flush();
            return cXVar.toString();
        } catch (Exception unused) {
            return A02;
        }
    }

    public static boolean A08(LN ln) {
        String A03 = ln.A03();
        if (A03 == null) {
            return false;
        }
        if (A0A(A03)) {
            return true;
        }
        for (String str : ln.A02()) {
            if (A0A(str)) {
                return true;
            }
        }
        for (String str2 : ln.A01()) {
            if (A0A(str2)) {
                return true;
            }
        }
        return false;
    }

    public static boolean A0A(String str) {
        return str.contains(A02(43, 16, 62));
    }
}
