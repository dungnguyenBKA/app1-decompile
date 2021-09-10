package com.facebook.ads.redexgen.X;

import android.widget.FrameLayout;
import androidx.annotation.Nullable;

/* renamed from: com.facebook.ads.redexgen.X.Mj  reason: case insensitive filesystem */
public abstract class AbstractC0660Mj extends FrameLayout {
    public int A00;
    public AnonymousClass29 A01;
    public AnonymousClass2A A02;
    @Nullable
    public AnonymousClass2B A03;
    public final XJ A04;
    public final JC A05;
    @Nullable
    public final M9 A06;
    @Nullable
    public final MA A07;
    public final String A08;
    @Nullable
    public final AnonymousClass1S A09;
    public final AbstractC0662Ml A0A;

    public abstract void A0K();

    public abstract void A0L();

    public abstract void A0M(AnonymousClass2B v, AnonymousClass29 v2);

    public abstract void A0N(AnonymousClass2B v, AnonymousClass29 v2);

    public abstract boolean A0O();

    public AbstractC0660Mj(XJ xj, JC jc, String str) {
        this(xj, jc, str, null, null, null);
    }

    public AbstractC0660Mj(XJ xj, JC jc, String str, @Nullable AnonymousClass1S r5, @Nullable MA ma, @Nullable M9 m9) {
        super(xj);
        this.A00 = 0;
        this.A01 = AnonymousClass29.A04;
        this.A03 = null;
        this.A0A = new C1044ab(this);
        this.A04 = xj;
        this.A05 = jc;
        this.A07 = ma;
        this.A06 = m9;
        this.A08 = str;
        this.A09 = r5;
    }

    public static /* synthetic */ int A00(AbstractC0660Mj mj) {
        int i = mj.A00;
        mj.A00 = i + 1;
        return i;
    }

    public static /* synthetic */ int A01(AbstractC0660Mj mj) {
        int i = mj.A00;
        mj.A00 = i - 1;
        return i;
    }

    /* access modifiers changed from: private */
    public void A0A() {
        if (this.A02.A0B()) {
            this.A05.A8N(this.A08, this.A02.A03());
            this.A02.A04();
        }
    }

    /* access modifiers changed from: private */
    public void A0B() {
        this.A03 = null;
        this.A02.A06();
        A0K();
    }

    /* access modifiers changed from: private */
    public void A0C(AnonymousClass2B r3) {
        this.A02.A09(this.A01);
        A0M(r3, this.A01);
        C01420u.A03();
        if (A0O()) {
            A0A();
        }
    }

    /* access modifiers changed from: private */
    public void A0D(AnonymousClass2B r4) {
        this.A03 = r4;
        this.A02.A0A(this.A01, this.A00);
        A0N(r4, this.A01);
    }

    public final void A0I() {
        A0A();
    }

    public final void A0J() {
        this.A02 = new AnonymousClass2A(new JJ(this.A08, this.A05));
        MA ma = this.A07;
        if (ma != null) {
            ma.AB2(true);
        }
        A0B();
    }
}
