package com.facebook.ads.redexgen.X;

import java.io.IOException;
import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.Yy  reason: case insensitive filesystem */
public final class C0982Yy implements CG {
    public static byte[] A0F;
    public static String[] A0G;
    public static final CJ A0H = new C0981Yx();
    public static final int A0I = C0556Ic.A08(A01(0, 3, 9));
    public int A00;
    public int A01 = 1;
    public int A02;
    public int A03;
    public long A04 = -9223372036854775807L;
    public long A05;
    public CI A06;
    public C0980Yw A07;
    public Z1 A08;
    public boolean A09;
    public final C0983Yz A0A = new C0983Yz();
    public final IM A0B = new IM(9);
    public final IM A0C = new IM(4);
    public final IM A0D = new IM();
    public final IM A0E = new IM(11);

    public static String A01(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0F, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 60);
        }
        return new String(copyOfRange);
    }

    public static void A03() {
        A0F = new byte[]{-117, -111, -101};
    }

    public static void A04() {
        A0G = new String[]{"F9KwQMNMxiTjkayDhPM6gvDLkPvUNcLn", "Em4FZTw9NeUBCVsnasMEsqdbQrmSbGq", "", "tDq5h6G1X4d5RY1LfaFLZXWqT85DrCya", "B5R7X", "Y", "Zp00UWtElOmikRSXEs37FpNUTZ5eWL9Y", "wqRNyyxlEoRi9"};
    }

    static {
        A04();
        A03();
    }

    private IM A00(CH ch) throws IOException, InterruptedException {
        if (this.A02 > this.A0D.A06()) {
            IM im = this.A0D;
            im.A0c(new byte[Math.max(im.A06() * 2, this.A02)], 0);
        } else {
            this.A0D.A0Z(0);
        }
        this.A0D.A0Y(this.A02);
        ch.readFully(this.A0D.A00, 0, this.A02);
        return this.A0D;
    }

    private void A02() {
        long j;
        if (!this.A09) {
            this.A06.ADX(new C0977Yt(-9223372036854775807L));
            this.A09 = true;
        }
        if (this.A04 == -9223372036854775807L) {
            if (this.A0A.A0E() == -9223372036854775807L) {
                j = -this.A05;
            } else {
                j = 0;
            }
            this.A04 = j;
        }
    }

    private void A05(CH ch) throws IOException, InterruptedException {
        ch.AE3(this.A00);
        this.A00 = 0;
        this.A01 = 3;
    }

    private boolean A06(CH ch) throws IOException, InterruptedException {
        boolean z;
        boolean hasAudio = false;
        if (!ch.ACp(this.A0B.A00, 0, 9, true)) {
            return false;
        }
        IM im = this.A0B;
        if (A0G[4].length() != 15) {
            String[] strArr = A0G;
            strArr[3] = "xxv79KM5VyarLmUhQqEOMlbbyGFtPWOG";
            strArr[6] = "n0W8PrJEyrqWl4lCbLWkK9bcjvpbO2Fn";
            im.A0Z(0);
            this.A0B.A0a(4);
            int A0F2 = this.A0B.A0F();
            if ((A0F2 & 4) != 0) {
                z = true;
            } else {
                z = false;
            }
            if ((A0F2 & 1) != 0) {
                hasAudio = true;
            }
            if (z && this.A07 == null) {
                this.A07 = new C0980Yw(this.A06.AEM(8, 1));
            }
            if (hasAudio && this.A08 == null) {
                this.A08 = new Z1(this.A06.AEM(9, 2));
            }
            this.A06.A5B();
            this.A00 = (this.A0B.A09() - 9) + 4;
            this.A01 = 2;
            return true;
        }
        throw new RuntimeException();
    }

    private boolean A07(CH ch) throws IOException, InterruptedException {
        boolean z = true;
        if (this.A03 == 8 && this.A07 != null) {
            A02();
            this.A07.A00(A00(ch), this.A04 + this.A05);
        } else if (this.A03 == 9 && this.A08 != null) {
            A02();
            this.A08.A00(A00(ch), this.A04 + this.A05);
        } else if (this.A03 != 18 || this.A09) {
            int i = this.A02;
            if (A0G[4].length() != 15) {
                A0G[0] = "mShHrd4Vu2jNkvRJUK8UrhhXjzgbGKl1";
                ch.AE3(i);
                z = false;
            } else {
                throw new RuntimeException();
            }
        } else {
            this.A0A.A00(A00(ch), this.A05);
            long A0E2 = this.A0A.A0E();
            if (A0E2 != -9223372036854775807L) {
                this.A06.ADX(new C0977Yt(A0E2));
                this.A09 = true;
            }
        }
        this.A00 = 4;
        this.A01 = 2;
        return z;
    }

    private boolean A08(CH ch) throws IOException, InterruptedException {
        if (!ch.ACp(this.A0E.A00, 0, 11, true)) {
            return false;
        }
        this.A0E.A0Z(0);
        this.A03 = this.A0E.A0F();
        this.A02 = this.A0E.A0H();
        this.A05 = (long) this.A0E.A0H();
        this.A05 = (((long) (this.A0E.A0F() << 24)) | this.A05) * 1000;
        this.A0E.A0a(3);
        this.A01 = 4;
        return true;
    }

    @Override // com.facebook.ads.redexgen.X.CG
    public final void A7q(CI ci) {
        this.A06 = ci;
    }

    @Override // com.facebook.ads.redexgen.X.CG
    public final int ACk(CH ch, CN cn2) throws IOException, InterruptedException {
        while (true) {
            int i = this.A01;
            if (i != 1) {
                if (i == 2) {
                    A05(ch);
                } else if (A0G[4].length() != 15) {
                    A0G[4] = "ncW0XwKX3pgCRaaT";
                    if (i != 3) {
                        if (i != 4) {
                            throw new IllegalStateException();
                        } else if (A07(ch)) {
                            if (A0G[0].charAt(18) != 'j') {
                                A0G[7] = "5";
                                return 0;
                            }
                            A0G[7] = "DR5iBP2XCUKx659t";
                            return 0;
                        }
                    } else if (!A08(ch)) {
                        return -1;
                    }
                } else {
                    throw new RuntimeException();
                }
            } else if (!A06(ch)) {
                return -1;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.CG
    public final void ADW(long j, long j2) {
        this.A01 = 1;
        this.A04 = -9223372036854775807L;
        this.A00 = 0;
    }

    @Override // com.facebook.ads.redexgen.X.CG
    public final boolean AE4(CH ch) throws IOException, InterruptedException {
        ch.ACM(this.A0C.A00, 0, 3);
        this.A0C.A0Z(0);
        if (this.A0C.A0H() != A0I) {
            return false;
        }
        ch.ACM(this.A0C.A00, 0, 2);
        this.A0C.A0Z(0);
        if ((this.A0C.A0J() & 250) != 0) {
            return false;
        }
        ch.ACM(this.A0C.A00, 0, 4);
        this.A0C.A0Z(0);
        int A092 = this.A0C.A09();
        ch.ADN();
        ch.A3N(A092);
        ch.ACM(this.A0C.A00, 0, 4);
        this.A0C.A0Z(0);
        if (this.A0C.A09() == 0) {
            return true;
        }
        return false;
    }
}
