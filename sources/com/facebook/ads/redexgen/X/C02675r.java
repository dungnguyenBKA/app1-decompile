package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.view.MotionEvent;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicReference;
import javax.annotation.Nullable;
import javax.annotation.concurrent.ThreadSafe;

@ThreadSafe
/* renamed from: com.facebook.ads.redexgen.X.5r  reason: invalid class name and case insensitive filesystem */
public final class C02675r {
    public static byte[] A00;
    public static String[] A01;
    public static final AtomicReference<C02725w> A02 = new AtomicReference<>();

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = copyOfRange.length;
            if (A01[4].charAt(15) != 'H') {
                throw new RuntimeException();
            }
            String[] strArr = A01;
            strArr[3] = "ewynTuX5etTUvRbKneAORAXWy6m3gfja";
            strArr[0] = "MEXbvG7De7lT0m7kyXT3Vo2bJU5t0LAQ";
            if (i4 >= length) {
                return new String(copyOfRange);
            }
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 28);
            i4++;
        }
    }

    public static void A01() {
        A00 = new byte[]{60, 40, 57, 52, 56, 51, 62, 56, 2, 51, 56, 41, 42, 50, 47, 54, 115, 57, 56, 37, 45, 47, 36, 47, 56, 35, 41};
    }

    public static void A02() {
        A01 = new String[]{"r7c1s5U0efOStYGowMowhUbuYlQTG1Tt", "4N5luf2P5Kce0fziMzoENYJ9JUsEy4RG", "Zwxj", "L2KmiKnie6D54jPyz7fJn9CofNiJStjg", "Reipc3PbxUqE4G7HYurM4m8tamMVkuwI", "qFHCxa5Kyhox8u", "zslT757DGHQcDkpTRw1DlpZ4hqoBSQOy", "oFLB5GUqllb2V05SIM"};
    }

    static {
        A02();
        A01();
    }

    @SuppressLint({"CatchGeneralException"})
    public static void A03(@Nullable Activity activity, MotionEvent motionEvent) {
        C02725w r0;
        try {
            if (C02685s.A0Q(activity) && (r0 = A02.get()) != null) {
                r0.A06(motionEvent);
            }
        } catch (Throwable th) {
            XK A002 = AnonymousClass8C.A00();
            if (A002 != null) {
                A002.A04().A8V(A00(20, 7, 86), C03228e.A11, new C03238f(th));
            }
        }
    }

    public static void A04(Context context) {
        if (context instanceof Application) {
            C0619Ks.A06(new U5());
        }
    }

    public static void A05(XK xk, @Nullable String str) {
        ExecutorC0637Lm.A06.execute(new U2(xk, str));
    }

    @SuppressLint({"CatchGeneralException"})
    public static void A06(XK xk, String str) {
        if (C02685s.A0Q(xk)) {
            if (A02.get() != null || !AnonymousClass72.A0F(AnonymousClass72.A03(str))) {
                C02725w r2 = A02.get();
                if (r2 != null) {
                    ExecutorC0637Lm.A06.execute(new U3(r2, str, xk));
                    return;
                }
                return;
            }
            A05(xk, str);
        }
    }

    @SuppressLint({"CatchGeneralException"})
    public static synchronized void A08(XK xk, @Nullable String str) {
        synchronized (C02675r.class) {
            try {
                if (A02.get() == null) {
                    if (C02685s.A0Q(xk)) {
                        U7 u7 = new U7(xk);
                        U6 u6 = new U6(xk);
                        C02715v A0J = new C02705u().A0I(true).A04(C02685s.A05(xk)).A02(C02685s.A03(xk)).A03(C02685s.A04(xk)).A06(C02685s.A07(xk)).A0G(C02685s.A0M()).A0A(u7).A09(u6.A01()).A00(C02685s.A01(xk)).A0C(EnumC02846i.A0G).A0F(C02685s.A0D(xk)).A0H(C02685s.A0N(xk)).A05(C02685s.A06(xk)).A0D(Build.class).A01(C02685s.A02(xk)).A08(C02685s.A09(xk)).A07(C02685s.A08(xk)).A0B(u6).A0E(A00(0, 20, 65)).A0J();
                        if (C02685s.A0R(xk)) {
                            A04(xk.getApplicationContext());
                        }
                        C02725w r1 = new C02725w(xk, A0J, C02685s.A0A(xk));
                        if (str != null) {
                            r1.A07(str);
                        }
                        A02.set(r1);
                    }
                    return;
                }
                return;
            } catch (Throwable th) {
                xk.A04().A8V(A00(20, 7, 86), C03228e.A11, new C03238f(th));
            }
        }
    }
}
