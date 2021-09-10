package com.facebook.ads.redexgen.X;

import java.util.EnumSet;
import javax.annotation.Nullable;

/* renamed from: com.facebook.ads.redexgen.X.6b  reason: invalid class name and case insensitive filesystem */
public final class C02776b {
    public final int A00;
    public final AbstractC02806e A01;
    public final EnumSet<EnumC02846i> A02;

    public C02776b(int i, EnumSet<EnumC02846i> enumSet, AbstractC02806e r3) {
        this.A00 = i;
        this.A02 = enumSet;
        this.A01 = r3;
    }

    public final int A00() {
        return this.A00;
    }

    @Nullable
    public final AbstractC02806e A01() {
        if (this.A02.contains(EnumC02846i.A07)) {
            return this.A01;
        }
        return null;
    }

    @Nullable
    public final AbstractC02806e A02(EnumC02816f r2) {
        if (A04(r2)) {
            return this.A01;
        }
        return null;
    }

    public final EnumSet<EnumC02846i> A03() {
        return this.A02;
    }

    public final boolean A04(EnumC02816f r3) {
        if (!AnonymousClass72.A0F(r3) || !this.A02.contains(EnumC02846i.A00(r3.A03()))) {
            return false;
        }
        return true;
    }
}
