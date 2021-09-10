package com.facebook.ads.redexgen.X;

import android.content.ContentResolver;
import android.content.Intent;
import android.provider.Settings;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.facebook.ads.AdError;
import com.facebook.ads.internal.util.activity.AdActivityIntent;
import com.facebook.proguard.annotations.DoNotStrip;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.util.Arrays;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;

public final class FU extends AbstractC0801Rw implements AbstractC01440w {
    public static byte[] A0D;
    public static String[] A0E;
    public long A00;
    public AnonymousClass12 A01;
    public AnonymousClass13 A02;
    public AnonymousClass16 A03;
    public XJ A04;
    public JJ A05;
    public KK A06;
    @Nullable
    @DoNotStrip
    public OS A07;
    public String A08;
    @Nullable
    public String A09;
    public String A0A;
    public final String A0B = UUID.randomUUID().toString();
    public final AtomicBoolean A0C = new AtomicBoolean();

    static {
        A08();
        A07();
    }

    public static String A03(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0D, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 126);
        }
        return new String(copyOfRange);
    }

    public static void A07() {
        A0D = new byte[]{56, 52, 54, 54, 48, 57, 48, 39, 58, 56, 48, 33, 48, 39, 10, 39, 58, 33, 52, 33, 60, 58, 59, 110, 97, 100, 104, 99, 121, 89, 98, 102, 104, 99, 7, 15, 14, 3, 11, 30, 3, 5, 4, 46, 11, 30, 11, 89, 69, 72, 74, 76, 68, 76, 71, 93, 96, 77, 12, 14, 25, 24, 25, 26, 21, 18, 25, 24, 51, 14, 21, 25, 18, 8, 29, 8, 21, 19, 18, 55, 25, 5, 85, 66, 86, 82, 66, 84, 83, 115, 78, 74, 66, 4, 19, 1, 23, 4, 18, 37, 19, 4, 0, 19, 4, 35, 36, 58, 104, Byte.MAX_VALUE, 109, 123, 104, 126, Byte.MAX_VALUE, 126, 76, 115, 126, Byte.MAX_VALUE, 117, 91, 126, 94, 123, 110, 123, 88, 111, 116, 126, 118, Byte.MAX_VALUE, 25, 14, 28, 10, 25, 15, 14, 15, 52, 29, 2, 15, 14, 4, 80, 75, 76, 84, 80, 64, 108, 65, Byte.MAX_VALUE, 96, 108, 126, 93, 112, 121, 108};
    }

    public static void A08() {
        A0E = new String[]{"YJVWhBFSVFKs7NrWmWULGh", "0GvTyPfIpVaCupDTXIuhVv", "vKmpQ0k2zgunQxdAFsx7Wlk6dmYtSCUc", "dqRYVPDeGy45RCRFCWIUPRHRtp9NBigI", "NSweCua6lZ8ChPFZ3cKnaOBscLcsrWLc", "HenZyTRrHhMHTWT00jKprDJGPW9d4C4V", "lvvcgtkpn6JHhS0LrJ19j3FN0lJsZZOv", "GmBDkEWrzwPugE8SLtTHysECIxUFQGpg"};
    }

    private void A05() {
        AnonymousClass2K A002 = AnonymousClass2K.A00(this.A04);
        AnonymousClass13 r1 = this.A02;
        A002.A07(r1, r1.A01());
    }

    private void A06() {
        if (this.A02 != null) {
            try {
                AnonymousClass2K.A00(this.A04).A06(this.A02);
            } catch (Exception unused) {
            }
        }
    }

    private void A09(Intent intent) {
        int i = super.A00;
        String A032 = A03(58, 24, 2);
        if (i != -1) {
            ContentResolver contentResolver = this.A04.getContentResolver();
            if (A0E[3].charAt(29) != 'i') {
                throw new RuntimeException();
            }
            String[] strArr = A0E;
            strArr[7] = "ryaiaZaF8EzuUPZd67FeoIG9jUALGHZG";
            strArr[6] = "XITZtpYy2wf6QHmOozCOnY6Xlkm3ca51";
            if (Settings.System.getInt(contentResolver, A03(1, 22, 43), 0) != 1) {
                int i2 = super.A00;
                if (A0E[2].charAt(2) != 'm') {
                    throw new RuntimeException();
                }
                String[] strArr2 = A0E;
                strArr2[1] = "mo2n49jFbf8CHvb7nubztA";
                strArr2[0] = "3h0LYrxRFByrgEG7Z48zJG";
                intent.putExtra(A032, i2);
                return;
            }
        }
        if (!J4.A0e(this.A04)) {
            intent.putExtra(A032, 6);
        }
    }

    private void A0A(boolean z) {
        if (this.A06 == KK.A0B) {
            A0C(z);
            return;
        }
        KK kk = this.A06;
        String[] strArr = A0E;
        if (strArr[1].length() != strArr[0].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0E;
        strArr2[4] = "1yOiFacRiwJanRzqDJ6A5hJ77lYfziAe";
        strArr2[5] = "McEelBumOV7dKb1zb6BdvUT5HG6VvrgI";
        if (kk == KK.A0A) {
            A0B(z);
        } else {
            A0C(z);
        }
    }

    /* JADX INFO: Multiple debug info for r0v8 com.facebook.ads.redexgen.X.JJ: [D('cacheManager' com.facebook.ads.redexgen.X.7D), D('funnelLoggingHandler' com.facebook.ads.redexgen.X.JJ)] */
    private void A0B(boolean z) {
        C0796Rr rr = new C0796Rr(this, this);
        AnonymousClass7D r5 = new AnonymousClass7D(this.A04);
        C01531f r3 = new C01531f(this, this.A03, A03(133, 14, 21), r5);
        if (r3.A09()) {
            r5.A0Z(new JJ(this.A03.A0T(), this.A04.A06()));
            r3.A08();
            return;
        }
        C01581k.A03(this.A04, this.A03, z, rr);
    }

    private void A0C(boolean z) {
        AnonymousClass7D r3 = new AnonymousClass7D(this.A04);
        r3.A0Z(this.A05);
        AnonymousClass16 r4 = this.A03;
        String A032 = A03(133, 14, 21);
        C01531f r1 = new C01531f(this, r4, A032, r3);
        if (r1.A09()) {
            r1.A08();
            return;
        }
        S5 s5 = (S5) this.A03;
        if (TextUtils.isEmpty(s5.A0N().A0E().A08())) {
            this.A01.ABY(this, AdError.INTERNAL_ERROR);
            return;
        }
        C01591l.A02(this.A04, r3, s5);
        r3.A0S(new C0481Fc(this, z, s5.A0m(), s5, this), new AnonymousClass76(s5.A0Y(), A032));
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0801Rw
    public final int A0D() {
        AnonymousClass16 r0 = this.A03;
        if (r0 != null) {
            return r0.A0K();
        }
        String[] strArr = A0E;
        if (strArr[4].charAt(5) != strArr[5].charAt(5)) {
            A0E[3] = "zy8kAWNFspHhc9OUOOhBHMIK4AaCMilm";
            return -1;
        }
        throw new RuntimeException();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0801Rw
    public final boolean A0E() {
        if (!this.A0C.get()) {
            return false;
        }
        String A032 = PA.A03(super.A01, this.A0B, this.A08);
        this.A03.A0e(super.A01);
        this.A03.A0h(A032);
        AdActivityIntent A042 = C0616Kp.A04(this.A04);
        A042.putExtra(A03(155, 8, 119), this.A06);
        A042.putExtra(A03(FacebookMediationAdapter.ERROR_MAPPING_NATIVE_ASSETS, 25, 100), this.A03);
        A042.putExtra(A03(147, 8, 91), this.A0B);
        if (A032 != null) {
            A042.putExtra(A03(93, 15, 8), A032);
        }
        A042.putExtra(A03(47, 11, 87), this.A0A);
        A042.putExtra(A03(82, 11, 89), this.A00);
        String str = this.A09;
        if (str != null) {
            A042.putExtra(A03(34, 13, 20), str);
        }
        A09(A042);
        A042.setFlags(A042.getFlags() | 268435456);
        A042.putExtra(A03(23, 11, 115), this.A03.A0T());
        C0619Ks.A04(this.A04);
        C0616Kp.A0A(this.A04, A042);
        return true;
    }

    public final void A0F(XJ xj, AnonymousClass12 r7, C01611n r8, boolean z, @Nullable String str, @Nullable String str2) {
        String A032;
        this.A0C.set(false);
        this.A04 = xj;
        this.A01 = r7;
        this.A0A = r8.A02();
        this.A00 = r8.A00();
        this.A09 = str2;
        String str3 = this.A0A;
        if (str3 != null) {
            A032 = str3.split(A03(0, 1, 25))[0];
        } else {
            A032 = A03(0, 0, 20);
        }
        this.A08 = A032;
        this.A03 = S5.A02(r8.A03(), this.A04);
        this.A03.A0f(str);
        this.A03.A0d(r8.A01().A06());
        this.A05 = new JJ(this.A03.A0T(), xj.A06());
        if (this.A03.A0m()) {
            this.A06 = KK.A04;
            if (this.A03.A0k()) {
                AnonymousClass0R A0A2 = this.A04.A0A();
                EnumC01240c r3 = EnumC01240c.A04;
                String[] strArr = A0E;
                if (strArr[7].charAt(31) != strArr[6].charAt(31)) {
                    String[] strArr2 = A0E;
                    strArr2[7] = "T6UzDEu82kzY1KsvV3iHB7OkWnIxnMBs";
                    strArr2[6] = "PWXGgNcAlDXPEXP1mMx0dPQCA8p68UI5";
                    A0A2.ADu(r3);
                }
                throw new RuntimeException();
            }
            this.A04.A0A().ADu(EnumC01240c.A06);
        } else {
            int A0J = this.A03.A0J();
            if (A0J == 0) {
                this.A06 = KK.A0B;
                XJ xj2 = this.A04;
                String[] strArr3 = A0E;
                if (strArr3[4].charAt(5) != strArr3[5].charAt(5)) {
                    String[] strArr4 = A0E;
                    strArr4[4] = "sE7A2oUzbi1vVIMuEE2CogviWDEosGc5";
                    strArr4[5] = "5NgD8lzbPLe7uQJdX4ST7JevLzoIctPR";
                    xj2.A0A().ADu(EnumC01240c.A09);
                }
                throw new RuntimeException();
            } else if (A0J == 1) {
                this.A06 = KK.A0A;
                this.A04.A0A().ADu(EnumC01240c.A08);
            }
        }
        this.A02 = new AnonymousClass13(this.A0B, this, r7);
        A05();
        A0A(z);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC01350n
    public final String A5x() {
        return this.A03.A0T();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC01440w
    public final void A9g() {
        this.A0C.set(true);
        this.A01.ABV(this);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC01440w
    public final void A9h() {
        this.A01.ABY(this, AdError.CACHE_ERROR);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC01350n
    public final void onDestroy() {
        A06();
    }
}
