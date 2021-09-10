package com.facebook.ads.redexgen.X;

import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.text.TextUtils;
import com.facebook.ads.internal.util.process.ProcessUtils;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.util.Arrays;
import java.util.Locale;

/* renamed from: com.facebook.ads.redexgen.X.8L  reason: invalid class name */
public final class AnonymousClass8L extends SQLiteOpenHelper {
    public static byte[] A01;
    public static String[] A02;
    public static final String A03 = AnonymousClass8L.class.getSimpleName();
    public final AnonymousClass8K A00;

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 76);
        }
        return new String(copyOfRange);
    }

    public static void A02() {
        A01 = new byte[]{17, 1, 101, 100, 103, 96, 116, 109, 117, 1, 17, 48, 61, 37, 52, 35, 81, 37, 48, 51, 61, 52, 81, 20, 7, 20, 31, 5, 2, 81, 48, 53, 53, 81, 50, 62, 61, 36, 60, 63, 81, 90, Byte.MAX_VALUE, 95, 122, 111, 122, 121, 122, 104, 126, 83, 126, 119, 107, 126, 105, 59, 120, 122, 117, 59, 117, 116, 111, 59, 121, 126, 59, 117, 110, 119, 119, 33, 55, 42, 53, 69, 49, 36, 39, 41, 32, 69, 44, 35, 69, 32, 61, 44, 54, 49, 54, 69, 6, 23, 4, 22, 13, 0, 22, 88, 90, 73, 79, 69, 73, 40, 110, 103, 122, 109, 97, 111, 102, 87, 99, 109, 113, 123, 40, 53, 40, 71, 70, 51, 124, 121, 110, 56, 110, 51, 121, Byte.MAX_VALUE};
    }

    public static void A03() {
        A02 = new String[]{"JShIJu3JRfHt43ypO9GqFaXtQU", "Uet3LTw8rLJmru1DFWkYPrIPq9yjzQ4", "LBYTyoU1fD8w8O4ue", "ZxNu1nQjo2XkCjw5ERk40jWGoeLjYM9V", "VhJY3C97J7J84q76u4hEYHgB0g", "Ro8Wdk2EPx5GRn22XYsr1QjtSyjSX", "SdOPztDY16h0BPmxgfN82QFEWJhjV", "9YM807W9r6X84VXv6l9L7RtBJQk8UQ"};
    }

    static {
        A03();
        A02();
    }

    public AnonymousClass8L(XK xk, AnonymousClass8K r5) {
        super(xk, A01(xk), (SQLiteDatabase.CursorFactory) null, 4);
        if (r5 != null) {
            this.A00 = r5;
            return;
        }
        throw new IllegalArgumentException(A00(41, 32, 87));
    }

    public static String A01(XK xk) {
        Locale locale = Locale.US;
        Object[] objArr = {A00(0, 0, 95)};
        String A002 = A00(126, 8, 81);
        String format = String.format(locale, A002, objArr);
        if (!J4.A1d(xk)) {
            return format;
        }
        String packageName = xk.getPackageName();
        String processName = ProcessUtils.getProcessName(xk);
        if (packageName.equals(processName) || TextUtils.isEmpty(processName)) {
            return format;
        }
        Locale locale2 = Locale.US;
        return String.format(locale2, A002, '_' + processName);
    }

    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        for (AnonymousClass8O r0 : this.A00.A0N()) {
            r0.A08(sQLiteDatabase);
        }
    }

    public final void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        AnonymousClass8O[] A0N = this.A00.A0N();
        for (AnonymousClass8O r0 : A0N) {
            r0.A09(sQLiteDatabase);
            r0.A08(sQLiteDatabase);
        }
    }

    public final void onOpen(SQLiteDatabase sQLiteDatabase) {
        super.onOpen(sQLiteDatabase);
        if (!sQLiteDatabase.isReadOnly()) {
            sQLiteDatabase.execSQL(A00(101, 25, 68));
        }
    }

    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        if (i == 2 && i2 >= 3) {
            String A002 = A00(73, 28, 41);
            if (A02[7].length() != 30) {
                throw new RuntimeException();
            }
            A02[3] = "Uy0CZyDaBZXeJSQ63Y80hAJR5wsAelR7";
            sQLiteDatabase.execSQL(A002);
        }
        if (i <= 3 && i2 >= 4) {
            AnonymousClass8I r4 = XP.A02;
            sQLiteDatabase.execSQL(A00(11, 30, 61) + r4.A01 + A00(0, 1, 125) + r4.A02 + A00(1, 10, FacebookMediationAdapter.ERROR_CREATE_NATIVE_AD_FROM_BID_PAYLOAD));
        }
    }
}
