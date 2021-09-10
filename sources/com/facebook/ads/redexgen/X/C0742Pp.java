package com.facebook.ads.redexgen.X;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;

/* renamed from: com.facebook.ads.redexgen.X.Pp  reason: case insensitive filesystem */
public class C0742Pp extends AnimatorListenerAdapter {
    public static String[] A01;
    public final /* synthetic */ C0544Hq A00;

    static {
        A00();
    }

    public static void A00() {
        A01 = new String[]{"3J5cDVad4mW9vkElMc3OsUS7r8EZlE39", "h6bRkPy553bCAy1amrHUM8RqxgIOW2o8", "fpksqhdo9EiL3TJLaFmG7oCu1r9K", "lJjW0qitu5NILdXsS3BRz5RQsDn5loSa", "jrjPtqo2TtT08iP8QxuH9QitSJIqaNJp", "hUMcZshotDkSaD7wdQ9kJfmyHpwJvjMA", "tSCKCWomP5vbOsQQ1Yiozev7D3nD5ATQ", "aWL5kyBMd9kZhCXXBXyyL0Q3N4I1ZWNc"};
    }

    public C0742Pp(C0544Hq hq) {
        this.A00 = hq;
    }

    public final void onAnimationCancel(Animator animator) {
        if (C0544Hq.A07(this.A00)) {
            View A002 = C0544Hq.A00(this.A00);
            String[] strArr = A01;
            if (strArr[7].charAt(14) != strArr[3].charAt(14)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A01;
            strArr2[1] = "5h3ewWtRejeXOmvUGpWApkn5USeyTQr7";
            strArr2[6] = "VmmYRwr0EoTUCeedPY4atWiJqM07FMep";
            C0632Lh.A0K(A002);
        }
        C0544Hq.A00(this.A00).setAlpha(0.0f);
        C0544Hq.A03(this.A00, EnumC0737Pk.A05);
        if (C0544Hq.A01(this.A00) != null) {
            C0544Hq.A01(this.A00).setListener(null);
            C0544Hq.A02(this.A00, null);
        }
    }

    public final void onAnimationEnd(Animator animator) {
        C0544Hq.A03(this.A00, EnumC0737Pk.A03);
        if (C0544Hq.A01(this.A00) != null) {
            C0544Hq.A01(this.A00).setListener(null);
            C0544Hq.A02(this.A00, null);
        }
    }
}
