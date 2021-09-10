package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.util.Log;
import androidx.annotation.Nullable;
import com.facebook.ads.AudienceNetworkAds;
import com.facebook.ads.internal.api.BuildConfigApi;
import com.facebook.ads.internal.settings.AdInternalSettings;
import com.facebook.ads.internal.settings.MultithreadedBundleWrapper;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicBoolean;

/* renamed from: com.facebook.ads.redexgen.X.91  reason: invalid class name */
public final class AnonymousClass91 {
    public static boolean A00;
    public static boolean A01;
    public static byte[] A02;
    public static String[] A03;
    public static final AtomicBoolean A04 = new AtomicBoolean();
    public static final AtomicBoolean A05 = new AtomicBoolean();
    public static final AtomicBoolean A06 = new AtomicBoolean();

    public static String A02(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = copyOfRange.length;
            if (A03[1].charAt(3) != 'A') {
                String[] strArr = A03;
                strArr[4] = "IDfTBPjSyvL4biEe7dLkbKSavqcQmadb";
                strArr[2] = "Oy3yacq1X2KDRnpIDSUXWs28RTZJmhMt";
                if (i4 >= length) {
                    return new String(copyOfRange);
                }
                copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 60);
                i4++;
            } else {
                throw new RuntimeException();
            }
        }
    }

    public static void A03() {
        A02 = new byte[]{-57, -53, -61, -59, -53, -57, -10, -58, -66, -70, -71, -19, -36, -31, -35, -26, -37, -35, -58, -35, -20, -17, -25, -22, -29, -62, -77, -70, -113, -40, -35, -40, -29, -40, -48, -37, -40, -23, -48, -29, -40, -34, -35, -113, -30, -29, -48, -31, -29, -44, -45, -60, -43, -36, -111, -24, -46, -28, -111, -46, -35, -29, -42, -46, -43, -22, -111, -38, -33, -38, -27, -38, -46, -35, -38, -21, -42, -43, -110, -111, -60, -36, -38, -31, -31, -38, -33, -40, -97, -62, -40, -34, -119, -51, -40, -41, -112, -35, -119, -52, -54, -43, -43, -119, -86, -34, -51, -46, -50, -41, -52, -50, -73, -50, -35, -32, -40, -37, -44, -86, -51, -36, -105, -46, -41, -46, -35, -46, -54, -43, -46, -29, -50, -111, -110, -105, -119, -68, -40, -42, -50, -119, -49, -34, -41, -52, -35, -46, -40, -41, -54, -43, -46, -35, -30, -119, -42, -54, -30, -119, -41, -40, -35, -119, -32, -40, -37, -44, -119, -39, -37, -40, -39, -50, -37, -43, -30, -105, -66, -51, -58, -31, -33, -24, -33, -20, -29, -35, -9, -4, -9, 2, -9, -17, -6, -9, 8, -13, 5, 10, 5, 16, 5, -3, 8, 5, 22, 1, -60, -59, -68, 10, 11, 16, -68, -1, -3, 8, 8, 1, 0, -54};
    }

    public static void A04() {
        A03 = new String[]{"qrNp1wG", "4f9SKAEMWw8LBpPH9ClfYFaSVVluVAOE", "62aVnpwn360RV3u8SEcmxFYidJmBvefX", "Gce9ySP9MgoEln4cNVrEo5sJO8CSkBrv", "GAv6eBsy68sSiadtgyjEU9blJSusD372", "OMedkGV5dbFzDsS0dZcen", "wlEAAxVLaYYUt0VSnPi", "2B4l1t7rFez9Iyb0KdS6JKEUq9HBo8Fu"};
    }

    static {
        A04();
        A03();
    }

    public static KR A00() {
        return new C0939Xh();
    }

    public static AbstractC0609Kh A01(XK xk) {
        return new C0940Xi(xk);
    }

    public static void A05(AudienceNetworkAds.InitListener initListener, AudienceNetworkAds.InitResult initResult) {
        ExecutorC0627Lc.A01.execute(new C0938Xg(initListener, initResult));
    }

    /* JADX INFO: Multiple debug info for r5v0 com.facebook.ads.redexgen.X.XK: [D('e' java.lang.Exception), D('defaultUncaughtExceptionHandler' java.lang.Thread$UncaughtExceptionHandler)] */
    @SuppressLint({"CatchGeneralException"})
    public static void A07(XK xk) {
        if (J6.A0Q(xk) && !A05.getAndSet(true)) {
            try {
                Thread.setDefaultUncaughtExceptionHandler(new AnonymousClass8U(Thread.getDefaultUncaughtExceptionHandler(), xk, new C0942Xk()));
            } catch (Exception e) {
                xk.A04().A8V(A02(181, 7, 62), C03228e.A1G, new C03238f(e));
            }
        }
    }

    public static void A08(XK xk) {
        A0G(xk, null, null, 3);
    }

    public static void A09(XK xk) {
        A0G(xk, null, null, 3);
    }

    public static void A0A(XK xk) {
        if (J4.A1N(xk)) {
            A0F(xk, 0);
        }
        if (J4.A1Q(xk)) {
            A0C(xk);
        }
    }

    public static void A0B(XK xk) {
        if (J4.A1O(xk)) {
            A0H(xk, null, null, 3);
        }
    }

    public static void A0C(XK xk) {
        ExecutorC0637Lm.A06.execute(new C0937Xf(xk));
    }

    public static void A0D(XK xk) {
        AnonymousClass8Y.A0D(xk, new C0943Xl(xk), new C0944Xm(), BuildConfigApi.isDebug());
        C1122br.A01(xk);
        C02675r.A05(xk, null);
    }

    public static void A0F(XK xk, int i) {
        AnonymousClass8C.A01(xk);
        if (!A04.getAndSet(true)) {
            if (AdInternalSettings.isDebugBuild() || AdInternalSettings.isDebuggerOn()) {
                C0601Jz.A02();
            }
            A07(xk);
            C0606Ke.A00(J4.A0k(xk), BuildConfigApi.isDebug(), A00(), A01(xk));
            C02605k.A04((long) J4.A02(xk));
            C0755Qc.A0A(new C0941Xj(xk));
            if (i == 3) {
                Log.e(A02(8, 17, 60), A02(89, 89, 45));
                xk.A04().A8l(A02(178, 3, 33), C03228e.A0G, new C03238f(A02(198, 24, 96)));
            }
            C0619Ks.A05(xk);
            ExecutorC0637Lm.A06(xk);
            JM.A03(xk);
            C01420u.A0D(xk);
            if (J4.A0r(xk)) {
                C02404p.A00(xk);
            }
        }
    }

    public static void A0G(XK xk, @Nullable MultithreadedBundleWrapper multithreadedBundleWrapper, @Nullable AudienceNetworkAds.InitListener initListener, int i) {
        C0601Jz.A05(A02(188, 10, 82), A02(25, 26, 51), A02(0, 8, 87));
        C0755Qc.A06();
        A0H(xk, multithreadedBundleWrapper, initListener, i);
    }

    @SuppressLint({"CatchGeneralException"})
    public static void A0H(XK xk, @Nullable MultithreadedBundleWrapper multithreadedBundleWrapper, @Nullable AudienceNetworkAds.InitListener initListener, int i) {
        AnonymousClass8C.A01(xk);
        boolean z = false;
        synchronized (AnonymousClass91.class) {
            if (!A00) {
                if (i != 1) {
                    if (i != 2) {
                        if (i == 3 && !A01) {
                            A01 = true;
                            z = true;
                        }
                    }
                }
                A00 = true;
                z = true;
            }
        }
        if (z) {
            A0F(xk, i);
            ExecutorC0637Lm.A08.execute(new C0936Xe(xk, initListener));
        } else if (i == 1) {
            String A022 = A02(51, 38, 53);
            if (initListener != null) {
                A05(initListener, new AnonymousClass90(true, A022));
            } else {
                Log.w(A02(8, 17, 60), A022);
            }
        }
    }

    public static synchronized boolean A0I() {
        boolean z;
        synchronized (AnonymousClass91.class) {
            z = A00;
        }
        return z;
    }
}
