package com.facebook.ads.redexgen.X;

import android.view.View;
import com.facebook.ads.AdError;
import java.util.Arrays;

public class SF implements AbstractC01430v {
    public static byte[] A02;
    public static String[] A03;
    public final /* synthetic */ FB A00;
    public final /* synthetic */ Runnable A01;

    static {
        A02();
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            byte b = (byte) ((copyOfRange[i4] - i3) - 16);
            if (A03[2].charAt(4) != 'y') {
                String[] strArr = A03;
                strArr[5] = "2VG06oAYTcRzKBDE7gWFCU36hzL5px1b";
                strArr[7] = "j1xG2z3v9jq0UO66H2WqYNbpklLAu6IG";
                copyOfRange[i4] = b;
            } else {
                throw new RuntimeException();
            }
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A02 = new byte[]{115, 111, 111, 114, 115, -92, -94, -95, -124, -93, -80, -80, -89, -76, 98, -85, -81, -78, -76, -89, -75, -75, -85, -79, -80, 98, -88, -85, -76, -89, -90, -118, -119, 93, 124, -119, -119, Byte.MIN_VALUE, -115, 103, -118, -126, -126, -124, -119, -126, 100, -120, -117, -115, Byte.MIN_VALUE, -114, -114, -124, -118, -119};
    }

    public static void A02() {
        A03 = new String[]{"7FIKHU9lgq27", "AgQqvAltXhi1bYF8zppFCZ", "CRAmwsbXNtyv0vmCJJ9qOPCwxUiND3E6", "ItQqdqoRYHMWKQzbVRTeHzNwEAi", "W2szVhKnaW", "HNVKE5hkEvipBMdeuLWXlSQ07SgK2Jmi", "9NOG2BA2dnlUEqMWgY53wMXC47FXKBrl", "EneshuO9jiHnlHF2bjWwp7WA0EKVaMOF"};
    }

    public SF(FB fb, Runnable runnable) {
        this.A00 = fb;
        this.A01 = runnable;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC01430v
    public final void A9a(C0791Rm rm) {
        this.A00.A00.A0A().A3l();
        this.A00.A07.A0B();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC01430v
    public final void A9b(C0791Rm rm, View view) {
        boolean z;
        RY A0F = this.A00.A00.A0A();
        if (rm == this.A00.A01) {
            z = true;
        } else {
            z = false;
        }
        A0F.A3k(z);
        if (rm == this.A00.A01) {
            this.A00.A0G().removeCallbacks(this.A01);
            AbstractC01350n r1 = this.A00.A02;
            FB fb = this.A00;
            fb.A02 = rm;
            ((SJ) fb).A00 = view;
            if (!fb.A0D) {
                this.A00.A07.A0E(rm);
                return;
            }
            this.A00.A07.A0D(view);
            this.A00.A0P(r1);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC01430v
    public final void A9c(C0791Rm rm, AdError adError) {
        boolean z;
        RY A0F = this.A00.A00.A0A();
        if (rm == this.A00.A01) {
            z = true;
        } else {
            z = false;
        }
        A0F.A3m(z, adError.getErrorCode());
        if (rm == this.A00.A01) {
            this.A00.A0G().removeCallbacks(this.A01);
            this.A00.A0P(rm);
            this.A00.A0O();
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC01430v
    public final void A9d(C0791Rm rm) {
        C0601Jz.A05(A00(31, 25, 11), A00(8, 23, 50), A00(0, 8, 46));
        this.A00.A00.A0A().A3n();
        this.A00.A07.A0C();
        this.A00.A0M();
    }
}
