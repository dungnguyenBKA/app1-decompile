package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.util.Pair;
import androidx.annotation.Nullable;
import com.facebook.ads.internal.exoplayer2.source.TrackGroupArray;
import com.google.ads.ADRequestList;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;

public final class EO implements YF {
    public static byte[] A0M;
    public static String[] A0N;
    public int A00;
    public int A01;
    public int A02;
    public int A03;
    public long A04;
    @Nullable
    public A0 A05;
    public AK A06;
    public AL A07;
    public boolean A08;
    public boolean A09;
    public boolean A0A;
    public boolean A0B;
    public final Handler A0C;
    public final Handler A0D;
    public final C0454Dz A0E;
    public final C0371Ad A0F;
    public final C0372Ae A0G;
    public final H7 A0H;
    public final H8 A0I;
    public final ArrayDeque<A4> A0J;
    public final CopyOnWriteArraySet<AO> A0K;
    public final YH[] A0L;

    static {
        A04();
        A03();
    }

    public static String A02(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0M, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = copyOfRange.length;
            if (A0N[7].length() != 1) {
                A0N[7] = "NVWBbKH";
                if (i4 >= length) {
                    return new String(copyOfRange);
                }
                copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 75);
                i4++;
            } else {
                throw new RuntimeException();
            }
        }
    }

    public static void A03() {
        A0M = new byte[]{108, 23, 126, 67, 84, 107, 87, 90, 66, 94, 73, 114, 86, 75, 87, 64, 125, 106, 85, 105, 100, 124, 96, 119, 73, 108, 103, 42, 55, 43, 61, 43, 49, 54, 17, 22, 11, 95, 27, 44, 37, 44, 40, 58, 44, 105, 64, 72, 53, 78, 50, 36, 36, 42, 21, 46, 97, 40, 38, 47, 46, 51, 36, 37, 97, 35, 36, 34, 32, 52, 50, 36, 97, 32, 47, 97, 32, 37, 97, 40, 50, 97, 49, 45, 32, 56, 40, 47, 38};
    }

    public static void A04() {
        A0N = new String[]{"FdQu0fmyjo2y", "53g7H5tUmq98heWq", "c", "OWB4F6Jbct6Ly4JY", "NHyc4CVBcI41", "VuRuzyUBfoaB1KqcrIY9ro", ADRequestList.ORDER_M, "Ea4pNsdJDJP"};
    }

    @SuppressLint({"HandlerLeak"})
    public EO(YH[] yhArr, H7 h7, AF af, I0 i0) {
        boolean z;
        Looper mainLooper;
        Log.i(A02(2, 13, 112), A02(33, 5, 52) + Integer.toHexString(System.identityHashCode(this)) + A02(0, 2, 7) + A02(15, 18, 78) + A02(47, 3, 94) + C0556Ic.A04 + A02(46, 1, 86));
        if (yhArr.length > 0) {
            z = true;
        } else {
            z = false;
        }
        C0551Hx.A04(z);
        this.A0L = (YH[]) C0551Hx.A01(yhArr);
        this.A0H = (H7) C0551Hx.A01(h7);
        this.A0A = false;
        this.A03 = 0;
        this.A0B = false;
        this.A0K = new CopyOnWriteArraySet<>();
        this.A0I = new H8(new AZ[yhArr.length], new H4[yhArr.length], null);
        this.A0G = new C0372Ae();
        this.A0F = new C0371Ad();
        this.A07 = AL.A04;
        if (Looper.myLooper() != null) {
            mainLooper = Looper.myLooper();
        } else {
            mainLooper = Looper.getMainLooper();
        }
        this.A0C = new A3(this, mainLooper);
        this.A06 = new AK(AbstractC0373Af.A01, 0, TrackGroupArray.A04, this.A0I);
        this.A0J = new ArrayDeque<>();
        this.A0E = new C0454Dz(yhArr, h7, this.A0I, af, this.A0A, this.A03, this.A0B, this.A0C, this, i0);
        this.A0D = new Handler(this.A0E.A0x());
    }

    private long A00(long j) {
        long A012 = C03639u.A01(j);
        if (this.A06.A04.A02()) {
            return A012;
        }
        this.A06.A03.A0A(this.A06.A04.A02, this.A0F);
        return A012 + this.A0F.A08();
    }

    private AK A01(boolean z, boolean z2, int i) {
        AbstractC0373Af af;
        Object obj;
        TrackGroupArray trackGroupArray;
        if (z) {
            this.A01 = 0;
            this.A00 = 0;
            this.A04 = 0;
        } else {
            this.A01 = A6A();
            this.A00 = A08();
            this.A04 = A67();
        }
        if (z2) {
            af = AbstractC0373Af.A01;
        } else {
            af = this.A06.A03;
        }
        if (z2) {
            obj = null;
        } else {
            obj = this.A06.A07;
        }
        FC fc = this.A06.A04;
        long j = this.A06.A02;
        long j2 = this.A06.A01;
        if (z2) {
            trackGroupArray = TrackGroupArray.A04;
        } else {
            trackGroupArray = this.A06.A05;
        }
        AK ak = new AK(af, obj, fc, j, j2, i, false, trackGroupArray, z2 ? this.A0I : this.A06.A06);
        String[] strArr = A0N;
        if (strArr[6].length() != strArr[2].length()) {
            throw new RuntimeException();
        }
        A0N[7] = "Xqr2ExcYOBi8j1Q";
        return ak;
    }

    private void A05(AK ak, int i, boolean z, int timelineChangeReason) {
        int i2;
        AK ak2 = ak;
        this.A02 -= i;
        if (this.A02 == 0) {
            if (ak2.A02 == -9223372036854775807L) {
                ak2 = ak2.A04(ak2.A04, 0, ak2.A01);
            }
            if (!this.A06.A03.A0F() || this.A08) {
                AbstractC0373Af af = ak2.A03;
                String[] strArr = A0N;
                if (strArr[1].length() == strArr[3].length()) {
                    A0N[7] = "oGDG41JiAsT7PCq0";
                    if (af.A0F()) {
                        this.A00 = 0;
                        this.A01 = 0;
                        String[] strArr2 = A0N;
                        if (strArr2[6].length() == strArr2[2].length()) {
                            String[] strArr3 = A0N;
                            strArr3[1] = "vrOcQin3pszluGLq";
                            strArr3[3] = "REI4M31lEJcbEC2a";
                            this.A04 = 0;
                        }
                    }
                }
                throw new RuntimeException();
            }
            if (this.A08) {
                i2 = 0;
            } else {
                i2 = 2;
            }
            boolean z2 = this.A09;
            this.A08 = false;
            this.A09 = false;
            A06(ak2, z, timelineChangeReason, i2, z2, false);
        }
    }

    private void A06(AK ak, boolean z, int i, int i2, boolean z2, boolean z3) {
        boolean z4 = !this.A0J.isEmpty();
        this.A0J.addLast(new A4(ak, this.A06, this.A0K, this.A0H, z, i, i2, z2, this.A0A, z3));
        this.A06 = ak;
        if (!z4) {
            while (!this.A0J.isEmpty()) {
                this.A0J.peekFirst().A01();
                this.A0J.removeFirst();
            }
        }
    }

    private boolean A07() {
        return this.A06.A03.A0F() || this.A02 > 0;
    }

    public final int A08() {
        if (A07()) {
            return this.A00;
        }
        return this.A06.A04.A02;
    }

    public final void A09(int i) {
        A0A(i, -9223372036854775807L);
    }

    public final void A0A(int i, long j) {
        long A002;
        long j2;
        AbstractC0373Af af = this.A06.A03;
        if (i >= 0) {
            boolean A0F2 = af.A0F();
            if (A0N[5].length() == 22) {
                String[] strArr = A0N;
                strArr[6] = "k";
                strArr[2] = "F";
                if (A0F2 || i < af.A02()) {
                    this.A09 = true;
                    this.A02++;
                    boolean A0C2 = A0C();
                    if (A0N[7].length() != 1) {
                        String[] strArr2 = A0N;
                        strArr2[1] = "iOLxdGxzjtj8VTTv";
                        strArr2[3] = "k2rTYfByBhCiNj1b";
                        if (A0C2) {
                            String A022 = A02(2, 13, 112);
                            String[] strArr3 = A0N;
                            if (strArr3[4].length() == strArr3[0].length()) {
                                A0N[7] = "fs0FIhTd6T569fWM98lB5KOUS";
                                Log.w(A022, A02(50, 39, 10));
                                this.A0C.obtainMessage(0, 1, -1, this.A06).sendToTarget();
                                return;
                            }
                        } else {
                            this.A01 = i;
                            if (af.A0F()) {
                                int i2 = (j > -9223372036854775807L ? 1 : (j == -9223372036854775807L ? 0 : -1));
                                if (A0N[7].length() != 1) {
                                    A0N[5] = "dOqGbPzaS7jKfyvdUFqkQf";
                                    if (i2 == 0) {
                                        j2 = 0;
                                    } else {
                                        j2 = j;
                                    }
                                    this.A04 = j2;
                                    this.A00 = 0;
                                } else {
                                    throw new RuntimeException();
                                }
                            } else {
                                if (j == -9223372036854775807L) {
                                    A002 = af.A0C(i, this.A0G).A01();
                                } else {
                                    A002 = C03639u.A00(j);
                                }
                                Pair<Integer, Long> A082 = af.A08(this.A0G, this.A0F, i, A002);
                                this.A04 = C03639u.A01(A002);
                                this.A00 = ((Integer) A082.first).intValue();
                            }
                            this.A0E.A0z(af, i, C03639u.A00(j));
                            Iterator<AO> it = this.A0K.iterator();
                            while (it.hasNext()) {
                                AO next = it.next();
                                String[] strArr4 = A0N;
                                if (strArr4[4].length() != strArr4[0].length()) {
                                    throw new RuntimeException();
                                }
                                String[] strArr5 = A0N;
                                strArr5[1] = "l5NWk5x9vooO50uu";
                                strArr5[3] = "FcAzQ8glamB386Jq";
                                next.ABD(1);
                            }
                            return;
                        }
                    }
                }
            }
            throw new RuntimeException();
        }
        throw new AE(af, i, j);
    }

    /* JADX INFO: Multiple debug info for r6v0 'this'  com.facebook.ads.redexgen.X.EO: [D('playbackParameters' com.facebook.ads.redexgen.X.AL), D('playbackError' com.facebook.ads.redexgen.X.A0)] */
    public final void A0B(Message message) {
        int i = message.what;
        boolean z = true;
        if (i != 0) {
            if (i != 1) {
                String[] strArr = A0N;
                if (strArr[4].length() == strArr[0].length()) {
                    A0N[5] = "7KT5lT3IIkvardi0cOE285";
                    if (i == 2) {
                        A0 a0 = (A0) message.obj;
                        this.A05 = a0;
                        Iterator<AO> it = this.A0K.iterator();
                        while (true) {
                            boolean hasNext = it.hasNext();
                            String[] strArr2 = A0N;
                            if (strArr2[4].length() != strArr2[0].length()) {
                                throw new RuntimeException();
                            }
                            A0N[7] = "lr70Wm3MPuK1";
                            if (hasNext) {
                                it.next().AB9(a0);
                            } else {
                                return;
                            }
                        }
                    } else {
                        throw new IllegalStateException();
                    }
                }
            } else {
                AL al = (AL) message.obj;
                if (!this.A07.equals(al)) {
                    this.A07 = al;
                    CopyOnWriteArraySet<AO> copyOnWriteArraySet = this.A0K;
                    String[] strArr3 = A0N;
                    if (strArr3[6].length() == strArr3[2].length()) {
                        String[] strArr4 = A0N;
                        strArr4[1] = "XPkhdR3hZ8JGZkbg";
                        strArr4[3] = "HitM1md97HqEAHyx";
                        Iterator<AO> it2 = copyOnWriteArraySet.iterator();
                        while (it2.hasNext()) {
                            it2.next().AB7(al);
                        }
                        return;
                    }
                } else {
                    return;
                }
            }
            throw new RuntimeException();
        }
        AK ak = (AK) message.obj;
        int i2 = message.arg1;
        if (message.arg2 == -1) {
            z = false;
        }
        A05(ak, i2, z, message.arg2);
    }

    public final boolean A0C() {
        return !A07() && this.A06.A04.A02();
    }

    @Override // com.facebook.ads.redexgen.X.AT
    public final void A3I(AO ao) {
        this.A0K.add(ao);
    }

    @Override // com.facebook.ads.redexgen.X.YF
    public final AW A4L(AV av) {
        return new AW(this.A0E, av, this.A06.A03, A6A(), this.A0D);
    }

    @Override // com.facebook.ads.redexgen.X.AT
    public final int A5k() {
        long A5l = A5l();
        long A6I = A6I();
        if (A5l != -9223372036854775807L) {
            int i = (A6I > -9223372036854775807L ? 1 : (A6I == -9223372036854775807L ? 0 : -1));
            String[] strArr = A0N;
            if (strArr[6].length() != strArr[2].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0N;
            strArr2[6] = "7";
            strArr2[2] = ADRequestList.ORDER_NULL;
            if (i != 0) {
                String[] strArr3 = A0N;
                if (strArr3[4].length() != strArr3[0].length()) {
                    throw new RuntimeException();
                }
                String[] strArr4 = A0N;
                strArr4[6] = "w";
                strArr4[2] = "D";
                if (A6I == 0) {
                    return 100;
                }
                return C0556Ic.A06((int) ((100 * A5l) / A6I), 0, 100);
            }
        }
        return 0;
    }

    @Override // com.facebook.ads.redexgen.X.AT
    public final long A5l() {
        if (A07()) {
            return this.A04;
        }
        return A00(this.A06.A09);
    }

    @Override // com.facebook.ads.redexgen.X.AT
    public final long A62() {
        if (!A0C()) {
            return A67();
        }
        this.A06.A03.A0A(this.A06.A04.A02, this.A0F);
        return this.A0F.A08() + C03639u.A01(this.A06.A01);
    }

    @Override // com.facebook.ads.redexgen.X.AT
    public final int A64() {
        if (A0C()) {
            return this.A06.A04.A00;
        }
        return -1;
    }

    @Override // com.facebook.ads.redexgen.X.AT
    public final int A65() {
        if (A0C()) {
            return this.A06.A04.A01;
        }
        return -1;
    }

    @Override // com.facebook.ads.redexgen.X.AT
    public final long A67() {
        if (A07()) {
            return this.A04;
        }
        return A00(this.A06.A0A);
    }

    @Override // com.facebook.ads.redexgen.X.AT
    public final AbstractC0373Af A69() {
        return this.A06.A03;
    }

    @Override // com.facebook.ads.redexgen.X.AT
    public final int A6A() {
        if (A07()) {
            return this.A01;
        }
        return this.A06.A03.A0A(this.A06.A04.A02, this.A0F).A00;
    }

    @Override // com.facebook.ads.redexgen.X.AT
    public final long A6I() {
        AbstractC0373Af af = this.A06.A03;
        if (af.A0F()) {
            return -9223372036854775807L;
        }
        if (!A0C()) {
            return af.A0C(A6A(), this.A0G).A02();
        }
        FC fc = this.A06.A04;
        af.A0A(fc.A02, this.A0F);
        return C03639u.A01(this.A0F.A0A(fc.A00, fc.A01));
    }

    @Override // com.facebook.ads.redexgen.X.AT
    public final boolean A6z() {
        return this.A0A;
    }

    @Override // com.facebook.ads.redexgen.X.YF
    public final void ACW(FE fe, boolean z, boolean z2) {
        this.A05 = null;
        AK A012 = A01(z, z2, 2);
        this.A08 = true;
        this.A02++;
        this.A0E.A10(fe, z, z2);
        A06(A012, false, 4, 1, false, false);
    }

    @Override // com.facebook.ads.redexgen.X.AT
    public final void ACz() {
        StringBuilder sb = new StringBuilder();
        sb.append(A02(38, 8, 2));
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(A02(0, 2, 7));
        sb.append(A02(15, 18, 78));
        String A022 = A02(47, 3, 94);
        sb.append(A022);
        sb.append(C0556Ic.A04);
        sb.append(A022);
        sb.append(AA.A00());
        sb.append(A02(46, 1, 86));
        Log.i(A02(2, 13, 112), sb.toString());
        this.A0E.A0y();
        this.A0C.removeCallbacksAndMessages(null);
    }

    @Override // com.facebook.ads.redexgen.X.AT
    public final void ADY(long j) {
        A0A(A6A(), j);
    }

    @Override // com.facebook.ads.redexgen.X.AT
    public final void ADZ() {
        A09(A6A());
    }

    @Override // com.facebook.ads.redexgen.X.AT
    public final void ADp(boolean z) {
        if (this.A0A != z) {
            this.A0A = z;
            this.A0E.A11(z);
            A06(this.A06, false, 4, 1, false, true);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AT
    public final void AED(boolean z) {
        if (z) {
            this.A05 = null;
        }
        AK A012 = A01(z, z, 1);
        this.A02++;
        this.A0E.A12(z);
        A06(A012, false, 4, 1, false, false);
    }
}
