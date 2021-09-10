package com.facebook.ads.redexgen.X;

import android.os.Looper;
import android.os.SystemClock;
import androidx.annotation.Nullable;
import java.io.IOException;
import java.util.concurrent.ExecutorService;

/* renamed from: com.facebook.ads.redexgen.X.bN  reason: case insensitive filesystem */
public final class C1092bN implements AbstractC0528Ha {
    public static String[] A03;
    public HU<? extends HV> A00;
    public IOException A01;
    public final ExecutorService A02;

    static {
        A04();
    }

    public static void A04() {
        A03 = new String[]{"zA1HDLVhPd9PsL9PenCbpcrAKXxlN0d6", "FLS1DqH1RbizqOpj", "1z8O9NEtb5xyjYGA", "8w8GUSv0BTEQmaLhHrYTkFjQIFXWxu0p", "o1jGjvwpoOOHSDmJh0w1BZ4ZQReO8O7V", "", "IXAYHKYtOagUrLCRc2OBPi2ErH2JE5Q2", "ufrZt7t49gDVq6vRzV1VlqPqnp3Kfu3W"};
    }

    public C1092bN(String str) {
        this.A02 = C0556Ic.A0T(str);
    }

    public final <T extends HV> long A05(T loadable, HT<T> ht, int i) {
        boolean z;
        Looper myLooper = Looper.myLooper();
        if (myLooper != null) {
            z = true;
        } else {
            z = false;
        }
        C0551Hx.A04(z);
        this.A01 = null;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        new HU(this, myLooper, loadable, ht, i, elapsedRealtime).A06(0);
        return elapsedRealtime;
    }

    public final void A06() {
        this.A00.A07(false);
    }

    public final void A07(int i) throws IOException {
        IOException iOException = this.A01;
        if (iOException == null) {
            HU<? extends HV> hu = this.A00;
            if (hu == null) {
                return;
            }
            if (A03[0].charAt(1) != 'f') {
                String[] strArr = A03;
                strArr[2] = "ShO16ogjgPVIHMzl";
                strArr[1] = "8gZONBnlwtDMou1V";
                if (i == Integer.MIN_VALUE) {
                    i = hu.A03;
                }
                hu.A05(i);
                return;
            }
            throw new RuntimeException();
        }
        throw iOException;
    }

    public final void A08(@Nullable HW hw) {
        HU<? extends HV> hu = this.A00;
        if (hu != null) {
            hu.A07(true);
        }
        if (hw != null) {
            this.A02.execute(new HX(hw));
        }
        this.A02.shutdown();
    }

    public final boolean A09() {
        return this.A00 != null;
    }
}
