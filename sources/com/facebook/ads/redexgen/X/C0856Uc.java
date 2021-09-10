package com.facebook.ads.redexgen.X;

import com.google.ads.ADRequestList;

/* renamed from: com.facebook.ads.redexgen.X.Uc  reason: case insensitive filesystem */
public class C0856Uc implements AbstractC02806e {
    public static String[] A01;
    public final /* synthetic */ C0863Uj A00;

    static {
        A00();
    }

    public static void A00() {
        A01 = new String[]{"CyYconlRA", "Z99FvxWAH", ADRequestList.ORDER_R, "I6nMbGSwO", "f1HEaIkkO6UN2Wyn2K6t6YhOL5YQHMub", "q7TOnFp8MDH9pVcAi7q7X5O", "kHDnEbJrZHu3VwOwnck16fHaeHzzt8", "W41og5bN"};
    }

    public C0856Uc(C0863Uj uj) {
        this.A00 = uj;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02806e
    public final AbstractC02956t A5F() {
        if (this.A00.A01 != null) {
            C0863Uj uj = this.A00;
            String[] strArr = A01;
            if (strArr[3].length() != strArr[1].length()) {
                throw new RuntimeException();
            }
            A01[2] = "ZWV";
            return uj.A09(uj.A01.sourceDir);
        }
        C0863Uj uj2 = this.A00;
        if (A01[6].length() == 14) {
            return uj2.A08(EnumC02916p.A07);
        }
        A01[6] = "1VAENbmq7tYIb9ZQI0D0jEbiw3q";
        return uj2.A08(EnumC02916p.A07);
    }
}
