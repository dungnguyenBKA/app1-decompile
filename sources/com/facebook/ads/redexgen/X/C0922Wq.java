package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import android.telephony.CellInfo;
import android.telephony.CellInfoCdma;
import android.telephony.CellInfoGsm;
import android.telephony.CellInfoLte;
import android.telephony.CellInfoWcdma;
import android.telephony.TelephonyManager;
import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.Wq  reason: case insensitive filesystem */
public final class C0922Wq extends AnonymousClass6V {
    public static byte[] A01;
    public final TelephonyManager A00;

    static {
        A05();
    }

    public static String A04(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 60);
        }
        return new String(copyOfRange);
    }

    public static void A05() {
        A01 = new byte[]{15, 7, 14, 13, 4};
    }

    public C0922Wq(Context context, C02715v r5) {
        super(context, r5);
        this.A00 = (TelephonyManager) context.getSystemService(A04(0, 5, 99));
    }

    public static int A01(CellInfo cellInfo) {
        if (cellInfo == null) {
            throw new NullPointerException();
        } else if (Build.VERSION.SDK_INT < 18) {
            throw new UnsupportedOperationException();
        } else if (cellInfo instanceof CellInfoCdma) {
            return ((CellInfoCdma) cellInfo).getCellSignalStrength().getLevel();
        } else {
            if (cellInfo instanceof CellInfoGsm) {
                return ((CellInfoGsm) cellInfo).getCellSignalStrength().getLevel();
            }
            if (cellInfo instanceof CellInfoLte) {
                return ((CellInfoLte) cellInfo).getCellSignalStrength().getLevel();
            }
            if (cellInfo instanceof CellInfoWcdma) {
                return ((CellInfoWcdma) cellInfo).getCellSignalStrength().getLevel();
            }
            throw new UnsupportedOperationException(cellInfo.getClass().getSimpleName());
        }
    }

    public final AbstractC02806e A0H() {
        return new C0912Wg(this);
    }

    @SuppressLint({"MissingPermission", "CatchGeneralException"})
    public final AbstractC02806e A0I() {
        return new C0913Wh(this);
    }

    public final AbstractC02806e A0J() {
        return new C0917Wl(this);
    }

    public final AbstractC02806e A0K() {
        return new C0918Wm(this);
    }

    public final AbstractC02806e A0L() {
        return new C0916Wk(this);
    }

    public final AbstractC02806e A0M() {
        return new C0915Wj(this);
    }

    public final AbstractC02806e A0N() {
        return new C0921Wp(this);
    }

    public final AbstractC02806e A0O() {
        return new C0909Wd(this);
    }

    public final AbstractC02806e A0P() {
        return new C0919Wn(this);
    }

    public final AbstractC02806e A0Q() {
        return new C0920Wo(this);
    }

    public final AbstractC02806e A0R() {
        return new C0910We(this);
    }

    public final AbstractC02806e A0S() {
        return new C0911Wf(this);
    }

    @SuppressLint({"MissingPermission", "CatchGeneralException"})
    public final AbstractC02806e A0T() {
        return new C0914Wi(this);
    }
}
