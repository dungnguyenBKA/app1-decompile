package com.facebook.ads.redexgen.X;

import java.util.HashMap;
import java.util.Map;

public final class QF {
    public float A00;
    public AnonymousClass0Q A01;
    public Map<String, String> A02;

    public QF(AnonymousClass0Q r2) {
        this(r2, 0.0f);
    }

    public QF(AnonymousClass0Q r2, float f) {
        this(r2, f, null);
    }

    public QF(AnonymousClass0Q r2, float f, Map<String, String> map) {
        this.A01 = r2;
        this.A00 = f;
        if (map != null) {
            this.A02 = map;
        } else {
            this.A02 = new HashMap<>();
        }
    }

    public final float A00() {
        return this.A00;
    }

    public final int A01() {
        return this.A01.A03();
    }

    public final AnonymousClass0Q A02() {
        return this.A01;
    }

    public final Map<String, String> A03() {
        return this.A02;
    }

    public final boolean A04() {
        return this.A01 == AnonymousClass0Q.A0J;
    }
}
