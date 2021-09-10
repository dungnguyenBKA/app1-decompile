package com.facebook.ads.redexgen.X;

import android.util.Log;
import androidx.annotation.Nullable;
import com.facebook.ads.AdError;
import com.facebook.ads.CacheFlag;
import com.facebook.ads.InterstitialAdExtendedListener;
import com.facebook.ads.internal.protocol.AdErrorType;
import com.facebook.ads.internal.protocol.AdPlacementType;
import java.util.Arrays;
import java.util.EnumSet;

/* renamed from: com.facebook.ads.redexgen.X.Sa  reason: case insensitive filesystem */
public final class C0805Sa implements AbstractC01681u {
    public static byte[] A07;
    public static final String A08 = C0805Sa.class.getSimpleName();
    public long A00 = -1;
    public F5 A01;
    public boolean A02;
    public boolean A03;
    public final XJ A04;
    public final InterstitialAdExtendedListener A05;
    public final C01691v A06;

    public static String A05(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A07, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 110);
        }
        return new String(copyOfRange);
    }

    public static void A06() {
        A07 = new byte[]{-59, -14, -92, -27, -24, -92, -16, -13, -27, -24, -92, -19, -9, -92, -27, -16, -10, -23, -27, -24, -3, -92, -19, -14, -92, -12, -10, -13, -21, -10, -23, -9, -9, -78, -92, -35, -13, -7, -92, -9, -20, -13, -7, -16, -24, -92, -5, -27, -19, -8, -92, -22, -13, -10, -92, -27, -24, -48, -13, -27, -24, -23, -24, -84, -83, -92, -8, -13, -92, -26, -23, -92, -25, -27, -16, -16, -23, -24, -4, 33, 39, 24, 37, 38, 39, 28, 39, 28, 20, 31, -45, 31, 34, 20, 23, -45, 22, 20, 31, 31, 24, 23, -45, 42, 27, 28, 31, 24, -45, 38, 27, 34, 42, 28, 33, 26, -45, 28, 33, 39, 24, 37, 38, 39, 28, 39, 28, 20, 31, -31, 13, 28, 21};
    }

    static {
        A06();
    }

    public C0805Sa(C01691v r3, AnonymousClass22 r4, String str) {
        this.A06 = r3;
        this.A04 = r3.A05();
        this.A05 = new C0814Sj(str, r4, this);
    }

    public final long A09() {
        F5 f5 = this.A01;
        if (f5 != null) {
            return f5.A0F();
        }
        return -1;
    }

    public final void A0A() {
        F5 f5 = this.A01;
        if (f5 != null) {
            f5.A0R(new SZ(this));
            this.A01.A0W(true);
            this.A01 = null;
            this.A03 = false;
            this.A02 = false;
        }
    }

    /* JADX INFO: Multiple debug info for r9v0 'this'  com.facebook.ads.redexgen.X.Sa: [D('metrics' android.util.DisplayMetrics), D('error' com.facebook.ads.internal.protocol.AdErrorType)] */
    public final void A0B(@Nullable EnumSet<CacheFlag> enumSet, @Nullable String str) {
        this.A00 = System.currentTimeMillis();
        if (!this.A03 && this.A01 != null) {
            Log.w(A08, A05(0, 78, 22));
        }
        this.A03 = false;
        if (!this.A02 || J4.A0f(this.A04)) {
            F5 f5 = this.A01;
            if (f5 != null) {
                f5.A0R(new SW(this));
                this.A01.A0L();
                this.A01 = null;
            }
            C01601m r2 = new C01601m(this.A06.A09(), C0595Jt.A01(this.A04.getResources().getDisplayMetrics()), AdPlacementType.INTERSTITIAL, EnumC0592Jq.A08, 1, enumSet);
            r2.A05(this.A06.A07());
            r2.A06(this.A06.A08());
            r2.A03(this.A06.A03());
            this.A01 = new F5(this.A04, r2);
            this.A01.A0R(new SY(this));
            this.A01.A0U(str);
            return;
        }
        this.A04.A04().A8V(A05(130, 3, 62), C03228e.A0B, new C03238f(A05(78, 52, 69)));
        AdErrorType adErrorType = AdErrorType.LOAD_CALLED_WHILE_SHOWING_AD;
        this.A04.A0A().A2d(LZ.A01(this.A00), adErrorType.getErrorCode(), adErrorType.getDefaultErrorMessage());
        this.A05.onError(this.A06.A01(), new AdError(adErrorType.getErrorCode(), adErrorType.getDefaultErrorMessage()));
    }

    public final boolean A0C() {
        F5 f5 = this.A01;
        return f5 == null || f5.A0X();
    }

    public final boolean A0D() {
        return this.A03;
    }

    public final boolean A0E() {
        AdError adError = AdError.SHOW_CALLED_BEFORE_LOAD_ERROR;
        if (!this.A03) {
            this.A04.A0A().A2d(LZ.A01(this.A00), adError.getErrorCode(), adError.getErrorMessage());
            this.A05.onError(this.A06.A01(), adError);
            return false;
        }
        F5 f5 = this.A01;
        if (f5 == null) {
            this.A04.A04().A8V(A05(130, 3, 62), C03228e.A0H, new C03238f(AdErrorType.INTERSTITIAL_CONTROLLER_IS_NULL.getDefaultErrorMessage()));
            this.A04.A0A().A2d(LZ.A01(this.A00), adError.getErrorCode(), adError.getErrorMessage());
            this.A05.onError(this.A06.A01(), adError);
            return false;
        }
        f5.A0K();
        this.A02 = true;
        this.A03 = false;
        return true;
    }
}
