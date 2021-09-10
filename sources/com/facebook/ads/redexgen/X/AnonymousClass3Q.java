package com.facebook.ads.redexgen.X;

import android.os.Build;
import android.os.Bundle;
import androidx.annotation.Nullable;
import java.util.List;

/* renamed from: com.facebook.ads.redexgen.X.3Q  reason: invalid class name */
public final class AnonymousClass3Q {
    public static final AnonymousClass3P A01;
    public final Object A00;

    static {
        if (Build.VERSION.SDK_INT >= 19) {
            A01 = new C0473Eu();
        } else if (Build.VERSION.SDK_INT >= 16) {
            A01 = new C0474Ev();
        } else {
            A01 = new T4();
        }
    }

    public AnonymousClass3Q() {
        this.A00 = A01.A98(this);
    }

    public AnonymousClass3Q(Object obj) {
        this.A00 = obj;
    }

    @Nullable
    public final AnonymousClass3O A00(int i) {
        return null;
    }

    @Nullable
    public final AnonymousClass3O A01(int i) {
        return null;
    }

    public final Object A02() {
        return this.A00;
    }

    @Nullable
    public final List<AnonymousClass3O> A03(String str, int i) {
        return null;
    }

    public final boolean A04(int i, int i2, Bundle bundle) {
        return false;
    }
}
