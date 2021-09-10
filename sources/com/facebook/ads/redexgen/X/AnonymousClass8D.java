package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.content.ContextWrapper;
import androidx.annotation.Nullable;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: com.facebook.ads.redexgen.X.8D  reason: invalid class name */
public class AnonymousClass8D extends ContextWrapper {
    public final AnonymousClass8F A00;
    public final AtomicReference<String> A01 = new AtomicReference<>();

    public AnonymousClass8D(Context context, AnonymousClass8F r3) {
        super(context.getApplicationContext());
        this.A00 = r3;
    }

    public final XK A00() {
        XK A002 = AnonymousClass8C.A00();
        if (A002 != null) {
            return A002;
        }
        XK xk = new XK(this, this.A00);
        AnonymousClass8C.A01(xk);
        return xk;
    }

    public final AnonymousClass8E A01() {
        return this.A00.A5j(this);
    }

    public final AnonymousClass8G A02() {
        return this.A00.A6M(this);
    }

    public final AnonymousClass8H A03() {
        return this.A00.A76(this);
    }

    public final AbstractC03218d A04() {
        return this.A00.A6D(this);
    }

    public final AnonymousClass93 A05() {
        return this.A00.A7C();
    }

    public final JC A06() {
        return this.A00.A5V(A00());
    }

    @Nullable
    public final String A07() {
        return this.A01.get();
    }

    public final void A08(@Nullable String str) {
        this.A01.set(str);
    }
}
