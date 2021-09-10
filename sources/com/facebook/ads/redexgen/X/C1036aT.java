package com.facebook.ads.redexgen.X;

import android.net.Uri;
import androidx.annotation.Nullable;

/* renamed from: com.facebook.ads.redexgen.X.aT  reason: case insensitive filesystem */
public final class C1036aT implements G0 {
    public int A00 = 1048576;
    public int A01 = -1;
    @Nullable
    public CJ A02;
    @Nullable
    public Object A03;
    @Nullable
    public String A04;
    public boolean A05;
    public final HH A06;

    public C1036aT(HH hh) {
        this.A06 = hh;
    }

    public final C4 A00(Uri uri) {
        this.A05 = true;
        if (this.A02 == null) {
            this.A02 = new C0974Yq();
        }
        return new C4(uri, this.A06, this.A02, this.A01, this.A04, this.A00, this.A03);
    }
}
