package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.os.Build;

/* renamed from: com.facebook.ads.redexgen.X.Wf  reason: case insensitive filesystem */
public class C0911Wf implements AbstractC02806e {
    public static String[] A01;
    public final /* synthetic */ C0922Wq A00;

    static {
        A00();
    }

    public static void A00() {
        A01 = new String[]{"Zr9pMbCXDOnIQia1rxNbs", "xgHdKmUla89dgoNlEUmYBSdthljERTVN", "t0eJ9CzsilrQTJZ3mBY5uHdLOToWpPD0", "xn7Df6Bsn6N8b", "nuXOesuXOGqaff6jWjDzzwB48Mr7m9Ru", "HD4PNhpjIErL9f7FhF1L2XB0w8jmfy8z", "GFJMAbd7JtPv78Iw3eZ5GKABpr6j7C", "a6D5eDw1EZzTAa7WvhZLV0FGc6KUpGTS"};
    }

    public C0911Wf(C0922Wq wq) {
        this.A00 = wq;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02806e
    @SuppressLint({"MissingPermission"})
    public final AbstractC02956t A5F() {
        if (Build.VERSION.SDK_INT < 17) {
            return this.A00.A08(EnumC02916p.A05);
        }
        boolean A0E = AnonymousClass72.A0E();
        if (A01[2].charAt(7) != 's') {
            throw new RuntimeException();
        }
        A01[4] = "7cAAgCcjwnswSonydGODzEoLsKghCJb5";
        if (A0E) {
            boolean A0D = AnonymousClass72.A0D();
            if (A01[1].charAt(23) != 'I') {
                A01[7] = "A1O8dvsw8NjieGbBncMIJ1M47KAaXmaM";
                if (A0D) {
                    return this.A00.A08(EnumC02916p.A07);
                }
            } else {
                throw new RuntimeException();
            }
        }
        if (this.A00.A00 != null) {
            C0922Wq wq = this.A00;
            return wq.A05(C0922Wq.A01(wq.A00.getAllCellInfo().get(0)));
        }
        C0922Wq wq2 = this.A00;
        EnumC02916p r3 = EnumC02916p.A07;
        String[] strArr = A01;
        if (strArr[3].length() == strArr[6].length()) {
            return wq2.A08(r3);
        }
        String[] strArr2 = A01;
        strArr2[3] = "coCM9MFponCPc";
        strArr2[6] = "NV1iD8UH9ErBba9OnjbAeyrfSpL8qw";
        return wq2.A08(r3);
    }
}
