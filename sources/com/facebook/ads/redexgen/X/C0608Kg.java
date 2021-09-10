package com.facebook.ads.redexgen.X;

/* renamed from: com.facebook.ads.redexgen.X.Kg  reason: case insensitive filesystem */
public final class C0608Kg {
    public static String[] A01;
    public static final ThreadLocal<C0608Kg> A02 = new ThreadLocal<>();
    public final KP A00 = new KP();

    public static void A03() {
        A01 = new String[]{"vWOWhJ9TqiA1ty478f", "MWb8A3Nd6tPLcAimCp0hVAmYX6QHiaZm", "Xd3YBUkiMhOleC4V056rVyOXhinwtSii", "tT8mJINbcEXXPPmKiWyTepfA0JHaFg93", "WoudJsrKOqRuVhNYSdRTZjqc00A0B3WY", "YTheXaZSxrm1KPF5Yd", "huHeChgRkwF7QVPgKoMeW6tLhEc13T9K", "ASVM8zHOtJrSOKsDwpZwweqDqvgS8KFW"};
    }

    static {
        A03();
    }

    public static KP A00() {
        return A02().A00;
    }

    public static KP A01(C0607Kf kf) {
        KP kp = new KP(A00());
        kp.add(kf);
        return kp;
    }

    public static C0608Kg A02() {
        C0608Kg kg = A02.get();
        String[] strArr = A01;
        if (strArr[6].charAt(1) != strArr[2].charAt(1)) {
            String[] strArr2 = A01;
            strArr2[7] = "JnfSkSuIf6osqUQGv4Nkh0Vi2QZsQFPV";
            strArr2[4] = "e9u3CRl6fKpCeCDR9nRPR0cml03xK1Bs";
            if (kg != null) {
                return kg;
            }
            C0608Kg kg2 = new C0608Kg();
            A02.set(kg2);
            return kg2;
        }
        throw new RuntimeException();
    }

    public static void A04(AbstractRunnableC0603Kb kb) {
        KP createRunnableAsyncStackTrace = kb.A06();
        if (createRunnableAsyncStackTrace != null) {
            A02().A00.addAll(createRunnableAsyncStackTrace);
        }
    }

    public static void A05(AbstractRunnableC0603Kb kb) {
        KP createRunnableAsyncStackTrace = kb.A06();
        if (createRunnableAsyncStackTrace != null) {
            A02().A00.removeAll(createRunnableAsyncStackTrace);
        }
    }
}
