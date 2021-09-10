package com.facebook.ads.redexgen.X;

import java.util.ArrayDeque;
import java.util.PriorityQueue;

/* renamed from: com.facebook.ads.redexgen.X.Be  reason: case insensitive filesystem */
public abstract class AbstractC0398Be implements AbstractC1055am {
    public static String[] A06;
    public long A00;
    public long A01;
    public AnonymousClass37 A02;
    public final ArrayDeque<AnonymousClass37> A03 = new ArrayDeque<>();
    public final ArrayDeque<AbstractC0412Bs> A04;
    public final PriorityQueue<AnonymousClass37> A05;

    static {
        A0L();
    }

    public static void A0L() {
        A06 = new String[]{"xrToQ1M30eypgaiDt2KcbeXQSJmH4zEy", "FOMm0GJvPogulFgRKU73d9QQGInBRxBZ", "DAifx7fz7Oznb", "tEspMkbIuGZVzgapMfnbK02RMeMH6P5b", "hnmT", "jbKY175w2AZdEkpyONR9SNFucMTvW6Vd", "vt70xpgsPpIXmuxmiV", "wsDuhCL"};
    }

    public abstract GC A0N();

    public abstract void A0R(C0416By by);

    public abstract boolean A0T();

    public AbstractC0398Be() {
        for (int i = 0; i < 10; i++) {
            this.A03.add(new AnonymousClass37());
        }
        this.A04 = new ArrayDeque<>();
        for (int i2 = 0; i2 < 2; i2++) {
            this.A04.add(new C01962w(this));
        }
        this.A05 = new PriorityQueue<>();
    }

    private void A0M(AnonymousClass37 r2) {
        r2.A07();
        this.A03.add(r2);
    }

    /* renamed from: A0O */
    public C0416By A4j() throws GD {
        boolean z;
        if (this.A02 == null) {
            z = true;
        } else {
            z = false;
        }
        C0551Hx.A04(z);
        if (this.A03.isEmpty()) {
            return null;
        }
        this.A02 = this.A03.pollFirst();
        return this.A02;
    }

    /* renamed from: A0P */
    public AbstractC0412Bs A4k() throws GD {
        if (this.A04.isEmpty()) {
            return null;
        }
        while (!this.A05.isEmpty() && ((YY) this.A05.peek()).A00 <= this.A00) {
            AnonymousClass37 poll = this.A05.poll();
            if (poll.A04()) {
                AbstractC0412Bs pollFirst = this.A04.pollFirst();
                pollFirst.A00(4);
                if (A06[6].length() != 18) {
                    throw new RuntimeException();
                }
                A06[4] = "hAEA";
                A0M(poll);
                return pollFirst;
            }
            A0R(poll);
            if (A0T()) {
                GC A0N = A0N();
                if (!poll.A03()) {
                    AbstractC0412Bs pollFirst2 = this.A04.pollFirst();
                    pollFirst2.A09(((YY) poll).A00, A0N, Long.MAX_VALUE);
                    A0M(poll);
                    return pollFirst2;
                }
            }
            A0M(poll);
        }
        return null;
    }

    /* renamed from: A0Q */
    public void ACj(C0416By by) throws GD {
        boolean z;
        if (by == this.A02) {
            z = true;
        } else {
            z = false;
        }
        C0551Hx.A03(z);
        if (by.A03()) {
            AnonymousClass37 r3 = this.A02;
            String[] strArr = A06;
            if (strArr[5].charAt(10) != strArr[3].charAt(10)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A06;
            strArr2[5] = "0mhI93daunZi59PwiuGO0KbLyKVCPwQH";
            strArr2[3] = "r2E3xZENv7Zr1SQt92aJBQoSxSc5nrbU";
            A0M(r3);
        } else {
            AnonymousClass37 r4 = this.A02;
            long j = this.A01;
            this.A01 = 1 + j;
            AnonymousClass37.A01(r4, j);
            this.A05.add(this.A02);
        }
        this.A02 = null;
    }

    public final void A0S(AbstractC0412Bs bs) {
        bs.A07();
        this.A04.add(bs);
    }

    @Override // com.facebook.ads.redexgen.X.BZ
    public void ACz() {
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1055am
    public void ADr(long j) {
        this.A00 = j;
    }

    @Override // com.facebook.ads.redexgen.X.BZ
    public void flush() {
        this.A01 = 0;
        this.A00 = 0;
        while (!this.A05.isEmpty()) {
            A0M(this.A05.poll());
        }
        AnonymousClass37 r0 = this.A02;
        if (r0 != null) {
            A0M(r0);
            this.A02 = null;
        }
    }
}
