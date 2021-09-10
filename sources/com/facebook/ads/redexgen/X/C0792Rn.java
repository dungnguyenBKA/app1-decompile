package com.facebook.ads.redexgen.X;

import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.util.Log;
import android.view.WindowManager;
import androidx.annotation.Nullable;
import com.facebook.ads.AdError;
import com.facebook.ads.CacheFlag;
import com.facebook.ads.RewardData;
import com.facebook.ads.internal.protocol.AdPlacementType;
import com.facebook.ads.internal.util.activity.AdActivityIntent;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.util.Arrays;
import java.util.EnumSet;
import java.util.UUID;
import org.apache.http.HttpStatus;

/* renamed from: com.facebook.ads.redexgen.X.Rn  reason: case insensitive filesystem */
public final class C0792Rn implements AbstractC01350n, AbstractC01481a {
    public static byte[] A0B;
    public static String[] A0C;
    public long A00;
    public RewardData A01;
    public AbstractC01450x A02;
    public C01460y A03;
    public S9 A04;
    public XJ A05;
    public String A06;
    @Nullable
    public String A07;
    public String A08;
    public boolean A09;
    public final String A0A = UUID.randomUUID().toString();

    static {
        A06();
        A05();
    }

    public static String A03(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0B, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 8);
        }
        return new String(copyOfRange);
    }

    public static void A05() {
        byte[] bArr = {78, 108, 99, 42, 121, 45, 126, 121, 108, Byte.MAX_VALUE, 121, 45, 76, 120, 105, 100, 104, 99, 110, 104, 67, 104, 121, 122, 98, Byte.MAX_VALUE, 102, 76, 110, 121, 100, 123, 100, 121, 116, 35, 45, 64, 108, 102, 104, 45, 126, 120, Byte.MAX_VALUE, 104, 45, 121, 101, 108, 121, 45, 100, 121, 42, 126, 45, 100, 99, 45, 116, 98, 120, Byte.MAX_VALUE, 45, 76, 99, 105, Byte.MAX_VALUE, 98, 100, 105, 64, 108, 99, 100, 107, 104, 126, 121, 35, 117, 96, 97, 45, 107, 100, 97, 104, 35, 73, 77, 78, 122, 107, 102, 106, 97, 108, 106, 65, 106, 123, 120, 96, 125, 100, 68, 37, 42, 27, 37, 39, 48, 45, 50, 45, 48, 61, 93, 82, 87, 91, 80, 74, 106, 81, 85, 91, 80, 17, 25, 24, 21, 29, 8, 21, 19, 18, 56, 29, 8, 29, 52, 40, 37, 39, 33, 41, 33, 42, 48, 13, 32, 4, 6, 17, 16, 17, 18, 29, 26, 17, 16, 59, 6, 29, 17, 26, 0, 21, 0, 29, 27, 26, 63, 17, 13, 117, 98, 118, 114, 98, 116, 115, 83, 110, 106, 98, 29, 6, 1, 25, 29, 13, 33, 12, 38, 57, 53, 39, 4, 41, 32, 53, 80, 78, 73, 67, 72, 80};
        if (A0C[1].charAt(29) != 'g') {
            String[] strArr = A0C;
            strArr[4] = "6qgGoSyjmuhDFT94hunOHzgd3UUS7LMQ";
            strArr[0] = "q1PjRK7gg6WFD8n4pAFO870HLaNMi7ir";
            A0B = bArr;
            return;
        }
        throw new RuntimeException();
    }

    public static void A06() {
        A0C = new String[]{"PgLDGrk3t3a26fQCrT3IpIrRB5PMNBKm", "uls9HIPpriPjzjIXJVTR7HWmS4IMGzWu", "f2YRmtND2fanruA3kJYGXgN9aGwgjawI", "EZdssni07U2TMPMup9RmA63S0tAhTBNo", "xilKUxawUAlWzUTJOedtCKHAHwNBDRxA", "SxIuirRfQS0L7ik0LzQXw", "dF8CYh", "NQmOIXzIEfwTEqDrM9Z7TuMEUTKSiMNX"};
    }

    private int A00() {
        int rotation = ((WindowManager) this.A05.getSystemService(A03(HttpStatus.SC_RESET_CONTENT, 6, 47))).getDefaultDisplay().getRotation();
        EnumC0679Nd adOrientation = A02();
        if (adOrientation == EnumC0679Nd.A06) {
            return -1;
        }
        if (adOrientation == EnumC0679Nd.A04) {
            if (rotation != 2 && rotation != 3) {
                return 0;
            }
            if (A0C[1].charAt(29) != 'g') {
                String[] strArr = A0C;
                strArr[3] = "WCZdwi0h9oyTFk4ywD5LtkOxTOpQ29Yc";
                strArr[7] = "4yy96Y2PoNFTEE84mLwUlYETryPZgGhE";
                return 8;
            }
            throw new RuntimeException();
        } else if (rotation != 2) {
            return 1;
        } else {
            return 9;
        }
    }

    private final KK A01() {
        return this.A04.A0C();
    }

    private EnumC0679Nd A02() {
        return this.A04.A0D();
    }

    private void A04() {
        this.A09 = true;
    }

    private void A07(Intent intent) {
        S9 s9 = this.A04;
        RewardData rewardData = this.A01;
        s9.A0G(intent, rewardData, PA.A03(rewardData, this.A0A, this.A06));
    }

    private final void A08(XJ xj, AbstractC01450x r3, C01611n r4, EnumSet<CacheFlag> enumSet, @Nullable String str) {
        this.A04 = new S9(xj, r4, this, str);
        this.A04.A0H(xj, enumSet);
    }

    private void A09(KK kk) {
        if (kk.equals(KK.A06)) {
            this.A05.A0A().ADu(EnumC01240c.A03);
        } else if (kk.equals(KK.A07)) {
            this.A05.A0A().ADu(EnumC01240c.A07);
        } else if (kk.equals(KK.A09)) {
            this.A05.A0A().ADu(EnumC01240c.A09);
        } else if (kk.equals(KK.A08)) {
            this.A05.A0A().ADu(EnumC01240c.A08);
        } else if (!kk.equals(KK.A03)) {
        } else {
            if (this.A04.A0J()) {
                AnonymousClass0R A0A2 = this.A05.A0A();
                String[] strArr = A0C;
                if (strArr[5].length() != strArr[6].length()) {
                    A0C[2] = "SZ1DhKHJxqFOmux8c4F7iNiG5ZFRRvjL";
                    A0A2.ADu(EnumC01240c.A04);
                    return;
                }
                throw new RuntimeException();
            } else if (this.A04.A0I()) {
                this.A05.A0A().ADu(EnumC01240c.A06);
            } else {
                this.A05.A0A().ADu(EnumC01240c.A05);
            }
        }
    }

    public final void A0A(XJ xj, AbstractC01450x r6, C01611n r7, EnumSet<CacheFlag> enumSet, @Nullable String str, @Nullable String str2, @Nullable RewardData rewardData) {
        String A032;
        this.A05 = xj;
        this.A02 = r6;
        this.A08 = r7.A02();
        String str3 = this.A08;
        if (str3 != null) {
            A032 = str3.split(A03(FacebookMediationAdapter.ERROR_NULL_CONTEXT, 1, 19))[0];
        } else {
            A032 = A03(0, 0, 5);
        }
        this.A06 = A032;
        this.A00 = r7.A00();
        this.A07 = str2;
        this.A01 = rewardData;
        A08(xj, r6, r7, enumSet, str);
    }

    public final boolean A0B() {
        if (!this.A09) {
            AbstractC01450x r1 = this.A02;
            if (r1 != null) {
                r1.AAR(this, AdError.SHOW_CALLED_BEFORE_LOAD_ERROR);
            }
            return false;
        }
        AdActivityIntent A042 = C0616Kp.A04(this.A05);
        A042.putExtra(A03(154, 24, 124), A00());
        A042.putExtra(A03(189, 8, 96), this.A0A);
        A042.putExtra(A03(143, 11, 76), this.A08);
        A042.putExtra(A03(178, 11, 15), this.A00);
        KK A012 = A01();
        A09(A012);
        A042.putExtra(A03(197, 8, 88), A012);
        String str = this.A07;
        if (str != null) {
            A042.putExtra(A03(130, 13, 116), str);
        }
        A07(A042);
        A042.addFlags(268435456);
        A042.putExtra(A03(119, 11, 54), this.A04.A0E());
        try {
            C0619Ks.A04(this.A05);
            C0616Kp.A0A(this.A05, A042);
            return true;
        } catch (ActivityNotFoundException e) {
            this.A05.A04().A8V(A03(FacebookMediationAdapter.ERROR_MAPPING_NATIVE_ASSETS, 11, 76), C03228e.A05, new C03238f(e));
            Log.e(A03(90, 17, 7), A03(0, 90, 5), e);
            return false;
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC01350n
    @Nullable
    public final String A5x() {
        return this.A04.A0E();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC01350n
    public final AdPlacementType A6x() {
        return AdPlacementType.INTERSTITIAL;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC01481a
    public final void A9J(AdError adError) {
        AbstractC01450x r0 = this.A02;
        if (r0 != null) {
            r0.AAR(this, adError);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC01481a
    public final void A9K() {
        A04();
        this.A02.AAQ(this);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC01481a
    public final void ACw() {
        this.A03 = new C01460y(this.A05, this.A0A, this, this.A02);
        this.A03.A03();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC01481a
    public final void AEP() {
        C01460y r0 = this.A03;
        if (r0 != null) {
            r0.A04();
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC01350n
    public final void onDestroy() {
        S9 s9 = this.A04;
        if (s9 != null) {
            s9.A0F();
        }
    }
}
