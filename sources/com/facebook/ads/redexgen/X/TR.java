package com.facebook.ads.redexgen.X;

public class TR extends AnonymousClass4P {
    public static String[] A02;
    public boolean A00 = false;
    public final /* synthetic */ TS A01;

    static {
        A00();
    }

    public static void A00() {
        A02 = new String[]{"mAEXsU", "ynqBxBOImfiaim2rOjt4gNln3IJjMmAs", "wywpOwDcOClPwSqhh8hqnS4LzA6xmBGs", "SzqLf2", "g6", "3b", "2rYsw0AU9P5CKqqKD8yWz2y811Q4TNqs", "g7NtZwf9Cfcv4ky8xJWe0WMsxKKUH5F1"};
    }

    public TR(TS ts) {
        this.A01 = ts;
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass4P
    public final void A0N(C0469Eq eq, int i) {
        super.A0N(eq, i);
        if (i == 0 && this.A00) {
            this.A00 = false;
            this.A01.A0H();
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass4P
    public final void A0O(C0469Eq eq, int i, int i2) {
        if (i != 0 || i2 != 0) {
            String[] strArr = A02;
            if (strArr[5].length() != strArr[3].length()) {
                A02[1] = "WMOmT1QQvzwg3wEMb9eL1K1wBJkCMN2D";
                this.A00 = true;
                return;
            }
            throw new RuntimeException();
        }
    }
}
