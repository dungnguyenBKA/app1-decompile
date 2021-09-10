package com.facebook.ads.redexgen.X;

import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.ab  reason: case insensitive filesystem */
public class C1044ab implements AbstractC0662Ml {
    public static byte[] A01;
    public static String[] A02;
    public final /* synthetic */ AbstractC0660Mj A00;

    static {
        A02();
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 111);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{-29, -17, -19, -82, -26, -31, -29, -27, -30, -17, -17, -21, -82, -31, -28, -13, -82, -31, -28, -14, -27, -16, -17, -14, -12, -23, -18, -25, -82, -58, -55, -50, -55, -45, -56, -33, -63, -60, -33, -46, -59, -48, -49, -46, -44, -55, -50, -57, -33, -58, -52, -49, -41};
        String[] strArr = A02;
        if (strArr[4].length() != strArr[1].length()) {
            A02[7] = "41BFLxMtpa8zSeOoPh8lyezFWRN0z1Os";
            return;
        }
        throw new RuntimeException();
    }

    public static void A02() {
        A02 = new String[]{"nV", "0i4Wqrqqd8V", "SjjlSsHq4luZ", "UY2G1G5tdkkQRCLDawUW8PMELrtkam", "x8YzSsjyce", "sMLSYBAewXVAxhh2DbXf8YHA5QSbjC", "Z41BjwW", "WlPnbv1jMaDivlCQdRIz8mOz1GWjjHLQ"};
    }

    public C1044ab(AbstractC0660Mj mj) {
        this.A00 = mj;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0662Ml
    public final void A43() {
        if (this.A00.A06 != null) {
            this.A00.A06.A3t(A00(0, 53, 17));
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0662Ml
    public final void A44() {
        this.A00.A0L();
        if (this.A00.A07 != null) {
            this.A00.A07.ABR(true);
        }
        this.A00.A0A();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0662Ml
    public final void A7S() {
        if (this.A00.A03 == null) {
            A44();
            return;
        }
        AbstractC0660Mj.A01(this.A00);
        if (this.A00.A03.A02() == null) {
            AbstractC0660Mj mj = this.A00;
            if (A02[6].length() != 7) {
                throw new RuntimeException();
            }
            A02[7] = "M7aB9yPR9altU9X1FYnvgfaKEANBwcUB";
            mj.A0B();
        } else {
            AbstractC0660Mj mj2 = this.A00;
            mj2.A0D(mj2.A03.A02());
        }
        if (Build.VERSION.SDK_INT >= 16 && J4.A1T(this.A00.A04)) {
            this.A00.performAccessibilityAction(128, null);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0662Ml
    public final void A8G() {
        if (!TextUtils.isEmpty(AnonymousClass28.A0C(this.A00.A04.A00()))) {
            C0623Ky.A09(new C0623Ky(), this.A00.A04, Uri.parse(AnonymousClass28.A0C(this.A00.A04.A00())), this.A00.A08);
        }
        this.A00.A02.A05();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0662Ml
    public final void A8H() {
        this.A00.A0L();
        if (this.A00.A07 != null) {
            this.A00.A07.ABR(true);
        }
        if (!TextUtils.isEmpty(AnonymousClass28.A06(this.A00.A04.A00()))) {
            C0623Ky.A09(new C0623Ky(), this.A00.A04, Uri.parse(AnonymousClass28.A06(this.A00.A04.A00())), this.A00.A08);
        }
        this.A00.A02.A07();
        this.A00.A0A();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0662Ml
    public final void AAp(AnonymousClass29 r3) {
        AnonymousClass2B A04;
        AbstractC0660Mj.A00(this.A00);
        this.A00.A01 = r3;
        if (this.A00.A01 == AnonymousClass29.A03) {
            A04 = AnonymousClass28.A03(this.A00.A04.A00());
        } else {
            A04 = AnonymousClass28.A04(this.A00.A04.A00());
        }
        this.A00.A0D(A04);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0662Ml
    public final void AAy(AnonymousClass2B r3) {
        AbstractC0660Mj.A00(this.A00);
        this.A00.A02.A08(r3.A01());
        if (r3.A05().isEmpty()) {
            this.A00.A0C(r3);
        } else {
            this.A00.A0D(r3);
        }
    }
}
