package com.facebook.ads.redexgen.X;

import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import java.util.HashMap;

/* renamed from: com.facebook.ads.redexgen.X.Ny  reason: case insensitive filesystem */
public final class C0700Ny {
    public static String[] A00;

    static {
        A01();
    }

    public static void A01() {
        A00 = new String[]{"zHQaRI8Z04iZfuq60cOZ3MtOUQtnyLXk", "Py81lTfXTPvOohagzwztlFMwKgIeaa04", "ZBx", "ff4Sljy7OS0rEQC0yVPpTgSrr8dBXGgO", "WJ7E7dTZMlxiqC9ofw7stZL7dYzOgEyn", "lEp0yqe8iFuZgqtiF5MEL7dQIxoaDf7o", "1LQBU", "K3MGC9Pem9CSlPJADsZARPOkTW1wXgVW"};
    }

    /* JADX INFO: Multiple debug info for r11v0 com.facebook.ads.redexgen.X.O1: [D('layout' com.facebook.ads.redexgen.X.Nx), D('adInfo' com.facebook.ads.redexgen.X.19), D('isInLandscape' boolean)] */
    public static AbstractC0699Nx A00(O1 o1, @Nullable Bundle bundle, boolean z) {
        AbstractC0699Nx yk;
        boolean z2;
        AnonymousClass19 A0N = o1.A04().A0N();
        double A002 = (double) C0698Nw.A00(A0N);
        boolean renderFullscreen = o1.A04().A0N().A0N();
        boolean A05 = C0698Nw.A05(o1.A00(), o1.A01(), A002);
        AbstractC01270f A003 = C01280g.A00(o1.A05(), o1.A06(), "", Uri.parse(o1.A04().A0N().A0G().A04()), new HashMap());
        if (renderFullscreen && (A003 instanceof C0484Ff)) {
            yk = new YV(o1);
        } else if (!TextUtils.isEmpty(A0N.A0E().A08())) {
            yk = new C03559m(o1);
        } else if (TextUtils.isEmpty(A0N.A0E().A08()) && J4.A1b(o1.A05())) {
            yk = new C03569n(o1, A05);
        } else if (A05) {
            if (o1.A00() == 2) {
                z2 = true;
            } else {
                z2 = false;
            }
            yk = new C0969Yl(o1, z2);
        } else {
            yk = new C0968Yk(o1, C0698Nw.A03(A002));
        }
        if (z) {
            String A0T = o1.A04().A0T();
            if (A00[2].length() != 3) {
                throw new RuntimeException();
            }
            String[] strArr = A00;
            strArr[5] = "IYiemLW0pAZJelR9U10I0UE8BphOsSCr";
            strArr[3] = "HZnaFTaa8UnZev8t8IWfBJ4wHjAxjheL";
            yk.A0Z(A0N, A0T, A002, bundle);
        }
        return yk;
    }
}
