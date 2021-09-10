package com.facebook.ads.redexgen.X;

import android.content.SharedPreferences;
import android.os.Build;
import android.os.SystemClock;
import android.text.TextUtils;
import android.webkit.WebSettings;
import com.facebook.ads.internal.api.BuildConfigApi;
import com.facebook.ads.internal.util.process.ProcessUtils;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.util.Arrays;
import java.util.Locale;
import java.util.concurrent.FutureTask;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: com.facebook.ads.redexgen.X.9C */
public final class AnonymousClass9C {
    public static String A00 = A00(87, 7, 79);
    public static byte[] A01;
    public static String[] A02;
    public static final AtomicBoolean A03 = new AtomicBoolean();
    public static final AtomicReference<String> A04 = new AtomicReference<>();

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 19);
        }
        return new String(copyOfRange);
    }

    public static void A08() {
        A01 = new byte[]{76, 55, 42, 46, 45, 34, 67, 45, 25, 8, 5, 9, 2, 15, 9, 34, 9, 24, 27, 3, 30, 7, 42, 3, 30, 45, 2, 8, 30, 3, 5, 8, 87, 42, 46, 63, 34, 67, 71, 87, 42, 46, 45, 58, 67, 81, 44, 40, 40, 60, 69, 101, 24, 28, 18, 29, 113, 30, 99, 103, 118, 115, 10, 39, 8, 2, 20, 9, 15, 2, 16, 20, 23, 20, 121, 72, 76, 88, 93, 33, 17, 8, 30, 15, 20, 13, 13, 9, 50, 55, 50, 51, 43, 50, 38, 49, 61, 63, 124, 52, 51, 49, 55, 48, 61, 61, 57, 124, 51, 54, 33, 124, 59, 60, 38, 55, 32, 60, 51, 62, 124, 39, 51, 62, 60, 55, 60, 43, 48, 58, 59, 39, 39, 35, 125, 50, 52, 54, 61, 39, 60, 58, 44, 59, 22, 40, 46, 44, 39, 61, 50, 52, 34, 53, 24, 38, 32, 34, 41, 51, 24, 43, 38, 52, 51, 24, 53, 34, 33, 53, 34, 52, 47, 85, 71, 64, 125, 84, 75, 71, 85};
    }

    public static void A09() {
        A02 = new String[]{"Qr1EFu0kx1tI01867m6ODqfSZ9SwtWDI", "3TYgkAWbIjP9kMvunjr7VwfmqgOZ7ZQ4", "kyx9q1x7DLL5BxK3faNs604Sw4dxbCMr", "cJW9lkVABx2P1Kp63XktrUnlRFV2zQAL", "nhxLXaLaMxGTsXNVJcvnwyCHZZV2RS3H", "y9xLyKazRl3zNBUnfIZmAOMjGK0AXhl4", "DTEqb4TbXnNBCaxA5atVnYK0pSb9DMUi", "fZvghiN"};
    }

    static {
        A09();
        A08();
    }

    public static String A01(AnonymousClass8D r0) {
        return WebSettings.getDefaultUserAgent(r0);
    }

    public static String A02(AnonymousClass8D r4) {
        FutureTask futureTask = new FutureTask(new AnonymousClass9B(r4));
        for (int i = 0; i < 3; i++) {
            ExecutorC0627Lc.A00(futureTask);
            try {
                return (String) futureTask.get();
            } catch (Throwable th) {
                A0A(r4, th);
                SystemClock.sleep(500);
            }
        }
        return null;
    }

    public static String A03(AnonymousClass8D r5, C03328o r6) {
        String A07 = r6.A07();
        if (TextUtils.isEmpty(A07)) {
            boolean andSet = A03.getAndSet(true);
            String[] strArr = A02;
            if (strArr[4].charAt(26) != strArr[3].charAt(26)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A02;
            strArr2[1] = "SlGltdwaGCQXXY2U2bjZ1NfeES9SOW6r";
            strArr2[0] = "AnJMWH4pc3dV3Xqon1tLsffrk7nZCcYt";
            if (!andSet) {
                r5.A04().A8V(A00(123, 7, 74), C03228e.A1I, new C03238f(A00(80, 7, 82)));
            }
        }
        return A07;
    }

    /* JADX INFO: Multiple debug info for r14v0 com.facebook.ads.redexgen.X.8D: [D('t' java.lang.Throwable), D('browserUserAgent' java.lang.String)] */
    public static String A04(AnonymousClass8D r14, boolean z) {
        if (r14 == null) {
            return A00;
        }
        if (z) {
            return System.getProperty(A00(130, 10, 64));
        }
        String str = A04.get();
        if (str != null) {
            return str;
        }
        long A012 = J3.A01(r14);
        String A002 = A00(150, 23, 84);
        String A003 = A00(140, 10, 90);
        String A004 = A00(95, 28, 65);
        if (A012 > 0) {
            SharedPreferences sharedPreferences = r14.getSharedPreferences(ProcessUtils.getProcessSpecificName(A004, r14), 0);
            String string = sharedPreferences.getString(A003, null);
            long j = sharedPreferences.getLong(A002, 0);
            if (!TextUtils.isEmpty(string) && System.currentTimeMillis() - j < A012) {
                A04.set(string);
                return string;
            }
        }
        String str2 = null;
        if (Build.VERSION.SDK_INT >= 17) {
            try {
                str2 = A01(r14);
                A04.set(str2);
            } catch (Throwable th) {
                A0A(r14, th);
            }
        }
        if (str2 == null) {
            str2 = A02(r14);
        }
        if (str2 == null) {
            return A00;
        }
        int i = (A012 > 0 ? 1 : (A012 == 0 ? 0 : -1));
        String[] strArr = A02;
        if (strArr[4].charAt(26) != strArr[3].charAt(26)) {
            throw new RuntimeException();
        }
        A02[7] = "Kvz6zSF";
        if (i > 0) {
            SharedPreferences sharedPreferences2 = r14.getSharedPreferences(ProcessUtils.getProcessSpecificName(A004, r14), 0);
            sharedPreferences2.edit().putString(A003, A04.get()).apply();
            sharedPreferences2.edit().putLong(A002, System.currentTimeMillis()).apply();
        }
        return str2;
    }

    public static String A05(C03328o r4, AnonymousClass8D r5) {
        if (!J3.A05(r5)) {
            return A00(0, 0, 40);
        }
        return A00(70, 5, 69) + A03(r5, r4) + A00(39, 6, 127) + r4.A06() + A00(45, 6, 121) + r4.A04() + A00(38, 1, FacebookMediationAdapter.ERROR_ADVIEW_CONSTRUCTOR_EXCEPTION);
    }

    public static String A06(C03328o r4, AnonymousClass8D r5, boolean z) {
        return A04(r5, z) + A00(0, 38, 127) + A00(63, 7, 117) + A00(57, 6, 54) + C03328o.A03 + A00(38, 1, FacebookMediationAdapter.ERROR_ADVIEW_CONSTRUCTOR_EXCEPTION) + A05(r4, r5) + A00(75, 5, 29) + BuildConfigApi.getVersionName(r5) + A00(51, 6, 77) + Locale.getDefault().toString() + A00(94, 1, FacebookMediationAdapter.ERROR_FACEBOOK_INITIALIZATION);
    }

    public static void A0A(AnonymousClass8D r5, Throwable th) {
        r5.A04().A8V(A00(173, 8, 49), C03228e.A2M, new C03238f(th));
    }
}
