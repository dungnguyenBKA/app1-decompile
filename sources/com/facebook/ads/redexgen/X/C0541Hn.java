package com.facebook.ads.redexgen.X;

import android.net.Uri;
import androidx.annotation.Nullable;
import java.io.EOFException;
import java.io.IOException;
import java.util.concurrent.atomic.AtomicBoolean;

/* renamed from: com.facebook.ads.redexgen.X.Hn  reason: case insensitive filesystem */
public final class C0541Hn {
    public static String[] A00;

    static {
        A03();
    }

    /* JADX WARNING: Error to parse debug info: Index 25 out of bounds for length 24 in method: com.facebook.ads.redexgen.X.Hn.A00(com.facebook.ads.redexgen.X.HM, long, long, com.facebook.ads.redexgen.X.HI, byte[], com.facebook.ads.redexgen.X.IQ, int, com.facebook.ads.redexgen.X.Hm):long, file: assets/audience_network.dex
    java.lang.ArrayIndexOutOfBoundsException: Index 25 out of bounds for length 24
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:149)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:111)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:569)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:44)
     */
    public static long A00(HM hm, long j, long j2, HI hi, byte[] bArr, IQ iq, int i, C0540Hm hm2) throws IOException, InterruptedException {
        while (true) {
            if (iq != null) {
                iq.A01(i);
            }
            try {
                break;
            } catch (IP unused) {
            } finally {
                C0556Ic.A0X(hi);
            }
        }
        if (!Thread.interrupted()) {
            HM hm3 = new HM(hm.A04, hm.A06, j, (hm.A03 + j) - hm.A01, -1, hm.A05, hm.A00 | 2);
            long ACC = hi.ACC(hm3);
            if (hm2.A01 == -1 && ACC != -1) {
                hm2.A01 = hm3.A01 + ACC;
            }
            long j3 = 0;
            while (true) {
                if (j3 == j2) {
                    break;
                } else if (!Thread.interrupted()) {
                    int read = hi.read(bArr, 0, j2 != -1 ? (int) Math.min((long) bArr.length, j2 - j3) : bArr.length);
                    if (read != -1) {
                        j3 += (long) read;
                        hm2.A02 += (long) read;
                    } else if (hm2.A01 == -1) {
                        hm2.A01 = hm3.A01 + j3;
                    }
                } else {
                    throw new InterruptedException();
                }
            }
            return j3;
        }
        throw new InterruptedException();
    }

    public static void A03() {
        A00 = new String[]{"v79OOCD3rFDrBH3Sw8ccat0nkfR9Jk8K", "zaqJSCMgPr8q8xIyOc2JWspWFv3JOD4h", "Sqp2xVCvxFHsc", "s8GBWRpegr", "t6Y6wcH7Q091ZQl7CdWm1Bgnnklpnco", "XVr0n", "MY0M4GS8ICKTpGygoaRzgsCYiOraPhWK", "Pkt85Yo8hwIimoTAGZdJTyJAkZ2fE06T"};
    }

    public static String A01(Uri uri) {
        return uri.toString();
    }

    public static String A02(HM hm) {
        return hm.A05 != null ? hm.A05 : A01(hm.A04);
    }

    public static void A04(HM hm, AbstractC0535Hh hh, C1103bY bYVar, byte[] bArr, IQ iq, int i, @Nullable C0540Hm hm2, @Nullable AtomicBoolean atomicBoolean, boolean z) throws IOException, InterruptedException {
        long left;
        long j;
        C0540Hm counters = hm2;
        C0551Hx.A01(bYVar);
        C0551Hx.A01(bArr);
        if (counters != null) {
            A05(hm, hh, counters);
        } else {
            counters = new C0540Hm();
        }
        String key = A02(hm);
        long j2 = hm.A01;
        if (hm.A02 != -1) {
            left = hm.A02;
        } else {
            left = hh.A60(key);
        }
        while (true) {
            long j3 = 0;
            if (left != 0) {
                if (atomicBoolean != null) {
                    boolean z2 = atomicBoolean.get();
                    if (A00[5].length() == 1) {
                        break;
                    }
                    A00[5] = "EAlW89nW7uOIImzUc5SW8CQaYz84C";
                    if (z2) {
                        throw new InterruptedException();
                    }
                }
                if (left != -1) {
                    j = left;
                } else {
                    j = Long.MAX_VALUE;
                }
                long A5o = hh.A5o(key, j2, j);
                if (A5o <= 0) {
                    long j4 = -A5o;
                    String[] strArr = A00;
                    if (strArr[6].length() != strArr[1].length()) {
                        break;
                    }
                    A00[2] = "OFDha7Ysfl6kB";
                    A5o = j4;
                    if (A00(hm, j2, j4, bYVar, bArr, iq, i, counters) < A5o) {
                        if (z && left != -1) {
                            throw new EOFException();
                        }
                        return;
                    }
                }
                j2 += A5o;
                if (left != -1) {
                    j3 = A5o;
                }
                left -= j3;
            } else {
                return;
            }
        }
        throw new RuntimeException();
    }

    public static void A05(HM hm, AbstractC0535Hh hh, C0540Hm hm2) {
        long A60;
        long j;
        String A02 = A02(hm);
        long j2 = hm.A01;
        if (hm.A02 != -1) {
            A60 = hm.A02;
        } else {
            A60 = hh.A60(A02);
        }
        hm2.A01 = A60;
        if (A00[5].length() != 1) {
            A00[4] = "nu";
            hm2.A00 = 0;
            hm2.A02 = 0;
            while (A60 != 0) {
                if (A60 != -1) {
                    j = A60;
                } else {
                    j = Long.MAX_VALUE;
                }
                long start = hh.A5o(A02, j2, j);
                if (start > 0) {
                    hm2.A00 += start;
                } else {
                    start = -start;
                    if (start == Long.MAX_VALUE) {
                        return;
                    }
                }
                j2 += start;
                if (A60 == -1) {
                    start = 0;
                }
                A60 -= start;
            }
            return;
        }
        throw new RuntimeException();
    }

    public static void A06(AbstractC0535Hh hh, String str) {
        for (C0539Hl hl : hh.A5p(str)) {
            if (A00[2].length() != 13) {
                throw new RuntimeException();
            }
            A00[4] = "R4HmvLUlpWi57h";
            try {
                hh.ADA(hl);
            } catch (C0533Hf unused) {
            }
        }
    }
}
