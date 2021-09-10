package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.SystemClock;
import java.util.HashMap;
import java.util.List;

/* renamed from: com.facebook.ads.redexgen.X.Vd  reason: case insensitive filesystem */
public final class C0883Vd extends AnonymousClass6V {
    public static PackageManager A00;
    public static String[] A01;

    static {
        A04();
    }

    public static void A04() {
        A01 = new String[]{"mMUsySdK", "G1dnExSQKLbMoTCo5d1h1U5A6G7ndhFt", "GiJYkTHpyeTaf3ywPcthUoX2rTVjWFCb", "0A5FUJ9kDHtL7zu8WVVZPRsd6iFGNBV", "Uxf0Oizk", "zpV62zjrrTP1cgdKU18BbBXv", "Pb6NlhKASELFsFyHLiNoj4ENeXMrfTQa", "RrSFtRYH4qZAbHiyxnUErsMfABxwLq"};
    }

    public C0883Vd(Context context, C02715v r3) {
        super(context, r3);
        A00 = context.getPackageManager();
    }

    public static /* synthetic */ PackageManager A01() {
        PackageManager packageManager = A00;
        if (A01[1].charAt(22) != 'k') {
            String[] strArr = A01;
            strArr[7] = "gjUVtXXuXbvsWPZLBaiwFqVTuNtnGy";
            strArr[3] = "aaBFOo2Y3N72goZoHRvUb35kO6Lzp1W";
            return packageManager;
        }
        throw new RuntimeException();
    }

    /* access modifiers changed from: private */
    @SuppressLint({"Nullable Dereference"})
    public AbstractC02956t A03(HashMap<String, C0882Vc> hashMap) {
        return new XA(SystemClock.elapsedRealtime(), A03(), hashMap, EnumC02946s.A0C);
    }

    public final AbstractC02806e A0H(List<C02796d> list) {
        return new C0881Vb(this, list);
    }
}
