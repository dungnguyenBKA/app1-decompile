package com.facebook.ads.redexgen.X;

import android.icu.util.TimeZone;
import android.os.Build;

/* renamed from: com.facebook.ads.redexgen.X.Wt  reason: case insensitive filesystem */
public class C0925Wt implements AbstractC02806e {
    public static String[] A01;
    public final /* synthetic */ C0926Wu A00;

    static {
        A00();
    }

    public static void A00() {
        A01 = new String[]{"smnl8goxbtEXy2ari0oo94M5wBAsJ", "4jdGfKjJVtKongVqtnlXz1qpag9QmJcO", "6HhyQoH63eZiDTc8tIM8lg1a8XmlaMXL", "TRovmJ8dsKeWsGtAEtnO1NLs5DkGdItv", "EJDQOjfPW", "Fvhxx1JOY2tpNVIZJk2UFnorm88CMjoG", "Hr", "QB67UPOvQOrUPNaLWc8iYWX5dhIe7kRi"};
    }

    public C0925Wt(C0926Wu wu) {
        this.A00 = wu;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02806e
    public final AbstractC02956t A5F() {
        if (Build.VERSION.SDK_INT >= 24) {
            return this.A00.A09(TimeZone.getDefault().getDisplayName());
        }
        AbstractC02956t A08 = this.A00.A08(EnumC02916p.A05);
        String[] strArr = A01;
        if (strArr[5].charAt(2) != strArr[2].charAt(2)) {
            throw new RuntimeException();
        }
        A01[0] = "zHpdef4a8sETM0qy6DqDlJHNwIYZi";
        return A08;
    }
}
