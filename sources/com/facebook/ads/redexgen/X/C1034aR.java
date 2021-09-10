package com.facebook.ads.redexgen.X;

import android.net.Uri;
import java.io.IOException;

/* renamed from: com.facebook.ads.redexgen.X.aR  reason: case insensitive filesystem */
public final class C1034aR implements HV {
    public static String[] A0C;
    public long A00;
    public long A01 = -1;
    public long A02;
    public HM A03;
    public boolean A04 = true;
    public final Uri A05;
    public final CN A06 = new CN();
    public final F8 A07;
    public final HI A08;
    public final I3 A09;
    public volatile boolean A0A;
    public final /* synthetic */ C5 A0B;

    static {
        A04();
    }

    public static void A04() {
        A0C = new String[]{"nBGgOhUJr5w54zk2FcSY", "YYZuUd", "gwBohD1o6c6DfEcFdJm47xfjaEoVukk3", "3TNnSL", "hJWvKqQqk09hkKqv49F3L8Ilz7Jhye22", "G8FOHrMAxxSNQBngbaVWxtAhYQnldn5N", "v6FRbmkBAKb4FwdIpHjrHHJWg4k1tULi", "7hirQzfzNIRD79h7knAyc8"};
    }

    public C1034aR(C5 c5, Uri uri, HI hi, F8 f8, I3 i3) {
        this.A0B = c5;
        this.A05 = (Uri) C0551Hx.A01(uri);
        this.A08 = (HI) C0551Hx.A01(hi);
        this.A07 = (F8) C0551Hx.A01(f8);
        this.A09 = i3;
    }

    public final void A05(long j, long j2) {
        this.A06.A00 = j;
        this.A02 = j2;
        this.A04 = true;
    }

    @Override // com.facebook.ads.redexgen.X.HV
    public final void A3z() {
        this.A0A = true;
    }

    @Override // com.facebook.ads.redexgen.X.HV
    public final void A8I() throws IOException, InterruptedException {
        int i = 0;
        while (i == 0) {
            boolean z = this.A0A;
            if (A0C[0].length() != 9) {
                String[] strArr = A0C;
                strArr[3] = "6lKOSY";
                strArr[1] = "aO7eUD";
                if (!z) {
                    C0973Yp yp = null;
                    try {
                        long j = this.A06.A00;
                        this.A03 = new HM(this.A05, j, -1, C5.A08(this.A0B));
                        this.A01 = this.A08.ACC(this.A03);
                        if (this.A01 != -1) {
                            this.A01 += j;
                        }
                        C0973Yp yp2 = new C0973Yp(this.A08, j, this.A01);
                        CG A032 = this.A07.A03(yp2, this.A08.A7R());
                        if (this.A04) {
                            A032.ADW(j, this.A02);
                            this.A04 = false;
                        }
                        while (i == 0 && !this.A0A) {
                            this.A09.A01();
                            i = A032.ACk(yp2, this.A06);
                            if (yp2.A71() > C5.A03(this.A0B) + j) {
                                j = yp2.A71();
                                this.A09.A02();
                                C5.A04(this.A0B).post(C5.A06(this.A0B));
                            }
                        }
                        if (i == 1) {
                            i = 0;
                        } else {
                            this.A06.A00 = yp2.A71();
                            this.A00 = this.A06.A00 - this.A03.A01;
                        }
                        C0556Ic.A0X(this.A08);
                    } catch (Throwable th) {
                        if (!(i == 1 || 0 == 0)) {
                            this.A06.A00 = yp.A71();
                            this.A00 = this.A06.A00 - this.A03.A01;
                        }
                        C0556Ic.A0X(this.A08);
                        throw th;
                    }
                } else {
                    return;
                }
            } else {
                throw new RuntimeException();
            }
        }
    }
}
