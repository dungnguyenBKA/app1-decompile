package com.facebook.ads.redexgen.X;

import android.os.Process;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.lang.Thread;
import java.util.Arrays;
import java.util.Map;

/* renamed from: com.facebook.ads.redexgen.X.8U  reason: invalid class name */
public final class AnonymousClass8U implements Thread.UncaughtExceptionHandler {
    public static byte[] A04;
    public final XK A00;
    public final AbstractC03198b A01;
    public final Thread.UncaughtExceptionHandler A02;
    public final Map<String, String> A03;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A04, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 65);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A04 = new byte[]{42, 28, 94, 122, 96, 96, 122, 125, 116, 51, 80, 124, 125, 103, 118, 107, 103, 11, 7, 5, 70, 14, 9, 11, 13, 10, 7, 7, 3, 70, 9, 12, 27, 71, 86, 69, 87, 76, 20, 18, 5, 19, 30, 23, 2, 80, 86, 65, 87, 90, 83, 70, 124, 64, 76, 71, 70};
    }

    public AnonymousClass8U(@Nullable Thread.UncaughtExceptionHandler uncaughtExceptionHandler, XK xk, AnonymousClass8T r4) {
        this(uncaughtExceptionHandler, xk, r4, C03208c.A00());
    }

    public AnonymousClass8U(@Nullable Thread.UncaughtExceptionHandler uncaughtExceptionHandler, XK xk, AnonymousClass8T r6, AbstractC03198b r7) {
        this.A02 = uncaughtExceptionHandler;
        if (xk != null) {
            this.A00 = xk;
            this.A03 = r6.A7D(xk);
            this.A01 = r7;
            return;
        }
        throw new IllegalArgumentException(A00(2, 15, 82));
    }

    public static void A02() {
        try {
            Process.killProcess(Process.myPid());
        } catch (Throwable unused) {
        }
        try {
            System.exit(10);
        } catch (Throwable unused2) {
        }
    }

    private void A03(Thread thread, Throwable th) {
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.A02;
        if (uncaughtExceptionHandler != null) {
            uncaughtExceptionHandler.uncaughtException(thread, th);
        } else {
            A02();
        }
    }

    public final void uncaughtException(Thread thread, Throwable th) {
        try {
            String A032 = LQ.A03(this.A00, th);
            if (!TextUtils.isEmpty(A032) && A032.contains(A00(17, 16, 41))) {
                Map<String, String> A022 = new AnonymousClass8S(A032, this.A03).A02();
                A022.put(A00(38, 7, 38), A00(33, 5, 101));
                Throwable A002 = KO.A00();
                String A003 = A00(45, 12, 98);
                if (A002 == th) {
                    A022.put(A003, A00(1, 1, FacebookMediationAdapter.ERROR_MAPPING_NATIVE_ASSETS));
                } else {
                    A022.put(A003, A00(0, 1, 91));
                }
                this.A01.AEm(new C03268i(this.A00.A05().A01(), this.A00.A05().A02(), A022), this.A00);
                if (J4.A1G(this.A00)) {
                    J4.A0b(this.A00);
                }
            }
        } catch (Exception unused) {
        }
        A03(thread, th);
    }
}
