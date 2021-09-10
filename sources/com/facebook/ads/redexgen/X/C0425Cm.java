package com.facebook.ads.redexgen.X;

import android.util.Pair;
import com.facebook.ads.internal.exoplayer2.Format;
import com.facebook.ads.internal.exoplayer2.drm.DrmInitData;
import com.facebook.ads.internal.exoplayer2.metadata.Metadata;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.apache.http.HttpStatus;

/* renamed from: com.facebook.ads.redexgen.X.Cm  reason: case insensitive filesystem */
public final class C0425Cm {
    public static byte[] A00;
    public static String[] A01;
    public static final int A02 = C0556Ic.A08(A0I(606, 4, 0));
    public static final int A03 = C0556Ic.A08(A0I(632, 4, 95));
    public static final int A04 = C0556Ic.A08(A0I(636, 4, 39));
    public static final int A05 = C0556Ic.A08(A0I(662, 4, 88));
    public static final int A06 = C0556Ic.A08(A0I(666, 4, 31));
    public static final int A07 = C0556Ic.A08(A0I(692, 4, 90));
    public static final int A08 = C0556Ic.A08(A0I(696, 4, 97));

    public static String A0I(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 2);
        }
        return new String(copyOfRange);
    }

    public static void A0J() {
        A00 = new byte[]{49, 37, 119, 106, 114, 102, 110, 115, 110, 115, 108, 88, 102, 114, 117, 113, 106, 120, 70, 121, 89, 110, 114, 106, 120, 121, 102, 114, 117, 73, 106, 113, 121, 102, 37, -112, -124, -42, -55, -47, -59, -51, -46, -51, -46, -53, -73, -59, -47, -44, -48, -55, -41, -83, -46, -89, -52, -39, -46, -49, -124, 71, 59, -115, Byte.MIN_VALUE, -120, 124, -124, -119, -124, -119, -126, 111, -124, -120, Byte.MIN_VALUE, -114, -113, 124, -120, -117, 95, Byte.MIN_VALUE, -121, -113, 124, 94, -125, 124, -119, -126, Byte.MIN_VALUE, -114, 59, -110, 120, -54, -67, -59, -71, -63, -58, -63, -58, -65, -85, -47, -58, -69, -64, -54, -57, -58, -63, -46, -71, -52, -63, -57, -58, -85, -71, -59, -56, -60, -67, -53, 120, 100, -105, -110, -112, 115, -124, -107, -106, -120, -107, -106, -76, -46, -39, -38, -35, -44, -39, -46, -117, -48, -49, -44, -33, -117, -41, -44, -34, -33, -91, -117, -48, -49, -44, -33, -117, -49, -38, -48, -34, -117, -39, -38, -33, -117, -34, -33, -52, -35, -33, -117, -30, -44, -33, -45, -117, -52, -117, -34, -28, -39, -50, -117, -34, -52, -40, -37, -41, -48, -103, -110, -73, -84, -72, -73, -68, -78, -68, -67, -82, -73, -67, 105, -68, -67, -85, -75, 105, -85, -72, -63, 105, -81, -72, -69, 105, -67, -69, -86, -84, -76, 105, 117, -109, -126, -124, -116, 65, -119, -126, -108, 65, -113, -112, 65, -108, -126, -114, -111, -115, -122, 65, -107, -126, -125, -115, -122, 65, -108, -118, -101, -122, 65, -118, -113, -121, -112, -109, -114, -126, -107, -118, -112, -113, -120, -95, -90, -88, -93, -93, -94, -91, -89, -104, -105, 83, -96, -104, -105, -100, -108, 83, -91, -108, -89, -104, 97, -32, -17, -17, -21, -24, -30, -32, -13, -24, -18, -19, -82, -13, -13, -20, -21, -86, -9, -20, -21, -90, -75, -75, -79, -82, -88, -90, -71, -82, -76, -77, 116, -67, 114, -88, -90, -78, -86, -73, -90, 114, -78, -76, -71, -82, -76, -77, -78, -63, -63, -67, -70, -76, -78, -59, -70, -64, -65, Byte.MIN_VALUE, -55, 126, -66, -63, -123, 126, -76, -74, -78, 126, -121, -127, -119, -89, -74, -74, -78, -81, -87, -89, -70, -81, -75, -76, 117, -66, 115, -77, -74, 122, 115, -68, -70, -70, -101, -86, -86, -90, -93, -99, -101, -82, -93, -87, -88, 105, -78, 103, -85, -81, -93, -99, -91, -82, -93, -89, -97, 103, -82, -78, 109, -95, 124, -112, Byte.MAX_VALUE, -124, -118, 74, 78, -126, -117, -117, -126, -106, -123, -118, -112, 80, -126, -124, 84, -69, -49, -66, -61, -55, -119, -69, -58, -69, -67, -33, -13, -30, -25, -19, -83, -33, -21, -16, -85, -11, -32, 107, Byte.MAX_VALUE, 110, 115, 121, 57, 111, 107, 109, 61, -109, -89, -106, -101, -95, 97, -97, -94, 102, -109, 95, -98, -109, -90, -97, -65, -45, -62, -57, -51, -115, -53, -50, -61, -59, -68, -48, -65, -60, -54, -118, -51, -68, -46, -94, -74, -91, -86, -80, 112, -73, -81, -91, 111, -91, -75, -76, -87, -67, -84, -79, -73, 119, -66, -74, -84, 118, -84, -68, -69, 118, -80, -84, 109, -127, 112, 117, 123, 59, -126, 122, 112, 58, 112, Byte.MIN_VALUE, Byte.MAX_VALUE, 58, 116, 112, 71, 124, 126, 123, 114, 117, 120, 113, 73, 120, 110, 126, -119, -120, -119, 87, -32, -33, -32, -16, -124, -122, -113, -124, -43, -41, -32, -27, -110, -105, -104, -101, -109, 112, -93, -98, -100, -126, -104, -87, -108, 79, -94, -105, -98, -92, -101, -109, 79, -111, -108, 79, -97, -98, -94, -104, -93, -104, -91, -108, 101, 110, 101, 114, -119, -107, -112, -124, 67, -124, -105, -110, -112, 67, -116, -106, 67, -112, -124, -111, -121, -124, -105, -110, -107, -100, -50, -58, -43, -62, -100, -117, -99, -107, -99, -115, -110, -109, 74, -117, -98, -103, -105, 74, -109, -99, 74, -105, -117, -104, -114, -117, -98, -103, -100, -93, -51, -55, -49, -56, -108, -106, -125, -107, -59, -74, -65, -76, 113, -78, -59, -64, -66, 113, -70, -60, 113, -66, -78, -65, -75, -78, -59, -64, -61, -54, -48, -63, -44, -48, -39, -52, -57, -56, -77, -90, -95, -94, -84, 108, 112, -92, -83, -83, -52, -65, -70, -69, -59, -123, -73, -52, -71, -14, -27, -32, -31, -21, -85, -28, -31, -14, -33, -109, -122, -127, -126, -116, 76, -107, 74, -109, -117, -127, 75, -116, -117, 79, 75, -109, -115, 85, -86, -99, -104, -103, -93, 99, -84, 97, -86, -94, -104, 98, -93, -94, 102, 98, -86, -92, 109};
    }

    public static void A0K() {
        A01 = new String[]{"vNU1Clptty9spXV3rmNWKqfECA0GCDno", "yQl7wYGB6utTXxK398wXXYrAeYZNPLId", "BVcq1q5Q", "NihUY4HxpsM0GkJJgFchlTfxDOIJFYzw", "lx4TwpHGLs68", "XI1Xq2FkjwcQfgB5bw70GFmYpaxAyyjl", "uRZmXRdJsodI", "Cygx2J1H2ENb6XLRYlHXnR1vUW4XHHOP"};
    }

    static {
        A0K();
        A0J();
    }

    public static float A00(IM im, int i) {
        im.A0Z(i + 8);
        return ((float) im.A0I()) / ((float) im.A0I());
    }

    public static int A01(IM im) {
        int size = im.A0F();
        int i = size & 127;
        while ((size & 128) == 128) {
            size = im.A0F();
            i = (i << 7) | (size & 127);
        }
        return i;
    }

    public static int A02(IM im) {
        im.A0Z(16);
        int A09 = im.A09();
        if (A09 == A05) {
            return 1;
        }
        int trackType = A08;
        if (A01[2].length() != 8) {
            throw new RuntimeException();
        }
        String[] strArr = A01;
        strArr[0] = "sACqbdB9h4ZaSOP8RBXRhKf5pkODD9Ze";
        strArr[5] = "nfjFHkgcUdXk9ZZxpn0R0spMdbOfBjgH";
        if (A09 == trackType) {
            return 2;
        }
        if (A09 == A07 || A09 == A04 || A09 == A06 || A09 == A02) {
            String[] strArr2 = A01;
            if (strArr2[4].length() != strArr2[6].length()) {
                return 3;
            }
            String[] strArr3 = A01;
            strArr3[0] = "HjSYihfmO4Fjwo0SJsN86rpcIq24412o";
            strArr3[5] = "nDlBCf5sAdyqWE5fn1qZlgrWKnIrwKiA";
            return 3;
        } else if (A09 == A03) {
            return 4;
        } else {
            return -1;
        }
    }

    public static int A03(IM im, int i, int i2) {
        boolean z;
        int A072 = im.A07();
        while (A072 - i < i2) {
            im.A0Z(A072);
            int A09 = im.A09();
            if (A09 > 0) {
                z = true;
            } else {
                z = false;
            }
            C0551Hx.A05(z, A0I(574, 32, 45));
            if (im.A09() == AbstractC0420Ch.A0S) {
                return A072;
            }
            A072 += A09;
        }
        return -1;
    }

    public static long A04(IM im) {
        int fullAtom = 8;
        im.A0Z(8);
        if (AbstractC0420Ch.A01(im.A09()) != 0) {
            fullAtom = 16;
        }
        im.A0a(fullAtom);
        return im.A0N();
    }

    public static Pair<long[], long[]> A05(Z9 z9) {
        ZA elst;
        long A0N;
        long A09;
        if (z9 == null || (elst = z9.A07(AbstractC0420Ch.A0O)) == null) {
            return Pair.create(null, null);
        }
        IM im = elst.A00;
        im.A0Z(8);
        int A012 = AbstractC0420Ch.A01(im.A09());
        int A0I = im.A0I();
        long[] jArr = new long[A0I];
        long[] jArr2 = new long[A0I];
        int i = 0;
        while (true) {
            if (i >= A0I) {
                Pair<long[], long[]> create = Pair.create(jArr, jArr2);
                String[] strArr = A01;
                if (strArr[1].charAt(19) == strArr[7].charAt(19)) {
                    String[] strArr2 = A01;
                    strArr2[0] = "0OgbcJvER11tVuU6ktzS5zcploLwLpnU";
                    strArr2[5] = "Fpvfvil3v0kwqlJSCQAnqVBmdIeuMsHJ";
                    return create;
                }
            } else if (A01[2].length() != 8) {
                break;
            } else {
                A01[3] = "n2Qu2qSRpGNWmL1w1m0Jsgn90j2APzEn";
                if (A012 == 1) {
                    A0N = im.A0O();
                } else {
                    A0N = im.A0N();
                }
                jArr[i] = A0N;
                if (A012 == 1) {
                    A09 = im.A0M();
                } else {
                    A09 = (long) im.A09();
                }
                jArr2[i] = A09;
                if (im.A0V() == 1) {
                    im.A0a(2);
                    i++;
                } else {
                    throw new IllegalArgumentException(A0I(272, 23, 49));
                }
            }
        }
        throw new RuntimeException();
    }

    public static Pair<Long, String> A06(IM im) {
        int version;
        int fullAtom = 8;
        im.A0Z(8);
        int A012 = AbstractC0420Ch.A01(im.A09());
        if (A012 == 0) {
            version = 8;
        } else {
            version = 16;
        }
        im.A0a(version);
        long A0N = im.A0N();
        if (A012 == 0) {
            fullAtom = 4;
        }
        im.A0a(fullAtom);
        int A0J = im.A0J();
        return Pair.create(Long.valueOf(A0N), A0I(0, 0, 122) + ((char) (((A0J >> 10) & 31) + 96)) + ((char) (((A0J >> 5) & 31) + 96)) + ((char) ((A0J & 31) + 96)));
    }

    public static Pair<String, byte[]> A07(IM im, int i) {
        im.A0Z(i + 8 + 4);
        im.A0a(1);
        A01(im);
        im.A0a(2);
        int A0F = im.A0F();
        if ((A0F & 128) != 0) {
            im.A0a(2);
        }
        if ((A0F & 64) != 0) {
            im.A0a(im.A0J());
        }
        if ((A0F & 32) != 0) {
            im.A0a(2);
        }
        im.A0a(1);
        A01(im);
        int A0F2 = im.A0F();
        String[] strArr = A01;
        if (strArr[0].charAt(2) != strArr[5].charAt(2)) {
            String[] strArr2 = A01;
            strArr2[4] = "ipSJ7rerSzX8";
            strArr2[6] = "rVXKHnYgOQNY";
            String A032 = IF.A03(A0F2);
            if (A0I(482, 10, 92).equals(A032) || A0I(HttpStatus.SC_NOT_IMPLEMENTED, 13, 63).equals(A032) || A0I(514, 16, 70).equals(A032)) {
                Pair<String, byte[]> create = Pair.create(A032, null);
                if (A01[3].charAt(8) != 'p') {
                    return create;
                }
                String[] strArr3 = A01;
                strArr3[1] = "09LVPMUcXpQFix5jag1XMCG3MLP6JHGE";
                strArr3[7] = "l6DCOVwnZaQMuPJJN9SXx5QHr45WFHuE";
                return create;
            }
            im.A0a(12);
            im.A0a(1);
            int A012 = A01(im);
            byte[] bArr = new byte[A012];
            im.A0d(bArr, 0, A012);
            return Pair.create(A032, bArr);
        }
        throw new RuntimeException();
    }

    public static Pair<Integer, D3> A08(IM im, int schemeInformationBoxPosition, int schemeInformationBoxSize) {
        boolean z;
        boolean z2;
        int i = schemeInformationBoxPosition + 8;
        int i2 = -1;
        int childAtomSize = 0;
        String str = null;
        Integer num = null;
        while (true) {
            int i3 = i - schemeInformationBoxPosition;
            if (A01[3].charAt(8) != 'p') {
                throw new RuntimeException();
            }
            A01[2] = "AMwqROlZ";
            if (i3 < schemeInformationBoxSize) {
                im.A0Z(i);
                int A09 = im.A09();
                int A092 = im.A09();
                if (A092 == AbstractC0420Ch.A0T) {
                    num = Integer.valueOf(im.A09());
                } else if (A092 == AbstractC0420Ch.A0z) {
                    im.A0a(4);
                    str = im.A0T(4);
                } else if (A092 == AbstractC0420Ch.A0y) {
                    i2 = i;
                    childAtomSize = A09;
                }
                i += A09;
            } else if (!A0I(566, 4, 31).equals(str) && !A0I(558, 4, 36).equals(str) && !A0I(570, 4, 112).equals(str) && !A0I(562, 4, 123).equals(str)) {
                return null;
            } else {
                boolean z3 = true;
                if (num != null) {
                    z = true;
                } else {
                    z = false;
                }
                C0551Hx.A05(z, A0I(610, 22, 33));
                if (i2 != -1) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                C0551Hx.A05(z2, A0I(640, 22, 40));
                D3 A0D = A0D(im, i2, childAtomSize, str);
                if (A0D == null) {
                    z3 = false;
                }
                C0551Hx.A05(z3, A0I(670, 22, 79));
                return Pair.create(num, A0D);
            }
        }
    }

    public static Pair<Integer, D3> A09(IM im, int i, int i2) {
        boolean z;
        Pair<Integer, D3> A082;
        int A072 = im.A07();
        while (A072 - i < i2) {
            im.A0Z(A072);
            int A09 = im.A09();
            if (A09 > 0) {
                z = true;
            } else {
                z = false;
            }
            C0551Hx.A05(z, A0I(574, 32, 45));
            if (im.A09() == AbstractC0420Ch.A13 && (A082 = A08(im, A072, A09)) != null) {
                return A082;
            }
            A072 += A09;
        }
        return null;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:46:0x00d7, code lost:
        if (r7 != r3) goto L_0x00d9;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:60:0x0105, code lost:
        if (r7 == r3) goto L_0x0107;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:63:0x0116, code lost:
        if (r7 == r3) goto L_0x0107;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:65:0x0125, code lost:
        if (r7 != r3) goto L_0x00d9;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static com.facebook.ads.redexgen.X.C0423Ck A0A(com.facebook.ads.redexgen.X.IM r24, int r25, int r26, java.lang.String r27, com.facebook.ads.internal.exoplayer2.drm.DrmInitData r28, boolean r29) throws com.facebook.ads.redexgen.X.AJ {
        /*
        // Method dump skipped, instructions count: 470
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C0425Cm.A0A(com.facebook.ads.redexgen.X.IM, int, int, java.lang.String, com.facebook.ads.internal.exoplayer2.drm.DrmInitData, boolean):com.facebook.ads.redexgen.X.Ck");
    }

    public static C0424Cl A0B(IM im) {
        int version;
        long A0O;
        int a11;
        int fullAtom = 8;
        im.A0Z(8);
        int a00 = AbstractC0420Ch.A01(im.A09());
        if (a00 == 0) {
            version = 8;
        } else {
            version = 16;
        }
        im.A0a(version);
        int A09 = im.A09();
        im.A0a(4);
        int i = 1;
        int A072 = im.A07();
        if (a00 == 0) {
            fullAtom = 4;
        }
        int a01 = 0;
        while (true) {
            if (a01 >= fullAtom) {
                break;
            } else if (im.A00[A072 + a01] != -1) {
                i = 0;
                break;
            } else {
                a01++;
            }
        }
        if (i != 0) {
            im.A0a(fullAtom);
            A0O = -9223372036854775807L;
        } else {
            if (a00 == 0) {
                A0O = im.A0N();
            } else {
                A0O = im.A0O();
            }
            if (A0O == 0) {
                A0O = -9223372036854775807L;
            }
        }
        im.A0a(16);
        int fullAtom2 = im.A09();
        int a002 = im.A09();
        im.A0a(4);
        int trackId = im.A09();
        int durationPosition = im.A09();
        if (fullAtom2 == 0 && a002 == 65536 && trackId == (-65536) && durationPosition == 0) {
            a11 = 90;
        } else {
            if (fullAtom2 == 0) {
                int durationByteCount = -65536;
                String[] strArr = A01;
                if (strArr[4].length() != strArr[6].length()) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A01;
                strArr2[4] = "i5DrkfhddIOc";
                strArr2[6] = "TqiRE9mqRyND";
                if (a002 == durationByteCount && trackId == 65536 && durationPosition == 0) {
                    a11 = 270;
                }
            }
            if (fullAtom2 == (-65536) && a002 == 0 && trackId == 0 && durationPosition == (-65536)) {
                a11 = 180;
            } else {
                a11 = 0;
            }
        }
        return new C0424Cl(A09, A0O, a11);
    }

    /* JADX INFO: Multiple debug info for r1v20 android.util.Pair<java.lang.Long, java.lang.String>: [D('stsdData' com.facebook.ads.redexgen.X.Ck), D('durationUs' long)] */
    /* JADX INFO: Multiple debug info for r1v21 com.facebook.ads.redexgen.X.D3[]: [D('stsdData' com.facebook.ads.redexgen.X.Ck), D('mdhdData' android.util.Pair<java.lang.Long, java.lang.String>)] */
    public static D2 A0C(Z9 z9, ZA za, long j, DrmInitData drmInitData, boolean z, boolean z2) throws AJ {
        long A0F;
        long j2 = j;
        Z9 A062 = z9.A06(AbstractC0420Ch.A0d);
        int A022 = A02(A062.A07(AbstractC0420Ch.A0V).A00);
        if (A022 == -1) {
            return null;
        }
        ZA A072 = z9.A07(AbstractC0420Ch.A1J);
        if (A01[3].charAt(8) != 'p') {
            throw new RuntimeException();
        }
        A01[2] = "QWUsjPBg";
        C0424Cl A0B = A0B(A072.A00);
        if (j2 == -9223372036854775807L) {
            j2 = A0B.A02;
        }
        long A042 = A04(za.A00);
        if (j2 == -9223372036854775807L) {
            A0F = -9223372036854775807L;
        } else {
            A0F = C0556Ic.A0F(j2, 1000000, A042);
        }
        Z9 A063 = A062.A06(AbstractC0420Ch.A0h).A06(AbstractC0420Ch.A16);
        Pair<Long, String> A064 = A06(A062.A07(AbstractC0420Ch.A0c).A00);
        C0423Ck A0A = A0A(A063.A07(AbstractC0420Ch.A1A).A00, A0B.A00, A0B.A01, (String) A064.second, drmInitData, z2);
        long[] editListDurations = null;
        long[] jArr = null;
        if (!z) {
            Pair<long[], long[]> A052 = A05(z9.A06(AbstractC0420Ch.A0N));
            editListDurations = (long[]) A052.first;
            jArr = (long[]) A052.second;
        }
        if (A0A.A02 == null) {
            return null;
        }
        return new D2(A0B.A00, A022, ((Long) A064.first).longValue(), A042, A0F, A0A.A02, A0A.A01, A0A.A03, A0A.A00, editListDurations, jArr);
    }

    public static D3 A0D(IM im, int childPosition, int i, String str) {
        int constantIvSize = childPosition + 8;
        while (constantIvSize - childPosition < i) {
            im.A0Z(constantIvSize);
            int defaultCryptByteBlock = im.A09();
            if (im.A09() == AbstractC0420Ch.A1G) {
                int version = AbstractC0420Ch.A01(im.A09());
                boolean z = true;
                im.A0a(1);
                int i2 = 0;
                int i3 = 0;
                if (version == 0) {
                    im.A0a(1);
                } else {
                    int defaultSkipByteBlock = im.A0F();
                    i2 = (defaultSkipByteBlock & 240) >> 4;
                    i3 = defaultSkipByteBlock & 15;
                }
                if (im.A0F() != 1) {
                    z = false;
                }
                int A0F = im.A0F();
                byte[] bArr = new byte[16];
                im.A0d(bArr, 0, bArr.length);
                byte[] bArr2 = null;
                if (z && A0F == 0) {
                    int A0F2 = im.A0F();
                    bArr2 = new byte[A0F2];
                    im.A0d(bArr2, 0, A0F2);
                    if (A01[2].length() != 8) {
                        throw new RuntimeException();
                    }
                    A01[2] = "N18HcU44";
                }
                return new D3(z, str, A0F, bArr, i2, i3, bArr2);
            }
            constantIvSize += defaultCryptByteBlock;
        }
        return null;
    }

    /* JADX INFO: Multiple debug info for r15v1 com.facebook.ads.redexgen.X.Cj: [D('offset' long), D('timestampOffset' int)] */
    /* JADX INFO: Multiple debug info for r23v0 int: [D('maximumSize' int), D('remainingSamplesAtTimestampDelta' int), D('sizes' int[]), D('stsc' com.facebook.ads.redexgen.X.IM), D('chunkOffsets' com.facebook.ads.redexgen.X.IM), D('timestamps' long[])] */
    /* JADX INFO: Multiple debug info for r20v0 int[]: [D('copyMetadata' boolean), D('timestamps' long[])] */
    /* JADX INFO: Multiple debug info for r19v0 long[]: [D('sampleSizeBox' com.facebook.ads.redexgen.X.Cj), D('timestamps' long[])] */
    /* JADX INFO: Multiple debug info for r1v5 long: [D('chunkOffsets' com.facebook.ads.redexgen.X.IM), D('offsets' long[])] */
    /* JADX INFO: Multiple debug info for r0v23 com.facebook.ads.redexgen.X.D2: [D('chunkOffsetsAreLongs' boolean), D('duration' long), D('paddingTimeUnits' long), D('offsets' long[]), D('encoderDelay' long), D('editedMaximumSize' int), D('remainingTimestampDeltaChanges' int), D('durationUs' long), D('omitClippedSample' boolean), D('editMediaTime' long), D('editStartTime' long), D('sampleIndex' int)] */
    /* JADX INFO: Multiple debug info for r8v3 int: [D('endIndex' int), D('editedOffsets' long[])] */
    /* JADX INFO: Multiple debug info for r42v2 long[]: [D('editedFlags' int[]), D('sampleSizeBox' com.facebook.ads.redexgen.X.Cj)] */
    /* JADX INFO: Multiple debug info for r12v3 int[]: [D('editedTimestamps' long[]), D('ptsUs' long), D('editStartTime' long)] */
    /* JADX INFO: Multiple debug info for r11v4 int[]: [D('cttsAtom' com.facebook.ads.redexgen.X.ZA), D('editedFlags' int[])] */
    /* JADX INFO: Multiple debug info for r10v3 long[]: [D('pts' long), D('editEndTime' long)] */
    /* JADX INFO: Multiple debug info for r1v26 long: [D('editedSizes' int[]), D('sampleCount' int)] */
    /* JADX INFO: Multiple debug info for r4v8 int: [D('count' int), D('sizes' int[])] */
    /* JADX INFO: Multiple debug info for r0v32 com.facebook.ads.redexgen.X.D2: [D('nextSynchronizationSampleIndex' int), D('maximumSize' int)] */
    /* JADX INFO: Multiple debug info for r9v7 int: [D('chunkOffsetsBytes' long[]), D('offsets' long[])] */
    /* JADX INFO: Multiple debug info for r1v68 long: [D('offsets' long[]), D('maximumSize' int)] */
    /* JADX INFO: Multiple debug info for r0v41 int: [D('stts' com.facebook.ads.redexgen.X.IM), D('stszAtom' com.facebook.ads.redexgen.X.ZA), D('sampleCount' int), D('remainingTimestampDeltaChanges' int)] */
    /* JADX WARNING: Code restructure failed: missing block: B:120:0x0385, code lost:
        if (r11 != 0) goto L_0x0387;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:124:0x03a6, code lost:
        if (r11 <= 0) goto L_0x03a8;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:130:0x03d3, code lost:
        if (r11 <= 0) goto L_0x03a8;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:132:0x03e2, code lost:
        if (r11 != 0) goto L_0x0387;
     */
    /* JADX WARNING: Removed duplicated region for block: B:48:0x0150  */
    /* JADX WARNING: Removed duplicated region for block: B:87:0x0209  */
    /* JADX WARNING: Removed duplicated region for block: B:99:0x02c7  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static com.facebook.ads.redexgen.X.D5 A0E(com.facebook.ads.redexgen.X.D2 r42, com.facebook.ads.redexgen.X.Z9 r43, com.facebook.ads.redexgen.X.CK r44) throws com.facebook.ads.redexgen.X.AJ {
        /*
        // Method dump skipped, instructions count: 1443
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C0425Cm.A0E(com.facebook.ads.redexgen.X.D2, com.facebook.ads.redexgen.X.Z9, com.facebook.ads.redexgen.X.CK):com.facebook.ads.redexgen.X.D5");
    }

    public static Metadata A0F(ZA za, boolean z) {
        if (z) {
            return null;
        }
        IM im = za.A00;
        im.A0Z(8);
        while (im.A05() >= 8) {
            int A072 = im.A07();
            int A09 = im.A09();
            if (im.A09() == AbstractC0420Ch.A0g) {
                im.A0Z(A072);
                return A0H(im, A072 + A09);
            }
            im.A0a(A09 - 8);
        }
        return null;
    }

    public static Metadata A0G(IM im, int i) {
        im.A0a(8);
        ArrayList arrayList = new ArrayList();
        while (im.A07() < i) {
            Metadata.Entry A012 = C0431Cu.A01(im);
            if (A012 != null) {
                arrayList.add(A012);
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new Metadata(arrayList);
    }

    public static Metadata A0H(IM im, int i) {
        im.A0a(12);
        while (im.A07() < i) {
            int A072 = im.A07();
            int A09 = im.A09();
            if (im.A09() == AbstractC0420Ch.A0Z) {
                im.A0Z(A072);
                return A0G(im, A072 + A09);
            }
            im.A0a(A09 - 8);
        }
        return null;
    }

    public static void A0L(IM im, int i, int i2, int i3, int i4, int width, DrmInitData drmInitData, C0423Ck ck, int childPosition) throws AJ {
        boolean z;
        DrmInitData drmInitData2 = drmInitData;
        int stereoMode = i;
        im.A0Z(i2 + 8 + 8);
        im.A0a(16);
        int A0J = im.A0J();
        int A0J2 = im.A0J();
        boolean z2 = false;
        float f = 1.0f;
        im.A0a(50);
        int A072 = im.A07();
        if (stereoMode == AbstractC0420Ch.A0R) {
            Pair<Integer, D3> A09 = A09(im, i2, i3);
            if (A09 != null) {
                stereoMode = ((Integer) A09.first).intValue();
                if (drmInitData2 == null) {
                    drmInitData2 = null;
                } else {
                    drmInitData2 = drmInitData2.A03(((D3) A09.second).A02);
                }
                ck.A03[childPosition] = (D3) A09.second;
            }
            im.A0Z(A072);
        }
        List<byte[]> list = null;
        String str = null;
        byte[] bArr = null;
        if (A01[2].length() != 8) {
            throw new RuntimeException();
        }
        String[] strArr = A01;
        strArr[4] = "nt1AbbZdLf7H";
        strArr[6] = "te59XVvfeUPr";
        int i5 = -1;
        while (A072 - i2 < i3) {
            im.A0Z(A072);
            int A073 = im.A07();
            int A092 = im.A09();
            if (A092 == 0 && im.A07() - i2 == i3) {
                break;
            }
            boolean z3 = false;
            if (A092 > 0) {
                z = true;
            } else {
                z = false;
            }
            C0551Hx.A05(z, A0I(574, 32, 45));
            int A093 = im.A09();
            if (A093 == AbstractC0420Ch.A08) {
                if (str == null) {
                    z3 = true;
                }
                C0551Hx.A04(z3);
                str = A0I(710, 9, 84);
                im.A0Z(A073 + 8);
                C0558Ie A002 = C0558Ie.A00(im);
                list = A002.A04;
                ck.A00 = A002.A02;
                if (!z2) {
                    f = A002.A00;
                }
            } else if (A093 == AbstractC0420Ch.A0Y) {
                if (str == null) {
                    z3 = true;
                }
                C0551Hx.A04(z3);
                str = A0I(719, 10, 122);
                im.A0Z(A073 + 8);
                C0562Ik A003 = C0562Ik.A00(im);
                list = A003.A01;
                ck.A00 = A003.A00;
            } else if (A093 == AbstractC0420Ch.A1U) {
                if (str == null) {
                    z3 = true;
                }
                C0551Hx.A04(z3);
                str = stereoMode == AbstractC0420Ch.A1S ? A0I(729, 19, 27) : A0I(748, 19, 50);
            } else if (A093 == AbstractC0420Ch.A0D) {
                if (str == null) {
                    z3 = true;
                }
                C0551Hx.A04(z3);
                if (A01[3].charAt(8) != 'p') {
                    throw new RuntimeException();
                }
                String[] strArr2 = A01;
                strArr2[4] = "qKPn33WXRD1J";
                strArr2[6] = "UtAkzKHIBavs";
                str = A0I(700, 10, 59);
            } else if (A093 == AbstractC0420Ch.A0S) {
                if (str == null) {
                    z3 = true;
                }
                C0551Hx.A04(z3);
                Pair<String, byte[]> A074 = A07(im, A073);
                str = (String) A074.first;
                list = Collections.singletonList(A074.second);
            } else if (A093 == AbstractC0420Ch.A0p) {
                f = A00(im, A073);
                z2 = true;
            } else if (A093 == AbstractC0420Ch.A1F) {
                bArr = A0P(im, A073, A092);
            } else if (A093 == AbstractC0420Ch.A15) {
                int A0F = im.A0F();
                im.A0a(3);
                if (A0F == 0) {
                    int A0F2 = im.A0F();
                    if (A0F2 == 0) {
                        i5 = 0;
                    } else if (A0F2 == 1) {
                        i5 = 1;
                    } else if (A0F2 == 2) {
                        i5 = 2;
                    } else if (A0F2 == 3) {
                        i5 = 3;
                    }
                }
            }
            A072 += A092;
        }
        if (str != null) {
            ck.A02 = Format.A04(Integer.toString(i4), str, null, -1, -1, A0J, A0J2, -1.0f, list, width, f, bArr, i5, null, drmInitData2);
        }
    }

    public static void A0M(IM im, int i, int i2, int i3, int i4, String str, C0423Ck ck) throws AJ {
        String A0I;
        im.A0Z(i2 + 8 + 8);
        List list = null;
        long j = Long.MAX_VALUE;
        if (i == AbstractC0420Ch.A02) {
            A0I = A0I(295, 20, 125);
        } else if (i == AbstractC0420Ch.A1O) {
            A0I = A0I(388, 28, 56);
            int i5 = (i3 - 8) - 8;
            byte[] bArr = new byte[i5];
            im.A0d(bArr, 0, i5);
            list = Collections.singletonList(bArr);
        } else if (i == AbstractC0420Ch.A1W) {
            A0I = A0I(367, 21, 68);
        } else if (i == AbstractC0420Ch.A18) {
            A0I = A0I(295, 20, 125);
            j = 0;
        } else if (i == AbstractC0420Ch.A09) {
            A0I = A0I(342, 25, 79);
            ck.A01 = 1;
        } else {
            throw new IllegalStateException();
        }
        ck.A02 = Format.A09(Integer.toString(i4), A0I, null, -1, 0, str, -1, null, j, list);
    }

    /* JADX INFO: Multiple debug info for r36v0 int: [D('channelCount' int), D('mimeTypeAndInitializationData' android.util.Pair<java.lang.String, byte[]>)] */
    /* JADX INFO: Multiple debug info for r4v3 int: [D('atomType' int), D('initializationData' byte[])] */
    public static void A0N(IM im, int i, int i2, int i3, int channelCount, String str, boolean z, DrmInitData drmInitData, C0423Ck ck, int i4) throws AJ {
        int childAtomType;
        int childPosition;
        int i5;
        boolean z2;
        int A032;
        DrmInitData drmInitData2 = drmInitData;
        int i6 = i;
        im.A0Z(i2 + 8 + 8);
        int i7 = 0;
        if (z) {
            i7 = im.A0J();
            im.A0a(6);
        } else {
            im.A0a(8);
        }
        if (i7 == 0 || i7 == 1) {
            childAtomType = im.A0J();
            im.A0a(6);
            childPosition = im.A0G();
            if (i7 == 1) {
                im.A0a(16);
            }
        } else if (i7 == 2) {
            im.A0a(16);
            childPosition = (int) Math.round(im.A04());
            childAtomType = im.A0I();
            im.A0a(20);
        } else {
            return;
        }
        int atomType = im.A07();
        List list = null;
        if (i6 == AbstractC0420Ch.A0Q) {
            Pair<Integer, D3> A09 = A09(im, i2, i3);
            if (A09 != null) {
                i6 = ((Integer) A09.first).intValue();
                if (drmInitData2 == null) {
                    drmInitData2 = null;
                } else {
                    Object obj = A09.second;
                    String[] strArr = A01;
                    if (strArr[1].charAt(19) == strArr[7].charAt(19)) {
                        A01[3] = "pOqul1QRpDZUg5bU2yQQaQp61y123VtO";
                        drmInitData2 = drmInitData2.A03(((D3) obj).A02);
                    }
                    throw new RuntimeException();
                }
                ck.A03[i4] = (D3) A09.second;
            }
            im.A0Z(atomType);
        }
        String str2 = null;
        if (i6 == AbstractC0420Ch.A04) {
            str2 = A0I(426, 9, 31);
        } else if (i6 == AbstractC0420Ch.A0M) {
            str2 = A0I(457, 10, 8);
        } else if (i6 == AbstractC0420Ch.A0I) {
            str2 = A0I(HttpStatus.SC_NOT_IMPLEMENTED, 13, 63);
        } else if (i6 == AbstractC0420Ch.A0K || i6 == AbstractC0420Ch.A0L) {
            str2 = A0I(514, 16, 70);
        } else if (i6 == AbstractC0420Ch.A0J) {
            str2 = A0I(530, 28, 10);
        } else if (i6 == AbstractC0420Ch.A0v) {
            str2 = A0I(HttpStatus.SC_REQUESTED_RANGE_NOT_SATISFIABLE, 10, 25);
        } else if (i6 == AbstractC0420Ch.A0w) {
            str2 = A0I(445, 12, 124);
        } else if (i6 == AbstractC0420Ch.A0a || i6 == AbstractC0420Ch.A14) {
            str2 = A0I(492, 9, 89);
        } else if (i6 == AbstractC0420Ch.A03) {
            str2 = A0I(482, 10, 92);
        } else if (i6 == AbstractC0420Ch.A05) {
            str2 = A0I(435, 10, 88);
        }
        byte[] bArr = null;
        while (atomType - i2 < i3) {
            im.A0Z(atomType);
            int A092 = im.A09();
            if (A092 > 0) {
                z2 = true;
            } else {
                z2 = false;
            }
            C0551Hx.A05(z2, A0I(574, 32, 45));
            int A093 = im.A09();
            if (A093 == AbstractC0420Ch.A0S || (z && A093 == AbstractC0420Ch.A1V)) {
                if (A093 == AbstractC0420Ch.A0S) {
                    A032 = atomType;
                } else {
                    A032 = A03(im, atomType, A092);
                }
                if (A032 != -1) {
                    Pair<String, byte[]> A072 = A07(im, A032);
                    str2 = (String) A072.first;
                    bArr = (byte[]) A072.second;
                    if (A0I(467, 15, 48).equals(str2)) {
                        Pair<Integer, Integer> A033 = I1.A03(bArr);
                        childPosition = ((Integer) A033.first).intValue();
                        childAtomType = ((Integer) A033.second).intValue();
                    }
                }
            } else if (A093 == AbstractC0420Ch.A0E) {
                int i8 = atomType + 8;
                if (A01[3].charAt(8) != 'p') {
                    throw new RuntimeException();
                }
                String[] strArr2 = A01;
                strArr2[0] = "HYOwJoQ2L6umAwimTza29CMlFS3ISf2h";
                strArr2[5] = "FglgDO1LYQ1bVlWfctdCtrgF4dzfBOT4";
                im.A0Z(i8);
                ck.A02 = C0382Ao.A07(im, Integer.toString(channelCount), str, drmInitData2);
            } else if (A093 == AbstractC0420Ch.A0H) {
                im.A0Z(atomType + 8);
                ck.A02 = C0382Ao.A08(im, Integer.toString(channelCount), str, drmInitData2);
            } else if (A093 == AbstractC0420Ch.A0G) {
                ck.A02 = Format.A07(Integer.toString(channelCount), str2, null, -1, -1, childAtomType, childPosition, null, drmInitData2, 0, str);
            } else if (A093 == AbstractC0420Ch.A05) {
                bArr = new byte[A092];
                im.A0Z(atomType);
                im.A0d(bArr, 0, A092);
            }
            atomType += A092;
        }
        if (ck.A02 == null && str2 != null) {
            if (A0I(492, 9, 89).equals(str2)) {
                i5 = 2;
            } else {
                i5 = -1;
            }
            String mimeType = Integer.toString(channelCount);
            if (bArr != null) {
                list = Collections.singletonList(bArr);
            }
            ck.A02 = Format.A06(mimeType, str2, null, -1, -1, childAtomType, childPosition, i5, list, drmInitData2, 0, str);
        }
    }

    public static boolean A0O(long[] jArr, long j, long j2, long j3) {
        int length = jArr.length - 1;
        int latestDelayIndex = C0556Ic.A06(3, 0, length);
        int A062 = C0556Ic.A06(jArr.length - 3, 0, length);
        if (jArr[0] > j2 || j2 >= jArr[latestDelayIndex] || jArr[A062] >= j3 || j3 > j) {
            return false;
        }
        return true;
    }

    public static byte[] A0P(IM im, int i, int i2) {
        int i3 = i + 8;
        while (i3 - i < i2) {
            im.A0Z(i3);
            int A09 = im.A09();
            if (im.A09() == AbstractC0420Ch.A0q) {
                return Arrays.copyOfRange(im.A00, i3, i3 + A09);
            }
            i3 += A09;
        }
        return null;
    }
}
