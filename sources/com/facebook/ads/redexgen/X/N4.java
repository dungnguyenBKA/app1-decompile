package com.facebook.ads.redexgen.X;

import android.view.View;

public class N4 implements View.OnClickListener {
    public static String[] A02;
    public final /* synthetic */ C0664Mn A00;
    public final /* synthetic */ C1037aU A01;

    static {
        A00();
    }

    public static void A00() {
        A02 = new String[]{"TIunxDtIhaUNWzp4pt", "P9jotymXcalp6QY0mceKgA2PKmpL9MmY", "D7hcdAR4gL6eiDwh3neEemk2oNa5HBXr", "yvexzu4B1k7dNWe8D7Or2RByN379E6p0", "Pqli68R1jGGut3mXcbdL9aII4ZRM", "ATTETBfRTuy9XX9zcQNEfkNPOGv1roB9", "U61xFgZvYwebvbfIgBzckGL9tuihnAsk", "Y5vLZmHyGlb7iKoGDQtiStGzi5AFA8c4"};
    }

    public N4(C1037aU aUVar, C0664Mn mn) {
        this.A01 = aUVar;
        this.A00 = mn;
    }

    public final void onClick(View view) {
        if (!KT.A02(this)) {
            try {
                this.A00.A01();
                this.A01.A0A.AAp(AnonymousClass29.A05);
            } catch (Throwable th) {
                KT.A00(th, this);
                String[] strArr = A02;
                if (strArr[3].charAt(16) != strArr[7].charAt(16)) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A02;
                strArr2[5] = "30YalsquWEYpd1gcKbt6iXjPGudeG4qT";
                strArr2[1] = "9GHMqcINuHB0R6Mj0oiZfCiPilEGiYS9";
            }
        }
    }
}
