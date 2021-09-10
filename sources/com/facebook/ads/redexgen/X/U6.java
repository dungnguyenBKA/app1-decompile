package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.HashMap;
import org.apache.http.HttpStatus;

public final class U6 implements AnonymousClass66 {
    public static String[] A02;
    public final U8 A00;
    public final XK A01;

    static {
        A00();
    }

    public static void A00() {
        A02 = new String[]{"iWDBF2OKl3jtj3mE0UZLtkhUaVvUxXqs", "ms2LCEwCyzsqM8QDDj0PRev1P1CSm3w7", "hMtVrOKQMF9h", "gi6PEiuAAOhVuZEccjIoIAk9XYc1uF", "R32JKWcbl7Qu2cyp2LhmQehQDOktlipk", "kBJUlLOX6LAUVPMDIzawXbz3hNZwTKWy", "5r9f7V6KCkM3IvysTdnytDlDBRDUQAcw", "vGzO7SO4CN32udhBb2qyIGFDHHv1hOkX"};
    }

    public U6(XK xk) {
        this.A01 = xk;
        this.A00 = new U8(xk);
    }

    public final U8 A01() {
        return this.A00;
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass66
    @SuppressLint({"BadMethodUse-java.lang.String.length"})
    public final void ADG(Throwable th) {
        if (th != null && C02685s.A00(this.A01) < Math.random()) {
            StringWriter stringWriter = new StringWriter();
            th.printStackTrace(new PrintWriter(stringWriter));
            String stringWriter2 = stringWriter.toString();
            U8 u8 = this.A00;
            String A03 = AnonymousClass61.A04.A03();
            String A022 = AnonymousClass62.A06.A02();
            HashMap hashMap = new HashMap();
            String message = th.getMessage();
            if (stringWriter2 != null) {
                int length = stringWriter2.length();
                if (A02[1].charAt(16) != 'D') {
                    throw new RuntimeException();
                }
                A02[5] = "Ct83iaSYEVOHUGfDQtOJkAbKybUxEBTx";
                if (length > 500) {
                    stringWriter2 = stringWriter2.substring(0, HttpStatus.SC_INTERNAL_SERVER_ERROR);
                }
            }
            u8.A8f(A03, A022, hashMap, null, message, stringWriter2, th.getClass().getSimpleName());
        }
    }
}
