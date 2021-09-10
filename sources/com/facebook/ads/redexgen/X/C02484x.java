package com.facebook.ads.redexgen.X;

import android.content.Intent;
import android.widget.RelativeLayout;
import java.util.Arrays;
import org.apache.http.HttpStatus;

/* renamed from: com.facebook.ads.redexgen.X.4x */
public class C02484x {
    public static byte[] A04;
    public final Intent A00;
    public final AnonymousClass50 A01;
    public final XJ A02;
    public final JC A03;

    static {
        A0N();
    }

    public static String A0M(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A04, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 79);
        }
        return new String(copyOfRange);
    }

    public static void A0N() {
        A04 = new byte[]{51, 54, 13, 54, 51, 38, 51, 13, 48, 39, 60, 54, 62, 55, 14, 25, 11, 29, 14, 24, 25, 24, 42, 21, 24, 25, 19, 61, 24, 56, 29, 8, 29, 62, 9, 18, 24, 16, 25, 77, 82, 95, 94, 84, 100, 79, 82, 86, 94, 100, 75, 84, 87, 87, 82, 85, 92, 100, 82, 85, 79, 94, 73, 77, 90, 87};
    }

    public C02484x(AnonymousClass50 r1, Intent intent, JC jc, XJ xj) {
        this.A01 = r1;
        this.A00 = intent;
        this.A03 = jc;
        this.A02 = xj;
    }

    public /* synthetic */ C02484x(AnonymousClass50 r1, Intent intent, JC jc, XJ xj, C02474w r5) {
        this(r1, intent, jc, xj);
    }

    private S1 A00() {
        return (S1) this.A00.getSerializableExtra(A0M(0, 14, 29));
    }

    /* access modifiers changed from: public */
    private MA A02() {
        AnonymousClass50 r4 = this.A01;
        return new C1180cp(r4, this.A02, this.A03, new TU(r4, null));
    }

    /* access modifiers changed from: public */
    private MA A03() {
        return new Y4(this.A02, this.A03, new TU(this.A01, null), A00(), new C1047ae(), 1);
    }

    /* access modifiers changed from: public */
    private MA A04() {
        return new Y4(this.A02, this.A03, new TU(this.A01, null), (S5) this.A00.getSerializableExtra(A0M(14, 25, 51)), new C1045ac(), 0);
    }

    /* access modifiers changed from: public */
    private MA A05() {
        boolean z;
        if (J4.A1l(this.A02) || J4.A1r(this.A02)) {
            z = true;
        } else {
            z = false;
        }
        boolean A1n = J4.A1n(this.A02);
        if (z) {
            XJ xj = this.A02;
            return new AnonymousClass84(xj, this.A03, new AnonymousClass7D(xj), new TU(this.A01, null), A00(), false);
        } else if (A1n) {
            XJ xj2 = this.A02;
            return new AnonymousClass84(xj2, this.A03, new AnonymousClass7D(xj2), new TU(this.A01, null), A00(), true);
        } else {
            XJ xj3 = this.A02;
            return new AnonymousClass83(xj3, this.A03, new AnonymousClass7D(xj3), new TU(this.A01, null), A00());
        }
    }

    /* access modifiers changed from: public */
    private MA A06() {
        return new C03368s(this.A02, new C1047ae(), this.A03, A00(), new AnonymousClass7D(this.A02), new TU(this.A01, null));
    }

    /* access modifiers changed from: public */
    private MA A07() {
        return new C1075b6(this.A02, this.A03, new TU(this.A01, null), A00(), null, new C1047ae());
    }

    /* access modifiers changed from: public */
    private MA A08() {
        return new AnonymousClass86(this.A02, new C1047ae(), this.A03, A00(), new AnonymousClass7D(this.A02), new TU(this.A01, null));
    }

    /* access modifiers changed from: public */
    private MA A09() {
        S5 s5 = (S5) this.A00.getSerializableExtra(A0M(14, 25, 51));
        if (s5.A0n()) {
            return new AnonymousClass86(this.A02, new C1045ac(), this.A03, s5, new AnonymousClass7D(this.A02), new C0467Eo(this.A01, null));
        }
        XJ xj = this.A02;
        return new C1050ah(xj, this.A03, new PD(xj), new C0467Eo(this.A01, null), s5);
    }

    /* access modifiers changed from: public */
    private MA A0A() {
        S5 s5 = (S5) this.A00.getSerializableExtra(A0M(14, 25, 51));
        return new C1075b6(this.A02, this.A03, new C0467Eo(this.A01, null), s5, s5.A0Z(), new C1045ac());
    }

    /* access modifiers changed from: public */
    private MA A0B(RelativeLayout relativeLayout) {
        C1048af afVar = new C1048af(this.A02, new TV(this), this.A03, new TU(this.A01, null));
        afVar.A05(relativeLayout);
        afVar.A04(this.A00.getIntExtra(A0M(39, 27, 116), HttpStatus.SC_OK));
        C0632Lh.A0P(relativeLayout, -16777216);
        return afVar;
    }
}
