package com.facebook.ads.redexgen.X;

import android.content.SharedPreferences;
import com.facebook.ads.internal.util.process.ProcessUtils;
import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.5a  reason: invalid class name and case insensitive filesystem */
public final class C02515a {
    public static byte[] A01;
    public SharedPreferences A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 78);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{-41, -38, -20, -37, -24, -22, -33, -23, -33, -28, -35, -65, -38, -32, -13, -13, -15, -24, -31, -12, -13, -24, -18, -19, -56, -29, 1, -1, 1, 6, 3, -14, -15, -16, -4, -6, -69, -13, -18, -16, -14, -17, -4, -4, -8, -69, -18, -15, 0, -69, -10, -15, -13, -18, -39, -42, -38, -42, -31, -82, -47, -63, -33, -50, -48, -40, -42, -37, -44};
    }

    public C02515a(AnonymousClass8D r4) {
        this.A00 = r4.getSharedPreferences(ProcessUtils.getProcessSpecificName(A00(33, 21, 63), r4), 0);
    }

    public final AnonymousClass5Z A02() {
        SharedPreferences sharedPreferences = this.A00;
        String A002 = A00(0, 13, 40);
        if (!sharedPreferences.contains(A002)) {
            return AnonymousClass5Z.A00();
        }
        return new AnonymousClass5Z(this.A00.getString(A002, A00(0, 0, 80)), this.A00.getBoolean(A00(54, 15, 31), false), AnonymousClass5Y.A09, this.A00.getLong(A00(26, 7, 80), -1));
    }

    public final String A03() {
        return this.A00.getString(A00(13, 13, 49), A00(0, 0, 80));
    }

    public final void A04(AnonymousClass5Z r7) {
        SharedPreferences.Editor edit = this.A00.edit();
        edit.putString(A00(0, 13, 40), r7.A03());
        edit.putBoolean(A00(54, 15, 31), r7.A04());
        edit.putLong(A00(26, 7, 80), r7.A01());
        edit.apply();
    }

    public final void A05(String str) {
        SharedPreferences.Editor edit = this.A00.edit();
        edit.putString(A00(13, 13, 49), str);
        edit.apply();
    }
}
