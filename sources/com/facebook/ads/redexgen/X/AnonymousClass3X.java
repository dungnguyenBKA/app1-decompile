package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.facebook.ads.internal.exoplayer2.Format;
import java.util.Collections;
import java.util.List;

/* renamed from: com.facebook.ads.redexgen.X.3X  reason: invalid class name */
public final class AnonymousClass3X extends EP implements Handler.Callback {
    public static String[] A0D;
    public int A00;
    public int A01;
    public Format A02;
    public AbstractC1055am A03;
    public C0416By A04;
    public AbstractC0412Bs A05;
    public AbstractC0412Bs A06;
    public boolean A07;
    public boolean A08;
    public final Handler A09;
    public final AD A0A;
    public final GE A0B;
    public final GF A0C;

    static {
        A05();
    }

    public static void A05() {
        A0D = new String[]{"fagSsoac43UJSJG", "PL0Df5XObPsMjoFT3sU6Lp83XbviyP8R", "k75ap2fxOZvkqr2FjEQ9d3Y", "qEZm9kPptvCV49j1bDgJYwonF92a", "8QH8MqTnW7KMzd9bL", "CjrIcpNXno9M2QOeMZvTD2WdktHrPs5P", "AfT76Pf2kDJi2th", "sZbuEqgSWLt9Albo4x4yfDH"};
    }

    public AnonymousClass3X(GF gf, Looper looper) {
        this(gf, looper, GE.A00);
    }

    public AnonymousClass3X(GF gf, Looper looper, GE ge) {
        super(3);
        Handler handler;
        this.A0C = (GF) C0551Hx.A01(gf);
        if (looper == null) {
            handler = null;
        } else {
            handler = new Handler(looper, this);
        }
        this.A09 = handler;
        this.A0B = ge;
        this.A0A = new AD();
    }

    private long A00() {
        int i = this.A01;
        if (i == -1 || i >= this.A06.A6T()) {
            return Long.MAX_VALUE;
        }
        return this.A06.A6S(this.A01);
    }

    private void A01() {
        A07(Collections.emptyList());
    }

    private void A02() {
        this.A04 = null;
        this.A01 = -1;
        AbstractC0412Bs bs = this.A06;
        if (bs != null) {
            bs.A08();
            this.A06 = null;
        }
        AbstractC0412Bs bs2 = this.A05;
        if (bs2 != null) {
            bs2.A08();
            this.A05 = null;
        }
    }

    private void A03() {
        A02();
        this.A03.ACz();
        this.A03 = null;
        this.A00 = 0;
    }

    private void A04() {
        A03();
        this.A03 = this.A0B.A4G(this.A02);
    }

    private void A06(List<GB> list) {
        this.A0C.A9s(list);
    }

    private void A07(List<GB> list) {
        Handler handler = this.A09;
        if (handler != null) {
            handler.obtainMessage(0, list).sendToTarget();
        } else {
            A06(list);
        }
    }

    @Override // com.facebook.ads.redexgen.X.EP
    public final void A14() {
        this.A02 = null;
        A01();
        A03();
    }

    @Override // com.facebook.ads.redexgen.X.EP
    public final void A17(long j, boolean z) {
        A01();
        this.A07 = false;
        this.A08 = false;
        if (this.A00 != 0) {
            A04();
            return;
        }
        A02();
        AbstractC1055am amVar = this.A03;
        String[] strArr = A0D;
        if (strArr[2].length() != strArr[7].length()) {
            throw new RuntimeException();
        }
        A0D[1] = "SIdEizz9oP1X0InrrFd2Zym6xF4ie8Hi";
        amVar.flush();
    }

    @Override // com.facebook.ads.redexgen.X.EP
    public final void A19(Format[] formatArr, long j) throws A0 {
        this.A02 = formatArr[0];
        if (this.A03 != null) {
            this.A00 = 1;
        } else {
            this.A03 = this.A0B.A4G(this.A02);
        }
    }

    @Override // com.facebook.ads.redexgen.X.YH
    public final boolean A7z() {
        return this.A08;
    }

    @Override // com.facebook.ads.redexgen.X.YH
    public final boolean A89() {
        return true;
    }

    /* JADX INFO: Multiple debug info for r9v0 'this'  com.facebook.ads.redexgen.X.3X: [D('textRendererNeedsUpdate' boolean), D('e' com.facebook.ads.redexgen.X.GD)] */
    /* JADX WARNING: Code restructure failed: missing block: B:32:0x0097, code lost:
        if (r6 == 2) goto L_0x0099;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:40:0x00b8, code lost:
        if (r6 == 2) goto L_0x0099;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:41:0x00bb, code lost:
        A02();
        r9.A08 = true;
     */
    @Override // com.facebook.ads.redexgen.X.YH
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void ADC(long r10, long r12) throws com.facebook.ads.redexgen.X.A0 {
        /*
        // Method dump skipped, instructions count: 365
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.AnonymousClass3X.ADC(long, long):void");
    }

    @Override // com.facebook.ads.redexgen.X.AY
    public final int AEG(Format format) {
        if (this.A0B.AEH(format)) {
            return EP.A0z(null, format.A0H) ? 4 : 2;
        }
        if (IF.A0B(format.A0O)) {
            return 1;
        }
        return 0;
    }

    public final boolean handleMessage(Message message) {
        if (message.what == 0) {
            A06((List) message.obj);
            return true;
        }
        throw new IllegalStateException();
    }
}
