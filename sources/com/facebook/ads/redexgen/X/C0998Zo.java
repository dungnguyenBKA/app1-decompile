package com.facebook.ads.redexgen.X;

import android.util.SparseArray;
import android.util.SparseIntArray;

/* renamed from: com.facebook.ads.redexgen.X.Zo  reason: case insensitive filesystem */
public class C0998Zo implements DU {
    public static String[] A05;
    public final int A00;
    public final SparseArray<AbstractC0434Db> A01 = new SparseArray<>();
    public final SparseIntArray A02 = new SparseIntArray();
    public final IL A03 = new IL(new byte[5]);
    public final /* synthetic */ C0999Zp A04;

    static {
        A01();
    }

    public static void A01() {
        A05 = new String[]{"RGyTh4SpGx69CnC3uYB0gmKqWWTNP", "iDg", "j2BD3qxwlCatqD2Ch8dsr4SydA7XKwXL", "m1LAn1cIXYa33UPzElI", "cPJKdoCFMTZnGOgvNAg6pI", "iUx5cAJ8Ufw2U1Fp6uB6P", "qd", "YeOgnvzSUR8"};
    }

    public C0998Zo(C0999Zp zp, int i) {
        this.A04 = zp;
        this.A00 = i;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:23:0x0088, code lost:
        if (r3 == 122) goto L_0x008a;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:26:0x0099, code lost:
        if (r3 == 122) goto L_0x008a;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:28:0x009e, code lost:
        if (r3 != 123) goto L_0x00a3;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:29:0x00a0, code lost:
        r7 = 138;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:31:0x00a6, code lost:
        if (r3 != 10) goto L_0x00b2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:32:0x00a8, code lost:
        r6 = r13.A0T(3).trim();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:34:0x00b4, code lost:
        if (r3 != 89) goto L_0x002d;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:35:0x00b6, code lost:
        r7 = 89;
        r5 = new java.util.ArrayList();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:37:0x00c1, code lost:
        if (r13.A07() >= r10) goto L_0x002d;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:38:0x00c3, code lost:
        r4 = r13.A0T(3).trim();
        r3 = r13.A0F();
        r1 = new byte[4];
        r13.A0d(r1, 0, 4);
        r5.add(new com.facebook.ads.redexgen.X.DX(r4, r3, r1));
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private com.facebook.ads.redexgen.X.DY A00(com.facebook.ads.redexgen.X.IM r13, int r14) {
        /*
        // Method dump skipped, instructions count: 244
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C0998Zo.A00(com.facebook.ads.redexgen.X.IM, int):com.facebook.ads.redexgen.X.DY");
    }

    @Override // com.facebook.ads.redexgen.X.DU
    public final void A49(IM im) {
        IY iy;
        int i;
        AbstractC0434Db A4P;
        if (im.A0F() == 2) {
            if (this.A04.A05 == 1 || this.A04.A05 == 2 || this.A04.A01 == 1) {
                iy = (IY) this.A04.A0B.get(0);
            } else {
                iy = new IY(((IY) this.A04.A0B.get(0)).A04());
                this.A04.A0B.add(iy);
            }
            im.A0a(2);
            int A0J = im.A0J();
            int i2 = 5;
            im.A0a(5);
            im.A0b(this.A03, 2);
            int i3 = 4;
            this.A03.A09(4);
            int i4 = 12;
            im.A0a(this.A03.A05(12));
            int programInfoLength = 21;
            if (this.A04.A05 == 2 && this.A04.A03 == null) {
                DY dy = new DY(21, null, null, new byte[0]);
                C0999Zp zp = this.A04;
                zp.A03 = zp.A09.A4P(21, dy);
                this.A04.A03.A7s(iy, this.A04.A02, new C0433Da(A0J, 21, 8192));
            }
            this.A01.clear();
            this.A02.clear();
            int A052 = im.A05();
            while (A052 > 0) {
                im.A0b(this.A03, i2);
                int A053 = this.A03.A05(8);
                this.A03.A09(3);
                int A054 = this.A03.A05(13);
                this.A03.A09(i3);
                int A055 = this.A03.A05(i4);
                DY A002 = A00(im, A055);
                if (A053 == 6) {
                    A053 = A002.A00;
                }
                A052 -= A055 + 5;
                if (this.A04.A05 == 2) {
                    i = A053;
                } else {
                    i = A054;
                }
                if (!this.A04.A07.get(i)) {
                    if (this.A04.A05 == 2 && A053 == programInfoLength) {
                        A4P = this.A04.A03;
                    } else {
                        C0999Zp zp2 = this.A04;
                        String[] strArr = A05;
                        if (strArr[0].length() != strArr[1].length()) {
                            String[] strArr2 = A05;
                            strArr2[5] = "uMTX0BK3hwRt9LI9TXEhN";
                            strArr2[7] = "Q6yhhKO6s7v";
                            A4P = zp2.A09.A4P(A053, A002);
                        } else {
                            throw new RuntimeException();
                        }
                    }
                    if (this.A04.A05 != 2 || A054 < this.A02.get(i, 8192)) {
                        SparseIntArray sparseIntArray = this.A02;
                        if (A05[4].length() != 17) {
                            A05[3] = "hYuW2ZxScZvjOUyRYzD";
                            sparseIntArray.put(i, A054);
                            this.A01.put(i, A4P);
                        } else {
                            throw new RuntimeException();
                        }
                    }
                }
                i2 = 5;
                i3 = 4;
                i4 = 12;
                programInfoLength = 21;
            }
            int size = this.A02.size();
            for (int i5 = 0; i5 < size; i5++) {
                int keyAt = this.A02.keyAt(i5);
                this.A04.A07.put(keyAt, true);
                AbstractC0434Db valueAt = this.A01.valueAt(i5);
                if (valueAt != null) {
                    if (valueAt != this.A04.A03) {
                        valueAt.A7s(iy, this.A04.A02, new C0433Da(A0J, keyAt, 8192));
                    }
                    this.A04.A06.put(this.A02.valueAt(i5), valueAt);
                }
            }
            if (this.A04.A05 != 2) {
                int i6 = 0;
                this.A04.A06.remove(this.A00);
                C0999Zp zp3 = this.A04;
                if (zp3.A05 != 1) {
                    i6 = this.A04.A01 - 1;
                }
                zp3.A01 = i6;
                if (this.A04.A01 == 0) {
                    this.A04.A02.A5B();
                    this.A04.A04 = true;
                }
            } else if (!(this.A04.A04)) {
                this.A04.A02.A5B();
                this.A04.A01 = 0;
                this.A04.A04 = true;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.DU
    public final void A7s(IY iy, CI ci, C0433Da da) {
    }
}
