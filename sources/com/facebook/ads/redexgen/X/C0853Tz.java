package com.facebook.ads.redexgen.X;

import java.util.HashMap;
import java.util.Map;

/* renamed from: com.facebook.ads.redexgen.X.Tz  reason: case insensitive filesystem */
public final class C0853Tz implements AbstractC02615l {
    public static String[] A01;
    public final Map<String, C02595j> A00 = new HashMap();

    static {
        A00();
    }

    public static void A00() {
        A01 = new String[]{"00MHKwkDmYoCx2OGjgEThOFtXdhQRjTN", "7Ria84C0K", "Ef46Z6TVH4NcbkjVvmEOqYFgRFOKpwYs", "vDkYYDvZcNCUpf8elhY6lCtHoiks0igx", "DcHCx27DST8xJ8i8V4O5Sgcxtk3BoSo4", "aRh12LJ8xJf1WwvMgk22O9V5avURmtja", "8W8Gty0itChe2KZHdRNz96726BmzX04b", "FJvJLlvq782Xeh3qU1n4ZIKrAnM2Vabf"};
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02615l
    public final synchronized String ADF() {
        StringBuilder sb;
        sb = new StringBuilder();
        for (C02595j stat : this.A00.values()) {
            sb.append(stat.toString());
            sb.append('\n');
        }
        return sb.toString();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02615l
    public final synchronized void reset() {
        this.A00.clear();
        if (A01[6].charAt(31) != 'v') {
            String[] strArr = A01;
            strArr[0] = "pUfrmNlD3Jjwd3BaOF4VLqTdMmEyzhLC";
            strArr[5] = "lXluT4ZzsD6fM7rO3zGi3X1PCHmREvtS";
            return;
        }
        throw new RuntimeException();
    }
}
