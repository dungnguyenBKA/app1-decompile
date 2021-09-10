package com.facebook.ads.redexgen.X;

/* renamed from: com.facebook.ads.redexgen.X.Xu  reason: case insensitive filesystem */
public class C0952Xu implements AnonymousClass95 {
    public final /* synthetic */ String[] A00;

    public C0952Xu(String[] strArr) {
        this.A00 = strArr;
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass95
    public final boolean A2O(String str) {
        for (String str2 : this.A00) {
            if (str2.equals(str)) {
                return false;
            }
        }
        return true;
    }
}
