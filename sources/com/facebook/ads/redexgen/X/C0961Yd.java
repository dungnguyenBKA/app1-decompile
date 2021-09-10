package com.facebook.ads.redexgen.X;

import androidx.annotation.RequiresApi;
import com.vungle.warren.error.VungleException;

/* renamed from: com.facebook.ads.redexgen.X.Yd  reason: case insensitive filesystem */
public class C0961Yd implements NM {
    public final /* synthetic */ YV A00;

    public C0961Yd(YV yv) {
        this.A00 = yv;
    }

    @Override // com.facebook.ads.redexgen.X.NM
    public final void AAz(String str) {
        this.A00.A0I = false;
        this.A00.A0C.setProgress(100);
        C0632Lh.A0Q(this.A00.A0C, 8);
    }

    @Override // com.facebook.ads.redexgen.X.NM
    public final void AB1(String str) {
        this.A00.A0I = true;
        C0632Lh.A0Q(this.A00.A0C, 0);
        this.A00.A0B.setUrl(str);
    }

    @Override // com.facebook.ads.redexgen.X.NM
    public final void ABI(int i) {
        if (this.A00.A0I) {
            this.A00.A0C.setProgress(i);
        }
    }

    @Override // com.facebook.ads.redexgen.X.NM
    public final void ABN(String str) {
        this.A00.A0B.setTitle(str);
    }

    @Override // com.facebook.ads.redexgen.X.NM
    @RequiresApi(api = VungleException.DB_ERROR)
    public final void ABP() {
        this.A00.A0E.A09().A9e(14);
    }
}
