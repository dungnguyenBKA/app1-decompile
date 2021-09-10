package com.facebook.ads.redexgen.X;

import java.util.concurrent.atomic.AtomicBoolean;
import javax.annotation.concurrent.ThreadSafe;

@ThreadSafe
public final class U9 implements AbstractC02735x {
    public static String[] A06;
    public EnumC02816f A00;
    public AnonymousClass73 A01;
    public AnonymousClass74 A02;
    public final C02715v A03;
    public final AnonymousClass6Q A04;
    public final AtomicBoolean A05 = new AtomicBoolean();

    static {
        A04();
    }

    public static void A04() {
        A06 = new String[]{"9Omy7cax2OJ4", "ulOhDbnf", "JfFg1yjSSK9TQh7N867q1b7oOj16BTWR", "cs88erT1Nmdhof2Vlv4YHjmvLJ5hV6oE", "codoSKf0AAHHcDxXKaV5ItDp", "Lc71QfpBcjqOx3z6Bpry4MoTnJ3L2Amk", "Bxh30V7DNH8aSp9XNgBHezc1nItbXmG0", "iIuCBEGs"};
    }

    public U9(C02715v r2, AnonymousClass6Q r3) {
        this.A03 = r2;
        this.A04 = r3;
    }

    private final synchronized void A05() {
        if (this.A02 != null && this.A05.get()) {
            this.A01.A01(this.A02);
            C03016z.A00().A05();
            this.A04.A02();
            this.A05.compareAndSet(true, false);
        }
    }

    public final synchronized void A06(EnumC02816f r4) {
        if (!this.A05.get() && r4 != null) {
            if (this.A03.A0k() && AnonymousClass72.A0F(r4)) {
                this.A01 = new AnonymousClass73(C03016z.A00().A04().getLooper());
                this.A00 = r4;
                this.A02 = new AnonymousClass74(new RunnableC02755z(this, r4));
                this.A04.A03(r4);
                this.A01.A00(this.A02);
                this.A05.compareAndSet(false, true);
            }
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:11:0x0015, code lost:
        r2 = com.facebook.ads.redexgen.X.U9.A06;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:12:0x0027, code lost:
        if (r2[5].charAt(25) == r2[3].charAt(25)) goto L_0x002f;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:14:0x002e, code lost:
        throw new java.lang.RuntimeException();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:15:0x002f, code lost:
        com.facebook.ads.redexgen.X.U9.A06[6] = "6KXzTJPK6a3Rx51uMQDwScazunOB6mre";
     */
    /* JADX WARNING: Code restructure failed: missing block: B:16:0x0036, code lost:
        return;
     */
    @Override // com.facebook.ads.redexgen.X.AbstractC02735x
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final synchronized void AET(com.facebook.ads.redexgen.X.EnumC02816f r4) {
        /*
            r3 = this;
            monitor-enter(r3)
            com.facebook.ads.redexgen.X.6f r0 = r3.A00     // Catch:{ all -> 0x0037 }
            if (r0 != r4) goto L_0x0007
            monitor-exit(r3)
            return
        L_0x0007:
            r3.A00 = r4
            com.facebook.ads.redexgen.X.6f r0 = com.facebook.ads.redexgen.X.EnumC02816f.A04
            if (r4 != r0) goto L_0x0011
            r3.A05()
            goto L_0x0014
        L_0x0011:
            r3.A06(r4)
        L_0x0014:
            monitor-exit(r3)
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.U9.A06
            r0 = 5
            r1 = r2[r0]
            r0 = 3
            r2 = r2[r0]
            r0 = 25
            char r1 = r1.charAt(r0)
            char r0 = r2.charAt(r0)
            if (r1 == r0) goto L_0x002f
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L_0x002f:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.U9.A06
            java.lang.String r1 = "6KXzTJPK6a3Rx51uMQDwScazunOB6mre"
            r0 = 6
            r2[r0] = r1
            return
        L_0x0037:
            r0 = move-exception
            monitor-exit(r3)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.U9.AET(com.facebook.ads.redexgen.X.6f):void");
    }
}
