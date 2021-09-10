package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.SystemClock;
import java.util.HashMap;

/* renamed from: com.facebook.ads.redexgen.X.Uj  reason: case insensitive filesystem */
public final class C0863Uj extends AnonymousClass6V {
    public final Context A00;
    public final ApplicationInfo A01;
    public final C02715v A02;
    public final C03006y A03 = C03006y.A00(this.A00, this.A02.A0a(), this.A02.A0g());

    public C0863Uj(Context context, C02715v r5) {
        super(context, r5);
        this.A01 = context.getApplicationInfo();
        this.A00 = context;
        this.A02 = r5;
    }

    /* access modifiers changed from: private */
    @SuppressLint({"Nullable Dereference"})
    public AbstractC02956t A05(HashMap<Integer, C0862Ui> hashMap) {
        return new XA(SystemClock.elapsedRealtime(), A03(), hashMap, EnumC02946s.A06);
    }

    public final AbstractC02806e A0H() {
        return new UY(this);
    }

    public final AbstractC02806e A0I() {
        return new UW(this);
    }

    public final AbstractC02806e A0J() {
        return new UV(this);
    }

    public final AbstractC02806e A0K() {
        return new UR(this);
    }

    public final AbstractC02806e A0L() {
        return new C0857Ud(this);
    }

    public final AbstractC02806e A0M() {
        return new C0860Ug(this);
    }

    public final AbstractC02806e A0N() {
        return new UZ(this);
    }

    public final AbstractC02806e A0O() {
        return new C0854Ua(this);
    }

    public final AbstractC02806e A0P() {
        return new C0858Ue(this);
    }

    public final AbstractC02806e A0Q() {
        return new C0861Uh(this);
    }

    public final AbstractC02806e A0R() {
        return new C0859Uf(this);
    }

    public final AbstractC02806e A0S() {
        return new C0856Uc(this);
    }

    public final AbstractC02806e A0T() {
        return new C0855Ub(this);
    }

    public final AbstractC02806e A0U() {
        return new UP(this);
    }

    public final AbstractC02806e A0V() {
        return new UQ(this);
    }

    public final AbstractC02806e A0W() {
        return new US(this);
    }

    public final AbstractC02806e A0X() {
        return new UT(this);
    }

    public final AbstractC02806e A0Y() {
        return new UU(this);
    }

    public final AbstractC02806e A0Z() {
        return new UX(this);
    }
}
