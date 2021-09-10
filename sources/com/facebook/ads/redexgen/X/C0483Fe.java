package com.facebook.ads.redexgen.X;

import android.net.Uri;
import android.util.Log;
import java.util.Arrays;
import java.util.Map;

/* renamed from: com.facebook.ads.redexgen.X.Fe  reason: case insensitive filesystem */
public class C0483Fe extends AbstractC1023aG {
    public static byte[] A02;
    public final /* synthetic */ C0791Rm A00;
    public final /* synthetic */ C0797Rs A01;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 123);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A02 = new byte[]{21, 34, 34, 63, 34, 112, 53, 40, 53, 51, 37, 36, 57, 62, 55, 112, 49, 51, 36, 57, 63, 62, 17, 21, 22, 19};
    }

    public C0483Fe(C0791Rm rm, C0797Rs rs) {
        this.A00 = rm;
        this.A01 = rs;
    }

    @Override // com.facebook.ads.redexgen.X.NV
    public final void A9R() {
        this.A00.A08 = true;
        if (this.A00.A09) {
            this.A00.A06();
        }
    }

    @Override // com.facebook.ads.redexgen.X.NV, com.facebook.ads.redexgen.X.AbstractC1023aG
    public final void A9j(String str, Map<String, String> map) {
        this.A00.A02.A0A().A3a();
        Uri parse = Uri.parse(str);
        if (A00(22, 4, 12).equals(parse.getScheme()) && C01280g.A04(parse.getAuthority()) && this.A00.A00 != null) {
            this.A00.A00.A9a(this.A00);
        }
        AbstractC01270f A002 = C01280g.A00(this.A00.A02, this.A00.A03, this.A01.A5x(), parse, map);
        if (A002 != null) {
            try {
                this.A00.A02.A0A().A3X();
                A002.A0D();
            } catch (Exception e) {
                Log.e(C0791Rm.A0C, A00(0, 22, 43), e);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.NV, com.facebook.ads.redexgen.X.AbstractC1023aG
    public final void AAL() {
        boolean z;
        RY A0F = this.A00.A02.A0A();
        if (this.A00.A01 != null) {
            z = true;
        } else {
            z = false;
        }
        A0F.A3b(z);
        if (this.A00.A01 != null) {
            this.A00.A01.A03();
        }
    }

    @Override // com.facebook.ads.redexgen.X.NV, com.facebook.ads.redexgen.X.AbstractC1023aG
    public final void AB0() {
        this.A00.A02.A0A().A3d();
        this.A00.A01.A08();
    }

    @Override // com.facebook.ads.redexgen.X.NV
    public final void ACA() {
    }
}
