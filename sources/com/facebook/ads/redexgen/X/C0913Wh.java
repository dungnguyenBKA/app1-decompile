package com.facebook.ads.redexgen.X;

import android.os.Build;
import android.telephony.TelephonyManager;

/* renamed from: com.facebook.ads.redexgen.X.Wh  reason: case insensitive filesystem */
public class C0913Wh implements AbstractC02806e {
    public static String[] A01;
    public final /* synthetic */ C0922Wq A00;

    static {
        A00();
    }

    public static void A00() {
        A01 = new String[]{"fhgAKr3d26sPe206xi", "SjffeijJA1Vv6PcXWUgct", "EsQusZwl1jUwipz2lU1dtOeOynoqp4qu", "0VpWGFYwNM1shdn7oayU", "oGsU7X9gn8B3aKKKnK6Um4C", "3PuUzv37NfYax6hYz8jf", "w27NqvUy0J9VzwNZKDXUsnO8qh2oDxhJ", "FZXbTPmbge4RvKyxAzubgHD8Txvy8Otv"};
    }

    public C0913Wh(C0922Wq wq) {
        this.A00 = wq;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02806e
    public final AbstractC02956t A5F() {
        if (this.A00.A00 == null) {
            AbstractC02956t A08 = this.A00.A08(EnumC02916p.A07);
            if (A01[6].charAt(19) != 'U') {
                throw new RuntimeException();
            }
            A01[6] = "mdGsZgeczhjsROxHbS4UhtOI0ggMdB2A";
            return A08;
        } else if (Build.VERSION.SDK_INT >= 24) {
            C0922Wq wq = this.A00;
            TelephonyManager telephonyManager = wq.A00;
            String[] strArr = A01;
            if (strArr[3].length() != strArr[5].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A01;
            strArr2[1] = "gYbGBXsMnQLVbPxH35aVX";
            strArr2[4] = "c9uQZVFrEkdSbUXAtWNBNx9";
            return wq.A05(telephonyManager.getDataNetworkType());
        } else {
            C0922Wq wq2 = this.A00;
            String[] strArr3 = A01;
            if (strArr3[2].length() != strArr3[0].length()) {
                A01[6] = "dEMR1C0fCLJEsmN6YStUhJGVUagFQ5EF";
                return wq2.A05(wq2.A00.getNetworkType());
            }
            A01[7] = "IeVVB4pQAR4pX23W54Z95CGRKG6wHZI8";
            return wq2.A05(wq2.A00.getNetworkType());
        }
    }
}
