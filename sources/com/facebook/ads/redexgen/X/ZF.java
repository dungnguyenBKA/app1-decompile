package com.facebook.ads.redexgen.X;

import android.util.Log;
import android.util.Pair;
import android.util.SparseArray;
import androidx.annotation.Nullable;
import com.facebook.ads.internal.exoplayer2.Format;
import com.facebook.ads.internal.exoplayer2.drm.DrmInitData;
import com.facebook.ads.internal.exoplayer2.extractor.mp4.Atom;
import com.facebook.ads.internal.exoplayer2.extractor.mp4.DefaultSampleValues;
import com.google.ads.ADRequestList;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.UUID;
import org.apache.http.HttpStatus;

public final class ZF implements CG {
    public static byte[] A0X;
    public static String[] A0Y;
    public static final CJ A0Z = new ZE();
    public static final int A0a = C0556Ic.A08(A0A(682, 4, 24));
    public static final Format A0b = Format.A02(null, A0A(664, 18, 55), Long.MAX_VALUE);
    public static final byte[] A0c = {-94, 57, 79, 82, 90, -101, 79, 20, -94, 68, 108, 66, 124, 100, -115, -12};
    public int A00;
    public int A01;
    public int A02;
    public int A03;
    public int A04;
    public int A05;
    public int A06;
    public long A07;
    public long A08;
    public long A09;
    public long A0A;
    public long A0B;
    public CI A0C;
    public Ct A0D;
    public IM A0E;
    public boolean A0F;
    public boolean A0G;
    public CS[] A0H;
    public CS[] A0I;
    public final int A0J;
    public final SparseArray<Ct> A0K;
    @Nullable
    public final DrmInitData A0L;
    @Nullable
    public final CS A0M;
    @Nullable
    public final D2 A0N;
    public final IM A0O;
    public final IM A0P;
    public final IM A0Q;
    public final IM A0R;
    @Nullable
    public final IY A0S;
    public final ArrayDeque<Z9> A0T;
    public final ArrayDeque<C0430Cs> A0U;
    public final List<Format> A0V;
    public final byte[] A0W;

    /* JADX WARNING: Error to parse debug info: Index 25 out of bounds for length 23 in method: com.facebook.ads.redexgen.X.ZF.A04(com.facebook.ads.redexgen.X.IM, long):android.util.Pair<java.lang.Long, com.facebook.ads.redexgen.X.Yo>, file: assets/audience_network.dex
    java.lang.ArrayIndexOutOfBoundsException: Index 25 out of bounds for length 23
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.startVar(DebugInfoParser.java:221)
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:127)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:111)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:569)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:44)
     */
    public static Pair<Long, C0972Yo> A04(IM im, long j) throws AJ {
        long A0O2;
        long A0O3;
        im.A0Z(8);
        int A012 = AbstractC0420Ch.A01(im.A09());
        im.A0a(4);
        long A0N2 = im.A0N();
        if (A012 == 0) {
            A0O2 = im.A0N();
            A0O3 = j + im.A0N();
        } else {
            A0O2 = im.A0O();
            A0O3 = j + im.A0O();
        }
        long A0F2 = C0556Ic.A0F(A0O2, 1000000, A0N2);
        im.A0a(2);
        int A0J2 = im.A0J();
        int[] iArr = new int[A0J2];
        long[] jArr = new long[A0J2];
        long[] jArr2 = new long[A0J2];
        long[] jArr3 = new long[A0J2];
        if (A0Y[2].charAt(18) != 'K') {
            throw new RuntimeException();
        }
        A0Y[5] = ADRequestList.SELF;
        int i = 0;
        long j2 = A0F2;
        while (i < A0J2) {
            int A092 = im.A09();
            if ((Integer.MIN_VALUE & A092) == 0) {
                long A0N3 = im.A0N();
                iArr[i] = Integer.MAX_VALUE & A092;
                jArr[i] = A0O3;
                jArr3[i] = j2;
                A0O2 += A0N3;
                j2 = C0556Ic.A0F(A0O2, 1000000, A0N2);
                jArr2[i] = j2 - jArr3[i];
                im.A0a(4);
                int i2 = iArr[i];
                if (A0Y[3].length() != 6) {
                    A0Y[1] = "dhc";
                    A0O3 += (long) i2;
                    i += 0;
                } else {
                    A0Y[5] = ADRequestList.ORDER_H;
                    A0O3 += (long) i2;
                    i++;
                }
            } else {
                throw new AJ(A0A(581, 28, 75));
            }
        }
        return Pair.create(Long.valueOf(A0F2), new C0972Yo(iArr, jArr, jArr2, jArr3));
    }

    public static String A0A(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0X, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 85);
        }
        return new String(copyOfRange);
    }

    public static void A0D() {
        A0X = new byte[]{76, 64, 11, 62, 37, 39, 106, 57, 35, 48, 47, 106, 38, 47, 57, 57, 106, 62, 34, 43, 36, 106, 34, 47, 43, 46, 47, 56, 106, 38, 47, 36, 45, 62, 34, 106, 98, 63, 36, 57, 63, 58, 58, 37, 56, 62, 47, 46, 99, 100, 104, 67, 89, 95, 84, 13, 78, 66, 88, 67, 89, 13, 68, 67, 13, 94, 79, 74, 93, 13, 12, 16, 13, 28, 13, 5, 88, 67, 94, 88, 93, 93, 66, 95, 89, 72, 73, 4, 3, 5, 46, 52, 50, 57, 96, 35, 47, 53, 46, 52, 96, 41, 46, 96, 51, 39, 48, 36, 96, 97, 125, 96, 113, 96, 104, 53, 46, 51, 53, 48, 48, 47, 50, 52, 37, 36, 105, 110, 29, 41, 58, 60, 54, 62, 53, 47, 62, 63, 22, 43, 111, 30, 35, 47, 41, 58, 56, 47, 52, 41, 4, 42, 35, 34, 63, 36, 35, 42, 109, 35, 40, 42, 44, 57, 36, 59, 40, 109, 34, 43, 43, 62, 40, 57, 109, 57, 34, 109, 62, 44, 32, 61, 33, 40, 109, 41, 44, 57, 44, 99, 110, 71, 67, 68, 2, 67, 86, 77, 79, 2, 70, 71, 68, 75, 76, 71, 81, 2, 71, 90, 86, 71, 76, 70, 71, 70, 2, 67, 86, 77, 79, 2, 81, 75, 88, 71, 2, 10, 87, 76, 81, 87, 82, 82, 77, 80, 86, 71, 70, 11, 12, 38, 15, 11, 12, 74, 11, 30, 5, 7, 74, 29, 3, 30, 2, 74, 6, 15, 4, 13, 30, 2, 74, 84, 74, 88, 91, 94, 93, 94, 82, 89, 92, 94, 93, 74, 66, 31, 4, 25, 31, 26, 26, 5, 24, 30, 15, 14, 67, 68, 97, 72, 67, 74, 89, 69, 13, 64, 68, 94, 64, 76, 89, 78, 69, 23, 13, 88, 113, 113, 100, 114, 99, 55, 99, 120, 55, 114, 121, 116, 101, 110, 103, 99, 126, 120, 121, 55, 115, 118, 99, 118, 55, 96, 118, 100, 55, 121, 114, 112, 118, 99, 126, 97, 114, 57, 22, 63, 63, 42, 60, 45, 121, 45, 54, 121, 60, 55, 61, 121, 54, 63, 121, 52, 61, 56, 45, 121, 46, 56, 42, 121, 55, 60, 62, 56, 45, 48, 47, 60, 119, 84, 109, 126, 105, 105, 114, Byte.MAX_VALUE, 114, 117, 124, 59, 79, 105, 122, 120, 112, 94, 117, 120, 105, 98, 107, 111, 114, 116, 117, 89, 116, 99, 59, 107, 122, 105, 122, 118, 126, 111, 126, 105, 104, 59, 114, 104, 59, 110, 117, 104, 110, 107, 107, 116, 105, 111, 126, Byte.MAX_VALUE, 53, 107, 83, 81, 72, 72, 93, 92, 24, 72, 75, 75, 80, 24, 89, 76, 87, 85, 24, 16, 94, 89, 81, 84, 93, 92, 24, 76, 87, 24, 93, 64, 76, 74, 89, 91, 76, 24, 77, 77, 81, 92, 17, 105, 81, 83, 74, 74, 83, 84, 93, 26, 91, 78, 85, 87, 26, 77, 83, 78, 82, 26, 86, 95, 84, 93, 78, 82, 26, 4, 26, 8, 11, 14, 13, 14, 2, 9, 12, 14, 13, 26, 18, 79, 84, 73, 79, 74, 74, 85, 72, 78, 95, 94, 19, 20, 11, 48, 59, 38, 46, 59, 61, 42, 59, 58, 126, 51, 49, 49, 40, 126, 60, 49, 38, 112, 95, 100, 111, 114, 122, 111, 105, 126, 111, 110, 42, 121, 107, 99, 101, 42, 111, 100, 126, 120, 115, 42, 105, 101, Byte.MAX_VALUE, 100, 126, 48, 42, 75, 112, 118, Byte.MAX_VALUE, 112, 122, 114, 123, 122, 62, 119, 112, 122, 119, 108, 123, 125, 106, 62, 108, 123, 120, 123, 108, 123, 112, 125, 123, 41, 30, 13, 22, 30, 29, 19, 26, 95, 19, 26, 17, 24, 11, 23, 95, 27, 26, 12, 28, 13, 22, 15, 11, 22, 16, 17, 95, 22, 17, 95, 12, 24, 15, 27, 95, 25, 16, 10, 17, 27, 95, 87, 10, 17, 12, 10, 15, 15, 16, 13, 11, 26, 27, 86, 3, 18, 18, 14, 11, 1, 3, 22, 11, 13, 12, 77, 26, 79, 7, 15, 17, 5, 62, 40, 36, 42, 46, 49, 60, 61, 55, 119, 48, 61, 46, 59, 61, 34, 47, 46, 36, 100, 38, 59, Byte.MAX_VALUE};
    }

    public static void A0E() {
        A0Y = new String[]{"bw2Pz5UYSLOOesGIJaWlA3GOzVLZPAg", "gG3", "yjdYoV9UEi8qMqqcqGKRK6SXbov0CwAj", "4kzePG", "OMn6r0AgRGwk9BJzU", "o", "aMFqcwP4FMZJ2yTkvuTBoGT2vGZy4ax", "h66GloOgbywQ1e6PB204dGM9vAJrPucq"};
    }

    /* JADX WARNING: Error to parse debug info: Index 13 out of bounds for length 13 in method: com.facebook.ads.redexgen.X.ZF.A0N(com.facebook.ads.redexgen.X.Z9, android.util.SparseArray<com.facebook.ads.redexgen.X.Ct>, int, byte[]):void, file: assets/audience_network.dex
    java.lang.ArrayIndexOutOfBoundsException: Index 13 out of bounds for length 13
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.startVar(DebugInfoParser.java:221)
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:127)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:111)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:569)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:44)
     */
    public static void A0N(Z9 z9, SparseArray<Ct> sparseArray, int i, byte[] bArr) throws AJ {
        Ct A092 = A09(z9.A07(AbstractC0420Ch.A1I).A00, sparseArray);
        if (A092 != null) {
            D4 d4 = A092.A07;
            long j = d4.A06;
            A092.A05();
            if (z9.A07(AbstractC0420Ch.A1H) != null && (i & 2) == 0) {
                j = A02(z9.A07(AbstractC0420Ch.A1H).A00);
            }
            A0O(z9, A092, j, i);
            D3 A002 = A092.A05.A00(d4.A07.A02);
            ZA A072 = z9.A07(AbstractC0420Ch.A0u);
            if (A072 != null) {
                A0Q(A002, A072.A00, d4);
            }
            ZA A073 = z9.A07(AbstractC0420Ch.A0t);
            if (A073 != null) {
                A0T(A073.A00, d4);
            }
            ZA A074 = z9.A07(AbstractC0420Ch.A10);
            if (A074 != null) {
                A0U(A074.A00, d4);
            }
            ZA A075 = z9.A07(AbstractC0420Ch.A0x);
            ZA A076 = z9.A07(AbstractC0420Ch.A11);
            if (!(A075 == null || A076 == null)) {
                A0W(A075.A00, A076.A00, A002 != null ? A002.A02 : null, d4);
            }
            int size = z9.A02.size();
            for (int i2 = 0; i2 < size; i2++) {
                ZA za = z9.A02.get(i2);
                int i3 = ((AbstractC0420Ch) za).A00;
                int i4 = AbstractC0420Ch.A1Q;
                if (A0Y[7].charAt(27) != 'r') {
                    throw new RuntimeException();
                }
                String[] strArr = A0Y;
                strArr[6] = "tWuQt3qCpORkhzaHtCNFkUwj420xxTd";
                strArr[4] = "yKRRCTery0iDoE3P4";
                if (i3 == i4) {
                    A0V(za.A00, d4, bArr);
                }
            }
        }
    }

    static {
        A0E();
        A0D();
    }

    public ZF() {
        this(0);
    }

    public ZF(int i) {
        this(i, null);
    }

    public ZF(int i, @Nullable IY iy) {
        this(i, iy, null, null);
    }

    public ZF(int i, @Nullable IY iy, @Nullable D2 d2, @Nullable DrmInitData drmInitData) {
        this(i, iy, d2, drmInitData, Collections.emptyList());
    }

    public ZF(int i, @Nullable IY iy, @Nullable D2 d2, @Nullable DrmInitData drmInitData, List<Format> closedCaptionFormats) {
        this(i, iy, d2, drmInitData, closedCaptionFormats, null);
    }

    public ZF(int i, @Nullable IY iy, @Nullable D2 d2, @Nullable DrmInitData drmInitData, List<Format> list, @Nullable CS cs) {
        int i2;
        if (d2 != null) {
            i2 = 8;
        } else {
            i2 = 0;
        }
        this.A0J = i2 | i;
        this.A0S = iy;
        this.A0N = d2;
        this.A0L = drmInitData;
        this.A0V = Collections.unmodifiableList(list);
        this.A0M = cs;
        this.A0O = new IM(16);
        this.A0R = new IM(II.A03);
        this.A0Q = new IM(5);
        this.A0P = new IM();
        this.A0W = new byte[16];
        this.A0T = new ArrayDeque<>();
        this.A0U = new ArrayDeque<>();
        this.A0K = new SparseArray<>();
        this.A08 = -9223372036854775807L;
        this.A0A = -9223372036854775807L;
        this.A0B = -9223372036854775807L;
        A0B();
    }

    /* JADX INFO: Multiple debug info for r29v0 int: [D('workaroundEveryVideoFrameIsSyncFrame' boolean), D('fullAtom' int)] */
    /* JADX INFO: Multiple debug info for r2v30 long: [D('defaultSampleValues' com.facebook.ads.redexgen.X.Cn), D('sampleIsSyncFrameTable' boolean[])] */
    /* JADX INFO: Multiple debug info for r5v1 int: [D('defaultSampleValues' com.facebook.ads.redexgen.X.Cn), D('sampleOffset' int)] */
    /* JADX WARNING: Code restructure failed: missing block: B:25:0x00af, code lost:
        if (r10 != 0) goto L_0x00b1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:47:0x0110, code lost:
        if (r10 != 0) goto L_0x00b1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:48:0x0113, code lost:
        r22 = false;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static int A00(com.facebook.ads.redexgen.X.Ct r28, int r29, long r30, int r32, com.facebook.ads.redexgen.X.IM r33, int r34) {
        /*
        // Method dump skipped, instructions count: 465
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.ZF.A00(com.facebook.ads.redexgen.X.Ct, int, long, int, com.facebook.ads.redexgen.X.IM, int):int");
    }

    public static long A01(IM im) {
        im.A0Z(8);
        return AbstractC0420Ch.A01(im.A09()) == 0 ? im.A0N() : im.A0O();
    }

    public static long A02(IM im) {
        im.A0Z(8);
        return AbstractC0420Ch.A01(im.A09()) == 1 ? im.A0O() : im.A0N();
    }

    public static Pair<Integer, C0426Cn> A03(IM im) {
        im.A0Z(12);
        return Pair.create(Integer.valueOf(im.A09()), new C0426Cn(im.A0I() - 1, im.A0I(), im.A0I(), im.A09()));
    }

    public static DrmInitData A05(List<ZA> list) {
        ArrayList arrayList = null;
        int i = list.size();
        for (int i2 = 0; i2 < i; i2++) {
            ZA za = list.get(i2);
            if (((AbstractC0420Ch) za).A00 == AbstractC0420Ch.A0r) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                byte[] bArr = za.A00.A00;
                UUID A032 = Cz.A03(bArr);
                if (A032 == null) {
                    Log.w(A0A(128, 22, 14), A0A(437, 42, FacebookMediationAdapter.ERROR_CREATE_NATIVE_AD_FROM_BID_PAYLOAD));
                } else {
                    arrayList.add(new DrmInitData.SchemeData(A032, A0A(696, 9, 30), bArr));
                }
            }
        }
        if (arrayList == null) {
            return null;
        }
        return new DrmInitData(arrayList);
    }

    private C0426Cn A06(SparseArray<C0426Cn> sparseArray, int i) {
        if (sparseArray.size() != 1) {
            return (C0426Cn) C0551Hx.A01(sparseArray.get(i));
        }
        if (A0Y[7].charAt(27) != 'r') {
            throw new RuntimeException();
        }
        A0Y[3] = "nw8rk4";
        return sparseArray.valueAt(0);
    }

    /* JADX INFO: Multiple debug info for r3v1 com.facebook.ads.redexgen.X.Ct: [D('trunOffset' long), D('trackBundlesSize' int)] */
    public static Ct A07(SparseArray<Ct> sparseArray) {
        Ct ct = null;
        long j = Long.MAX_VALUE;
        int i = sparseArray.size();
        for (int i2 = 0; i2 < i; i2++) {
            Ct valueAt = sparseArray.valueAt(i2);
            if (valueAt.A02 != valueAt.A07.A02) {
                long j2 = valueAt.A07.A0G[valueAt.A02];
                if (j2 < j) {
                    ct = valueAt;
                    j = j2;
                }
            }
        }
        return ct;
    }

    @Nullable
    public static Ct A08(SparseArray<Ct> sparseArray, int i) {
        if (sparseArray.size() == 1) {
            return sparseArray.valueAt(0);
        }
        Ct ct = sparseArray.get(i);
        if (A0Y[0].length() != 21) {
            A0Y[1] = "fYJ";
            return ct;
        }
        throw new RuntimeException();
    }

    /* JADX INFO: Multiple debug info for r0v2 int: [D('trackId' int), D('trackBundles' android.util.SparseArray<com.facebook.ads.internal.exoplayer2.extractor.mp4.FragmentedMp4Extractor$TrackBundle>)] */
    public static Ct A09(IM im, SparseArray<Ct> sparseArray) {
        int i;
        int i2;
        int i3;
        int i4;
        im.A0Z(8);
        int A002 = AbstractC0420Ch.A00(im.A09());
        Ct A082 = A08(sparseArray, im.A09());
        if (A082 == null) {
            return null;
        }
        if ((A002 & 1) != 0) {
            long A0O2 = im.A0O();
            A082.A07.A05 = A0O2;
            A082.A07.A04 = A0O2;
        }
        C0426Cn cn2 = A082.A04;
        if ((A002 & 2) != 0) {
            i = im.A0I() - 1;
        } else {
            i = cn2.A02;
        }
        if ((A002 & 8) != 0) {
            i2 = im.A0I();
        } else {
            i2 = cn2.A00;
        }
        if ((A002 & 16) != 0) {
            i3 = im.A0I();
        } else {
            i3 = cn2.A03;
        }
        if ((A002 & 32) != 0) {
            i4 = im.A0I();
        } else {
            i4 = cn2.A01;
        }
        A082.A07.A07 = new C0426Cn(i, i2, i3, i4);
        return A082;
    }

    private void A0B() {
        this.A02 = 0;
        this.A00 = 0;
    }

    /* JADX INFO: Multiple debug info for r6v0 'this'  com.facebook.ads.redexgen.X.ZF: [D('emsgTrackOutputCount' int), D('i' int)] */
    private void A0C() {
        if (this.A0I == null) {
            this.A0I = new CS[2];
            int i = 0;
            CS cs = this.A0M;
            if (cs != null) {
                this.A0I[0] = cs;
                i = 0 + 1;
            }
            if ((this.A0J & 4) != 0) {
                this.A0I[i] = this.A0C.AEM(this.A0K.size(), 4);
                i++;
            }
            this.A0I = (CS[]) Arrays.copyOf(this.A0I, i);
            for (CS cs2 : this.A0I) {
                cs2.A5P(A0b);
            }
        }
        if (this.A0H == null) {
            this.A0H = new CS[this.A0V.size()];
            for (int i2 = 0; i2 < this.A0H.length; i2++) {
                CS AEM = this.A0C.AEM(this.A0K.size() + 1 + i2, 3);
                AEM.A5P(this.A0V.get(i2));
                this.A0H[i2] = AEM;
                String[] strArr = A0Y;
                if (strArr[6].length() != strArr[4].length()) {
                    A0Y[7] = "E0z9VN5IoStoNoHPwfepvpkncforV8p8";
                } else {
                    throw new RuntimeException();
                }
            }
        }
    }

    private void A0F(long j) {
        while (!this.A0U.isEmpty()) {
            C0430Cs removeFirst = this.A0U.removeFirst();
            this.A03 -= removeFirst.A00;
            long j2 = j + removeFirst.A01;
            IY iy = this.A0S;
            if (iy != null) {
                j2 = iy.A07(j2);
            }
            for (CS cs : this.A0I) {
                cs.ADS(j2, 1, removeFirst.A00, this.A03, null);
            }
        }
    }

    private void A0G(long j) throws AJ {
        while (!this.A0T.isEmpty() && this.A0T.peek().A00 == j) {
            A0J(this.A0T.pop());
        }
        A0B();
    }

    private void A0H(CH ch) throws IOException, InterruptedException {
        int i = ((int) this.A07) - this.A00;
        IM im = this.A0E;
        if (im != null) {
            ch.readFully(im.A00, 8, i);
            A0P(new ZA(this.A01, this.A0E), ch.A71());
        } else {
            ch.AE3(i);
        }
        A0G(ch.A71());
    }

    private void A0I(CH ch) throws IOException, InterruptedException {
        Ct ct = null;
        long j = Long.MAX_VALUE;
        int size = this.A0K.size();
        for (int i = 0; i < size; i++) {
            D4 d4 = this.A0K.valueAt(i).A07;
            if (d4.A0B) {
                int i2 = (d4.A04 > j ? 1 : (d4.A04 == j ? 0 : -1));
                if (A0Y[2].charAt(18) != 'K') {
                    throw new RuntimeException();
                }
                A0Y[3] = "TcDom5";
                if (i2 < 0) {
                    j = d4.A04;
                    ct = this.A0K.valueAt(i);
                }
            }
        }
        if (ct != null) {
            long A71 = j - ch.A71();
            if (A0Y[3].length() != 6) {
                throw new RuntimeException();
            }
            A0Y[0] = "Cvsa72edMITB5GhT";
            int bytesToSkip = (int) A71;
            if (bytesToSkip >= 0) {
                ch.AE3(bytesToSkip);
                ct.A07.A05(ch);
                return;
            }
            throw new AJ(A0A(HttpStatus.SC_TEMPORARY_REDIRECT, 39, 66));
        } else if (A0Y[3].length() != 6) {
            throw new RuntimeException();
        } else {
            A0Y[2] = "BU1FqSGZUKIp3lmSYzKBGxc2Z86jKcpe";
            this.A02 = 3;
        }
    }

    private void A0J(Z9 z9) throws AJ {
        if (((AbstractC0420Ch) z9).A00 == AbstractC0420Ch.A0j) {
            A0L(z9);
        } else if (((AbstractC0420Ch) z9).A00 == AbstractC0420Ch.A0i) {
            A0K(z9);
        } else if (!this.A0T.isEmpty()) {
            ArrayDeque<Z9> arrayDeque = this.A0T;
            if (A0Y[1].length() != 3) {
                throw new RuntimeException();
            }
            A0Y[7] = "6RjYlEZz613sKxZIpZ2APlvoVeArWnyB";
            arrayDeque.peek().A08(z9);
        }
    }

    private void A0K(Z9 z9) throws AJ {
        DrmInitData A052;
        A0M(z9, this.A0K, this.A0J, this.A0W);
        if (this.A0L != null) {
            A052 = null;
        } else {
            A052 = A05(z9.A02);
        }
        if (A052 != null) {
            int i = this.A0K.size();
            for (int i2 = 0; i2 < i; i2++) {
                this.A0K.valueAt(i2).A07(A052);
            }
        }
        if (this.A0A != -9223372036854775807L) {
            int size = this.A0K.size();
            for (int i3 = 0; i3 < size; i3++) {
                this.A0K.valueAt(i3).A06(this.A0A);
            }
            this.A0A = -9223372036854775807L;
        }
    }

    /* JADX DEBUG: Multi-variable search result rejected for r14v0, resolved type: com.facebook.ads.redexgen.X.ZF */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: Multiple debug info for r3v3 int: [D('duration' long), D('atom' com.facebook.ads.redexgen.X.ZA)] */
    /* JADX INFO: Multiple debug info for r3v4 android.util.SparseArray: [D('track' com.facebook.ads.redexgen.X.D2), D('trackCount' int)] */
    private void A0L(Z9 z9) throws AJ {
        boolean z;
        boolean z2;
        boolean z3;
        if (this.A0N == null) {
            z = true;
        } else {
            z = false;
        }
        C0551Hx.A06(z, A0A(532, 20, 11));
        DrmInitData drmInitData = this.A0L;
        if (drmInitData == null) {
            drmInitData = A05(z9.A02);
        }
        Z9 A062 = z9.A06(AbstractC0420Ch.A0m);
        SparseArray sparseArray = new SparseArray();
        long j = -9223372036854775807L;
        int size = A062.A02.size();
        for (int i = 0; i < size; i++) {
            ZA za = A062.A02.get(i);
            if (((AbstractC0420Ch) za).A00 == AbstractC0420Ch.A1M) {
                Pair<Integer, DefaultSampleValues> trexData = A03(za.A00);
                sparseArray.put(((Integer) trexData.first).intValue(), trexData.second);
            } else if (((AbstractC0420Ch) za).A00 == AbstractC0420Ch.A0f) {
                j = A01(za.A00);
            }
        }
        SparseArray sparseArray2 = new SparseArray();
        int size2 = z9.A01.size();
        for (int i2 = 0; i2 < size2; i2++) {
            Z9 z92 = z9.A01.get(i2);
            if (((AbstractC0420Ch) z92).A00 == AbstractC0420Ch.A1L) {
                ZA A072 = z9.A07(AbstractC0420Ch.A0n);
                if ((this.A0J & 16) != 0) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                D2 A0C2 = C0425Cm.A0C(z92, A072, j, drmInitData, z3, false);
                if (A0C2 != null) {
                    sparseArray2.put(A0C2.A00, A0C2);
                }
            }
        }
        int size3 = sparseArray2.size();
        if (this.A0K.size() == 0) {
            for (int i3 = 0; i3 < size3; i3++) {
                D2 d2 = (D2) sparseArray2.valueAt(i3);
                Ct ct = new Ct(this.A0C.AEM(i3, d2.A03));
                ct.A08(d2, A06(sparseArray, d2.A00));
                this.A0K.put(d2.A00, ct);
                this.A08 = Math.max(this.A08, d2.A04);
            }
            A0C();
            if (A0Y[5].length() != 1) {
                throw new RuntimeException();
            }
            A0Y[5] = "d";
            this.A0C.A5B();
            return;
        }
        if (this.A0K.size() == size3) {
            z2 = true;
        } else {
            z2 = false;
        }
        C0551Hx.A04(z2);
        for (int i4 = 0; i4 < size3; i4++) {
            D2 d22 = (D2) sparseArray2.valueAt(i4);
            this.A0K.get(d22.A00).A08(d22, A06(sparseArray, d22.A00));
        }
    }

    public static void A0M(Z9 z9, SparseArray<Ct> sparseArray, int i, byte[] bArr) throws AJ {
        int size = z9.A01.size();
        for (int i2 = 0; i2 < size; i2++) {
            Z9 z92 = z9.A01.get(i2);
            if (((AbstractC0420Ch) z92).A00 == AbstractC0420Ch.A1K) {
                A0N(z92, sparseArray, i, bArr);
            }
        }
    }

    /* JADX INFO: Multiple debug info for r7v1 'totalSampleCount'  int: [D('trunCount' int), D('trunData' com.facebook.ads.redexgen.X.IM)] */
    public static void A0O(Z9 z9, Ct ct, long j, int i) {
        int totalSampleCount = 0;
        int trunSampleCount = 0;
        List<Atom.LeafAtom> leafChildren = z9.A02;
        int leafChildrenSize = leafChildren.size();
        for (int trunCount = 0; trunCount < leafChildrenSize; trunCount++) {
            ZA za = (ZA) leafChildren.get(trunCount);
            int i2 = ((AbstractC0420Ch) za).A00;
            int i3 = AbstractC0420Ch.A1N;
            if (A0Y[2].charAt(18) != 'K') {
                throw new RuntimeException();
            }
            A0Y[0] = "HX3CrwnoNkNpp8Diq6RFqVXtJKh";
            if (i2 == i3) {
                IM im = za.A00;
                im.A0Z(12);
                int A0I2 = im.A0I();
                if (A0I2 > 0) {
                    trunSampleCount += A0I2;
                    totalSampleCount++;
                }
            }
        }
        ct.A02 = 0;
        ct.A00 = 0;
        ct.A01 = 0;
        ct.A07.A04(totalSampleCount, trunSampleCount);
        int i4 = 0;
        int i5 = 0;
        if (A0Y[7].charAt(27) == 'r') {
            A0Y[1] = "K2a";
        }
        for (int i6 = 0; i6 < leafChildrenSize; i6++) {
            ZA za2 = (ZA) leafChildren.get(i6);
            if (((AbstractC0420Ch) za2).A00 == AbstractC0420Ch.A1N) {
                i5 = A00(ct, i4, j, i, za2.A00, i5);
                i4++;
            }
        }
    }

    private void A0P(ZA za, long j) throws AJ {
        if (!this.A0T.isEmpty()) {
            this.A0T.peek().A09(za);
        } else if (((AbstractC0420Ch) za).A00 == AbstractC0420Ch.A12) {
            Pair<Long, C0972Yo> A042 = A04(za.A00, j);
            this.A0B = ((Long) A042.first).longValue();
            this.A0C.ADX((CP) A042.second);
            this.A0F = true;
        } else if (((AbstractC0420Ch) za).A00 == AbstractC0420Ch.A0P) {
            A0R(za.A00);
        }
    }

    /* JADX INFO: Multiple debug info for r7v1 int: [D('i' int), D('vectorSize' int)] */
    public static void A0Q(D3 d3, IM im, D4 d4) throws AJ {
        boolean z;
        int flags = d3.A00;
        im.A0Z(8);
        boolean z2 = true;
        if ((AbstractC0420Ch.A00(im.A09()) & 1) == 1) {
            im.A0a(8);
        }
        int vectorSize = im.A0F();
        int A0I2 = im.A0I();
        String[] strArr = A0Y;
        if (strArr[6].length() != strArr[4].length()) {
            A0Y[3] = "qY4fk5";
            if (A0I2 == d4.A00) {
                int i = 0;
                if (vectorSize == 0) {
                    boolean[] zArr = d4.A0H;
                    for (int sampleCount = 0; sampleCount < A0I2; sampleCount++) {
                        int totalSize = im.A0F();
                        i += totalSize;
                        if (totalSize > flags) {
                            z = true;
                        } else {
                            z = false;
                        }
                        zArr[sampleCount] = z;
                    }
                } else {
                    if (vectorSize <= flags) {
                        z2 = false;
                    }
                    i = 0 + (vectorSize * A0I2);
                    Arrays.fill(d4.A0H, 0, A0I2, z2);
                }
                d4.A03(i);
                return;
            }
            throw new AJ(A0A(290, 17, 120) + A0I2 + A0A(0, 2, 53) + d4.A00);
        }
        throw new RuntimeException();
    }

    private void A0R(IM im) {
        CS[] csArr = this.A0I;
        if (!(csArr == null || csArr.length == 0)) {
            im.A0Z(12);
            int A052 = im.A05();
            im.A0R();
            im.A0R();
            long A0F2 = C0556Ic.A0F(im.A0N(), 1000000, im.A0N());
            CS[] csArr2 = this.A0I;
            for (CS cs : csArr2) {
                im.A0Z(12);
                cs.ADR(im, A052);
            }
            long j = this.A0B;
            if (j != -9223372036854775807L) {
                long j2 = j + A0F2;
                IY iy = this.A0S;
                if (iy != null) {
                    j2 = iy.A07(j2);
                }
                for (CS cs2 : this.A0I) {
                    cs2.ADS(j2, 1, A052, 0, null);
                }
                return;
            }
            this.A0U.addLast(new C0430Cs(A0F2, A052));
            this.A03 += A052;
        }
    }

    public static void A0S(IM im, int i, D4 d4) throws AJ {
        boolean z;
        im.A0Z(i + 8);
        int A002 = AbstractC0420Ch.A00(im.A09());
        if ((A002 & 1) == 0) {
            if ((A002 & 2) != 0) {
                z = true;
            } else {
                z = false;
            }
            int A0I2 = im.A0I();
            int i2 = d4.A00;
            if (A0Y[2].charAt(18) != 'K') {
                throw new RuntimeException();
            }
            String[] strArr = A0Y;
            strArr[6] = "UNCiZzJs5PDRpvixsYfSSk1mhxuZgiq";
            strArr[4] = "wrSUtL8XPGusZqeHm";
            if (A0I2 == i2) {
                Arrays.fill(d4.A0H, 0, A0I2, z);
                d4.A03(im.A05());
                d4.A06(im);
                return;
            }
            throw new AJ(A0A(290, 17, 120) + A0I2 + A0A(0, 2, 53) + d4.A00);
        }
        throw new AJ(A0A(381, 56, 78));
    }

    public static void A0T(IM im, D4 d4) throws AJ {
        long A0O2;
        im.A0Z(8);
        int A092 = im.A09();
        if ((AbstractC0420Ch.A00(A092) & 1) == 1) {
            im.A0a(8);
        }
        int A0I2 = im.A0I();
        if (A0Y[3].length() != 6) {
            throw new RuntimeException();
        }
        A0Y[3] = "xMtqR0";
        if (A0I2 == 1) {
            int A012 = AbstractC0420Ch.A01(A092);
            long j = d4.A04;
            if (A012 == 0) {
                A0O2 = im.A0N();
            } else {
                A0O2 = im.A0O();
            }
            long j2 = j + A0O2;
            String[] strArr = A0Y;
            if (strArr[6].length() != strArr[4].length()) {
                String[] strArr2 = A0Y;
                strArr2[6] = "QBYjlSuWWzNHcmXjWc7avhw4MqaHk82";
                strArr2[4] = "P5zbNSbq1MUS3wdHf";
                d4.A04 = j2;
                return;
            }
            A0Y[7] = "vg5EJJPWiTbIFzTVTJFrvfHkMClrP8RJ";
            d4.A04 = j2;
            return;
        }
        throw new AJ(A0A(552, 29, 95) + A0I2);
    }

    public static void A0U(IM im, D4 d4) throws AJ {
        A0S(im, 0, d4);
    }

    public static void A0V(IM im, D4 d4, byte[] bArr) throws AJ {
        im.A0Z(8);
        im.A0d(bArr, 0, 16);
        if (Arrays.equals(bArr, A0c)) {
            A0S(im, 16, d4);
        }
    }

    public static void A0W(IM im, IM im2, String str, D4 d4) throws AJ {
        boolean z;
        im.A0Z(8);
        int A092 = im.A09();
        if (im.A09() == A0a) {
            if (AbstractC0420Ch.A01(A092) == 1) {
                im.A0a(4);
            }
            int A093 = im.A09();
            String[] strArr = A0Y;
            if (strArr[6].length() != strArr[4].length()) {
                A0Y[3] = "cve2FA";
                if (A093 == 1) {
                    im2.A0Z(8);
                    int A094 = im2.A09();
                    if (im2.A09() == A0a) {
                        int A012 = AbstractC0420Ch.A01(A094);
                        if (A0Y[1].length() != 3) {
                            throw new RuntimeException();
                        }
                        A0Y[7] = "iX8BjoZjE8Q6Igd9BCVMMRG15zWrcCbA";
                        if (A012 == 1) {
                            if (im2.A0N() == 0) {
                                throw new AJ(A0A(609, 55, 42));
                            }
                        } else if (A012 >= 2) {
                            im2.A0a(4);
                        }
                        if (im2.A0N() == 1) {
                            im2.A0a(1);
                            int A0F2 = im2.A0F();
                            int i = (A0F2 & 240) >> 4;
                            int i2 = A0F2 & 15;
                            if (im2.A0F() == 1) {
                                z = true;
                            } else {
                                z = false;
                            }
                            if (z) {
                                int A0F3 = im2.A0F();
                                byte[] bArr = new byte[16];
                                im2.A0d(bArr, 0, bArr.length);
                                if (A0Y[7].charAt(27) != 114) {
                                    throw new RuntimeException();
                                }
                                A0Y[0] = "v2evuoi5ipUorqJI1yS0NRy";
                                byte[] bArr2 = null;
                                if (z && A0F3 == 0) {
                                    int A0F4 = im2.A0F();
                                    bArr2 = new byte[A0F4];
                                    im2.A0d(bArr2, 0, A0F4);
                                }
                                d4.A0A = true;
                                d4.A08 = new D3(z, str, A0F3, bArr, i, i2, bArr2);
                                return;
                            }
                            return;
                        }
                        throw new AJ(A0A(89, 39, 21));
                    }
                    return;
                }
                throw new AJ(A0A(50, 39, 120));
            }
            throw new RuntimeException();
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:10:0x0032, code lost:
        if (r4 != r3) goto L_0x0034;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:22:0x005a, code lost:
        if (r4 != r3) goto L_0x0034;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static boolean A0X(int r4) {
        /*
        // Method dump skipped, instructions count: 110
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.ZF.A0X(int):boolean");
    }

    public static boolean A0Y(int i) {
        return i == AbstractC0420Ch.A0V || i == AbstractC0420Ch.A0c || i == AbstractC0420Ch.A0n || i == AbstractC0420Ch.A12 || i == AbstractC0420Ch.A1A || i == AbstractC0420Ch.A1H || i == AbstractC0420Ch.A1I || i == AbstractC0420Ch.A1J || i == AbstractC0420Ch.A1M || i == AbstractC0420Ch.A1N || i == AbstractC0420Ch.A0r || i == AbstractC0420Ch.A0u || i == AbstractC0420Ch.A0t || i == AbstractC0420Ch.A10 || i == AbstractC0420Ch.A1Q || i == AbstractC0420Ch.A0x || i == AbstractC0420Ch.A11 || i == AbstractC0420Ch.A0O || i == AbstractC0420Ch.A0f || i == AbstractC0420Ch.A0P;
    }

    /* JADX INFO: Multiple debug info for r10v0 'this'  com.facebook.ads.redexgen.X.ZF: [D('trackCount' int), D('endPosition' long), D('headerBytesRemaining' int)] */
    /* JADX INFO: Multiple debug info for r0v67 com.facebook.ads.redexgen.X.D4: [D('i' int), D('fragment' com.facebook.ads.redexgen.X.D4)] */
    /* JADX WARNING: Code restructure failed: missing block: B:35:0x00e5, code lost:
        if (r10.A0F == false) goto L_0x00e7;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:42:0x0110, code lost:
        if (r10.A0F == false) goto L_0x00e7;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private boolean A0Z(com.facebook.ads.redexgen.X.CH r11) throws java.io.IOException, java.lang.InterruptedException {
        /*
        // Method dump skipped, instructions count: 476
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.ZF.A0Z(com.facebook.ads.redexgen.X.CH):boolean");
    }

    private boolean A0a(CH ch) throws IOException, InterruptedException {
        D3 A002;
        int ADQ;
        boolean z;
        int i = 4;
        int i2 = 1;
        int i3 = 0;
        if (this.A02 == 3) {
            if (this.A0D == null) {
                Ct A072 = A07(this.A0K);
                if (A072 == null) {
                    int bytesToSkip = (int) (this.A09 - ch.A71());
                    if (bytesToSkip >= 0) {
                        ch.AE3(bytesToSkip);
                        A0B();
                        return false;
                    }
                    throw new AJ(A0A(346, 35, 12));
                }
                int A71 = (int) (A072.A07.A0G[A072.A02] - ch.A71());
                if (A71 < 0) {
                    Log.w(A0A(128, 22, 14), A0A(150, 40, 24));
                    A71 = 0;
                }
                ch.AE3(A71);
                this.A0D = A072;
            }
            this.A06 = this.A0D.A07.A0D[this.A0D.A01];
            if (this.A0D.A01 < this.A0D.A03) {
                ch.AE3(this.A06);
                this.A0D.A01();
                if (!this.A0D.A09()) {
                    this.A0D = null;
                }
                this.A02 = 3;
                return true;
            }
            Ct ct = this.A0D;
            if (A0Y[3].length() != 6) {
                throw new RuntimeException();
            }
            A0Y[3] = "st8dZG";
            if (ct.A05.A02 == 1) {
                this.A06 -= 8;
                ch.AE3(8);
            }
            this.A04 = this.A0D.A04();
            this.A06 += this.A04;
            this.A02 = 4;
            this.A05 = 0;
        }
        D4 d4 = this.A0D.A07;
        D2 d2 = this.A0D.A05;
        CS cs = this.A0D.A06;
        int nalUnitLengthFieldLengthDiff = this.A0D.A01;
        long A012 = d4.A01(nalUnitLengthFieldLengthDiff) * 1000;
        IY iy = this.A0S;
        if (iy != null) {
            A012 = iy.A07(A012);
        }
        if (d2.A01 == 0) {
            while (true) {
                int i4 = this.A04;
                int i5 = this.A06;
                if (i4 >= i5) {
                    break;
                }
                this.A04 += cs.ADQ(ch, i5 - i4, false);
            }
        } else {
            byte[] bArr = this.A0Q.A00;
            bArr[0] = 0;
            bArr[1] = 0;
            bArr[2] = 0;
            int i6 = d2.A01 + 1;
            int i7 = 4 - d2.A01;
            while (this.A04 < this.A06) {
                int i8 = this.A05;
                if (i8 == 0) {
                    ch.readFully(bArr, i7, i6);
                    this.A0Q.A0Z(i3);
                    this.A05 = this.A0Q.A0I() - i2;
                    this.A0R.A0Z(i3);
                    cs.ADR(this.A0R, i);
                    cs.ADR(this.A0Q, i2);
                    if (this.A0H.length <= 0 || !II.A0D(d2.A07.A0O, bArr[i])) {
                        z = false;
                    } else {
                        z = true;
                    }
                    this.A0G = z;
                    this.A04 += 5;
                    this.A06 += i7;
                } else {
                    if (this.A0G) {
                        this.A0P.A0X(i8);
                        ch.readFully(this.A0P.A00, i3, this.A05);
                        cs.ADR(this.A0P, this.A05);
                        ADQ = this.A05;
                        int A022 = II.A02(this.A0P.A00, this.A0P.A08());
                        this.A0P.A0Z(A0A(686, 10, 13).equals(d2.A07.A0O) ? 1 : 0);
                        this.A0P.A0Y(A022);
                        GM.A04(A012, this.A0P, this.A0H);
                    } else {
                        ADQ = cs.ADQ(ch, i8, false);
                    }
                    this.A04 += ADQ;
                    this.A05 -= ADQ;
                    i = 4;
                    i2 = 1;
                    i3 = 0;
                }
            }
        }
        boolean z2 = d4.A0I[nalUnitLengthFieldLengthDiff];
        CR cr = null;
        if (d4.A0A) {
            boolean z3 = z2 ? 1 : 0;
            char c = z2 ? 1 : 0;
            z2 = z3 | true;
            if (d4.A08 != null) {
                A002 = d4.A08;
            } else {
                A002 = d2.A00(d4.A07.A02);
            }
            cr = A002.A01;
        }
        int i9 = this.A06;
        int i10 = z2 ? 1 : 0;
        int i11 = z2 ? 1 : 0;
        int i12 = z2 ? 1 : 0;
        cs.ADS(A012, i10, i9, 0, cr);
        A0F(A012);
        if (!this.A0D.A09()) {
            this.A0D = null;
        }
        this.A02 = 3;
        return true;
    }

    @Override // com.facebook.ads.redexgen.X.CG
    public final void A7q(CI ci) {
        this.A0C = ci;
        D2 d2 = this.A0N;
        if (d2 != null) {
            Ct ct = new Ct(ci.AEM(0, d2.A03));
            ct.A08(this.A0N, new C0426Cn(0, 0, 0, 0));
            this.A0K.put(0, ct);
            A0C();
            this.A0C.A5B();
        }
    }

    @Override // com.facebook.ads.redexgen.X.CG
    public final int ACk(CH ch, CN cn2) throws IOException, InterruptedException {
        while (true) {
            int i = this.A02;
            if (i != 0) {
                if (A0Y[2].charAt(18) != 'K') {
                    throw new RuntimeException();
                }
                A0Y[2] = "Ub8SUYMnE0bQG8CZo0KwdlTNogw2mbM0";
                if (i == 1) {
                    A0H(ch);
                } else if (i != 2) {
                    boolean A0a2 = A0a(ch);
                    if (A0Y[7].charAt(27) == 'r') {
                        A0Y[5] = "b";
                        if (A0a2) {
                            return 0;
                        }
                    } else if (A0a2) {
                        return 0;
                    }
                } else {
                    A0I(ch);
                }
            } else if (!A0Z(ch)) {
                return -1;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.CG
    public final void ADW(long j, long j2) {
        int size = this.A0K.size();
        for (int i = 0; i < size; i++) {
            this.A0K.valueAt(i).A05();
        }
        this.A0U.clear();
        this.A03 = 0;
        this.A0A = j2;
        this.A0T.clear();
        A0B();
    }

    @Override // com.facebook.ads.redexgen.X.CG
    public final boolean AE4(CH ch) throws IOException, InterruptedException {
        return D0.A04(ch);
    }
}
