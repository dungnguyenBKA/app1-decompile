package com.facebook.ads.redexgen.X;

import android.util.DisplayMetrics;
import android.view.View;
import android.widget.RelativeLayout;
import com.facebook.ads.AdSize;
import java.util.HashMap;
import java.util.Map;

/* renamed from: com.facebook.ads.redexgen.X.Jt  reason: case insensitive filesystem */
public final class C0595Jt {
    public static String[] A00;
    public static final Map<EnumC0592Jq, EnumC0593Jr> A01 = new HashMap();

    public static void A03() {
        A00 = new String[]{"aUzGFJWT9JUej7dfFIRBXB2Am5SKhp0L", "Lg", "z6uS01sVSQZKuOHXwfbCrotAFRq98Mhk", "s6upF4yW2rVlVN4uyEeLi2N0Ec6ZN78T", "eH22UAfKgSlQJvnKnPkmgNwQr7bKVvHo", "ohZIQy", "XInXF4zeGGrmw79hhTd", "dMAEap8Em2lp2DdLAyvSKUklRkWZ0JXT"};
    }

    static {
        A03();
        A01.put(EnumC0592Jq.A09, EnumC0593Jr.A08);
        A01.put(EnumC0592Jq.A07, EnumC0593Jr.A0A);
        A01.put(EnumC0592Jq.A06, EnumC0593Jr.A09);
    }

    public static AdSize A00(EnumC0593Jr jr) {
        for (Map.Entry<EnumC0592Jq, EnumC0593Jr> entry : A01.entrySet()) {
            if (entry.getValue() == jr) {
                EnumC0592Jq key = entry.getKey();
                if (A00[5].length() != 27) {
                    A00[2] = "sySRfG1wiaC9q3S7uTxa3ZVw3iXf1vjk";
                    return key.A06();
                }
                throw new RuntimeException();
            }
        }
        return AdSize.BANNER_320_50;
    }

    public static EnumC0593Jr A01(DisplayMetrics displayMetrics) {
        int i = (int) (((float) displayMetrics.widthPixels) / displayMetrics.density);
        int i2 = (int) (((float) displayMetrics.heightPixels) / displayMetrics.density);
        if (LC.A04(i, i2)) {
            return EnumC0593Jr.A0D;
        }
        if (i2 > i) {
            return EnumC0593Jr.A0F;
        }
        return EnumC0593Jr.A0C;
    }

    public static EnumC0593Jr A02(EnumC0592Jq jq) {
        EnumC0593Jr jr = A01.get(jq);
        if (jr == null) {
            return EnumC0593Jr.A0B;
        }
        return jr;
    }

    public static void A04(DisplayMetrics displayMetrics, View view, EnumC0592Jq jq) {
        int ceil;
        if (((int) (((float) displayMetrics.widthPixels) / displayMetrics.density)) >= jq.getWidth()) {
            ceil = displayMetrics.widthPixels;
        } else {
            ceil = (int) Math.ceil((double) (((float) jq.getWidth()) * displayMetrics.density));
        }
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(ceil, (int) Math.ceil((double) (((float) jq.getHeight()) * displayMetrics.density)));
        layoutParams.addRule(14, -1);
        view.setLayoutParams(layoutParams);
    }
}
