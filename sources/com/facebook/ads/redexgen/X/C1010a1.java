package com.facebook.ads.redexgen.X;

import android.util.Log;
import com.facebook.ads.internal.exoplayer2.metadata.Metadata;
import com.facebook.ads.internal.exoplayer2.metadata.id3.ApicFrame;
import com.facebook.ads.internal.exoplayer2.metadata.id3.BinaryFrame;
import com.facebook.ads.internal.exoplayer2.metadata.id3.ChapterFrame;
import com.facebook.ads.internal.exoplayer2.metadata.id3.ChapterTocFrame;
import com.facebook.ads.internal.exoplayer2.metadata.id3.CommentFrame;
import com.facebook.ads.internal.exoplayer2.metadata.id3.GeobFrame;
import com.facebook.ads.internal.exoplayer2.metadata.id3.Id3Frame;
import com.facebook.ads.internal.exoplayer2.metadata.id3.PrivFrame;
import com.facebook.ads.internal.exoplayer2.metadata.id3.TextInformationFrame;
import com.facebook.ads.internal.exoplayer2.metadata.id3.UrlLinkFrame;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Locale;

/* renamed from: com.facebook.ads.redexgen.X.a1  reason: case insensitive filesystem */
public final class C1010a1 implements AbstractC0449Du {
    public static byte[] A01;
    public static String[] A02;
    public static final int A03 = C0556Ic.A08(A0I(166, 3, 87));
    public static final E6 A04 = new C1009a0();
    public final E6 A00;

    /* JADX WARNING: Error to parse debug info: Index 21 out of bounds for length 20 in method: com.facebook.ads.redexgen.X.a1.A06(com.facebook.ads.redexgen.X.IM, int, int, boolean, int, com.facebook.ads.redexgen.X.E6):com.facebook.ads.internal.exoplayer2.metadata.id3.ChapterFrame, file: assets/audience_network.dex
    java.lang.ArrayIndexOutOfBoundsException: Index 21 out of bounds for length 20
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.startVar(DebugInfoParser.java:221)
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:137)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:111)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:569)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:44)
     */
    public static ChapterFrame A06(IM im, int i, int i2, boolean z, int i3, E6 e6) throws UnsupportedEncodingException {
        int A07 = im.A07();
        int A022 = A02(im.A00, A07);
        String str = new String(im.A00, A07, A022 - A07, A0I(169, 10, 52));
        im.A0Z(A022 + 1);
        int A09 = im.A09();
        int A092 = im.A09();
        long A0N = im.A0N();
        if (A0N == 4294967295L) {
            A0N = -1;
        }
        long A0N2 = im.A0N();
        if (A0N2 == 4294967295L) {
            A0N2 = -1;
        }
        ArrayList arrayList = new ArrayList();
        int i4 = A07 + i;
        while (im.A07() < i4) {
            Id3Frame A0B = A0B(i2, im, z, i3, e6);
            if (A0B != null) {
                arrayList.add(A0B);
            }
        }
        Id3Frame[] id3FrameArr = new Id3Frame[arrayList.size()];
        arrayList.toArray(id3FrameArr);
        return new ChapterFrame(str, A09, A092, A0N, A0N2, id3FrameArr);
    }

    public static String A0I(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 106);
        }
        return new String(copyOfRange);
    }

    public static void A0L() {
        A01 = new byte[]{-4, 58, -4, 58, -4, 58, -103, -41, -103, -41, -103, -41, -103, -41, -51, -63, 7, 19, 2, 14, 6, -12, 10, 27, 6, -34, 38, 67, 86, 67, 2, 86, 81, 81, 2, 85, 74, 81, 84, 86, 2, 86, 81, 2, 68, 71, 2, 67, 80, 2, 43, 38, 21, 2, 86, 67, 73, 16, 43, 51, 54, 47, 46, -22, 62, 57, -22, 46, 47, 45, 57, 46, 47, -22, 48, 60, 43, 55, 47, 4, -22, 51, 46, 7, -78, -51, -43, -40, -47, -48, -116, -32, -37, -116, -30, -51, -40, -43, -48, -51, -32, -47, -116, -75, -80, -97, -116, -32, -51, -45, -116, -29, -43, -32, -44, -116, -39, -51, -42, -37, -34, -62, -47, -34, -33, -43, -37, -38, -87, -38, 6, -11, 1, -7, -76, 7, -3, 14, -7, -76, -7, 12, -9, -7, -7, -8, 7, -76, 6, -7, 1, -11, -3, 2, -3, 2, -5, -76, 8, -11, -5, -76, -8, -11, 8, -11, 10, 5, -12, -25, -15, -19, -53, -42, -42, -45, -41, -53, -49, 37, 64, 15, 32, 65, 63, 75, 64, 65, 78, -19, 5, 3, 10, 10, -1, -2, -70, -29, -34, -51, -70, 14, -5, 1, -70, 17, 3, 14, 2, -70, 7, -5, 4, 9, 12, -16, -1, 12, 13, 3, 9, 8, -41, -52, -70, -5, 8, -2, -70, 15, 8, -2, -1, 0, 3, 8, -1, -2, -70, -3, 9, 7, 10, 12, -1, 13, 13, 3, 9, 8, -70, 13, -3, 2, -1, 7, -1, -25, -1, -3, 4, 4, -7, -8, -76, -35, -40, -57, -76, 8, -11, -5, -76, 11, -3, 8, -4, -76, 9, 2, 7, 9, 4, 4, 3, 6, 8, -7, -8, -76, 1, -11, -2, 3, 6, -22, -7, 6, 7, -3, 3, 2, -47, 49, 73, 71, 78, 78, 71, 76, 69, -2, 83, 76, 81, 83, 78, 78, 77, 80, 82, 67, 66, -2, 65, 77, 75, 78, 80, 67, 81, 81, 67, 66, -2, 77, 80, -2, 67, 76, 65, 80, 87, 78, 82, 67, 66, -2, 68, 80, 63, 75, 67, 20, 24, 24, 24, -60, -61, -75, -100, -96, -91, -61, -62, -76, -101, -97, -92, -80, -77, 59, 58, 44, 19, 30, 38, 63, 54, 73, 65, 54, 52, 69, 54, 53, -15, 55, 58, 67, 68, 69, -15, 69, 57, 67, 54, 54, -15, 51, 74, 69, 54, 68, -15, 64, 55, -15, 26, 21, 4, -15, 69, 50, 56, -15, 57, 54, 50, 53, 54, 67, 11, -15, -18, 7, 12, 14, 9, 9, 8, 11, 13, -2, -3, -71, -4, 1, -6, 11, -6, -4, 13, -2, 11, -71, -2, 7, -4, 8, -3, 2, 7, 0, -47, -46, -46, -46, 18, 22, 10, 16, 14, -40, -4, 0, -12, -6, -8, -62, -3, 3, -8, -6, -31, -27, -39, -33, -35, -89, -30, -24, -33};
    }

    public static void A0M() {
        A02 = new String[]{"sMUxEv8h1aqUKtOfXRhWvF4cd3jhCIiv", "2", "jdWxaIwDf600E5fQi1jvtrBwOfx6AZo5", "VxysSZONWs4Fbmb", "6vXrI6nW4BVssue1T84qDnzAdKjaXJyK", "dpBJthFwlwkteZKALF9GwsW9kwjpNbjg", "2vyk08U", "E"};
    }

    static {
        A0M();
        A0L();
    }

    public C1010a1() {
        this(null);
    }

    public C1010a1(E6 e6) {
        this.A00 = e6;
    }

    public static int A00(int i) {
        if (i == 0 || i == 3) {
            return 1;
        }
        return 2;
    }

    public static int A01(IM im, int i) {
        byte[] bArr = im.A00;
        for (int A07 = im.A07(); A07 + 1 < i; A07++) {
            if ((bArr[A07] & 255) == 255 && bArr[A07 + 1] == 0) {
                System.arraycopy(bArr, A07 + 2, bArr, A07 + 1, (i - A07) - 2);
                i--;
            }
        }
        return i;
    }

    public static int A02(byte[] bArr, int i) {
        while (i < bArr.length) {
            if (bArr[i] == 0) {
                return i;
            }
            i++;
        }
        return bArr.length;
    }

    public static int A03(byte[] bArr, int i, int i2) {
        int A022 = A02(bArr, i);
        if (i2 == 0 || i2 == 3) {
            return A022;
        }
        while (A022 < bArr.length - 1) {
            if (A022 % 2 == 0 && bArr[A022 + 1] == 0) {
                return A022;
            }
            A022 = A02(bArr, A022 + 1);
        }
        return bArr.length;
    }

    public static ApicFrame A04(IM im, int i, int i2) throws UnsupportedEncodingException {
        int A022;
        String A0M;
        int A0F = im.A0F();
        String A0H = A0H(A0F);
        byte[] bArr = new byte[(i - 1)];
        im.A0d(bArr, 0, i - 1);
        String A0I = A0I(458, 6, 63);
        String A0I2 = A0I(169, 10, 52);
        if (i2 == 2) {
            A022 = 2;
            A0M = A0I + C0556Ic.A0M(new String(bArr, 0, 3, A0I2));
            if (A0I(474, 9, 14).equals(A0M)) {
                A0M = A0I(464, 10, 41);
            }
        } else {
            A022 = A02(bArr, 0);
            A0M = C0556Ic.A0M(new String(bArr, 0, A022, A0I2));
            if (A0M.indexOf(47) == -1) {
                A0M = A0I + A0M;
            }
        }
        int encoding = bArr[A022 + 1] & 255;
        int i3 = A022 + 2;
        int A032 = A03(bArr, i3, A0F);
        return new ApicFrame(A0M, new String(bArr, i3, A032 - i3, A0H), encoding, A0O(bArr, A00(A0F) + A032, bArr.length));
    }

    public static BinaryFrame A05(IM im, int i, String str) {
        byte[] bArr = new byte[i];
        im.A0d(bArr, 0, i);
        return new BinaryFrame(str, bArr);
    }

    public static ChapterTocFrame A07(IM im, int framePosition, int elementIdEndIndex, boolean z, int i, E6 e6) throws UnsupportedEncodingException {
        boolean z2;
        int A07 = im.A07();
        int A022 = A02(im.A00, A07);
        String A0I = A0I(169, 10, 52);
        String str = new String(im.A00, A07, A022 - A07, A0I);
        im.A0Z(A022 + 1);
        int A0F = im.A0F();
        boolean z3 = false;
        if ((A0F & 2) != 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        if ((A0F & 1) != 0) {
            z3 = true;
        }
        int ctocFlags = im.A0F();
        String[] strArr = new String[ctocFlags];
        for (int childCount = 0; childCount < ctocFlags; childCount++) {
            int A072 = im.A07();
            int i2 = A02(im.A00, A072);
            strArr[childCount] = new String(im.A00, A072, i2 - A072, A0I);
            im.A0Z(i2 + 1);
        }
        ArrayList arrayList = new ArrayList();
        int i3 = A07 + framePosition;
        while (im.A07() < i3) {
            Id3Frame A0B = A0B(elementIdEndIndex, im, z, i, e6);
            if (A0B != null) {
                arrayList.add(A0B);
            }
        }
        Id3Frame[] id3FrameArr = new Id3Frame[arrayList.size()];
        arrayList.toArray(id3FrameArr);
        return new ChapterTocFrame(str, z2, z3, strArr, id3FrameArr);
    }

    /* JADX INFO: Multiple debug info for r0v5 int: [D('language' java.lang.String), D('textEndIndex' int)] */
    public static CommentFrame A08(IM im, int i) throws UnsupportedEncodingException {
        if (i < 4) {
            return null;
        }
        int A0F = im.A0F();
        String A0H = A0H(A0F);
        byte[] data = new byte[3];
        im.A0d(data, 0, 3);
        String str = new String(data, 0, 3);
        byte[] bArr = new byte[(i - 4)];
        im.A0d(bArr, 0, i - 4);
        int A032 = A03(bArr, 0, A0F);
        String str2 = new String(bArr, 0, A032, A0H);
        int A002 = A00(A0F) + A032;
        return new CommentFrame(str, str2, A0K(bArr, A002, A03(bArr, A002, A0F), A0H));
    }

    /* JADX INFO: Multiple debug info for r0v4 int: [D('mimeType' java.lang.String), D('filenameEndIndex' int)] */
    public static GeobFrame A09(IM im, int i) throws UnsupportedEncodingException {
        int A0F = im.A0F();
        String A0H = A0H(A0F);
        byte[] bArr = new byte[(i - 1)];
        im.A0d(bArr, 0, i - 1);
        int A022 = A02(bArr, 0);
        String str = new String(bArr, 0, A022, A0I(169, 10, 52));
        int i2 = A022 + 1;
        int filenameEndIndex = A03(bArr, i2, A0F);
        String A0K = A0K(bArr, i2, filenameEndIndex, A0H);
        int A002 = A00(A0F) + filenameEndIndex;
        int filenameEndIndex2 = A03(bArr, A002, A0F);
        return new GeobFrame(str, A0K, A0K(bArr, A002, filenameEndIndex2, A0H), A0O(bArr, A00(A0F) + filenameEndIndex2, bArr.length));
    }

    /* JADX WARNING: Code restructure failed: missing block: B:13:0x0082, code lost:
        if (r4 == 1) goto L_0x0084;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:22:0x00b0, code lost:
        if (r4 == 2) goto L_0x0084;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:24:0x00b4, code lost:
        if (r4 != 3) goto L_0x00d7;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:26:0x00b8, code lost:
        if ((r6 & 64) == 0) goto L_0x00d5;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:27:0x00ba, code lost:
        r0 = 1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:28:0x00bb, code lost:
        if (r0 == 0) goto L_0x00c7;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:29:0x00bd, code lost:
        r0 = r9.A09();
        r9.A0a(r0);
        r2 = r2 - (r0 + 4);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:36:0x00d5, code lost:
        r0 = 0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:37:0x00d7, code lost:
        if (r4 != r5) goto L_0x00f8;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:39:0x00db, code lost:
        if ((r6 & 64) == 0) goto L_0x00f6;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:40:0x00dd, code lost:
        r0 = 1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:41:0x00de, code lost:
        if (r0 == 0) goto L_0x00ea;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:42:0x00e0, code lost:
        r1 = r9.A0E();
        r9.A0a(r1 - 4);
        r2 = r2 - r1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:44:0x00ec, code lost:
        if ((r6 & 16) == 0) goto L_0x00f4;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:45:0x00ee, code lost:
        r0 = 1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:46:0x00ef, code lost:
        if (r0 == 0) goto L_0x00c7;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:47:0x00f1, code lost:
        r2 = r2 - 10;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:48:0x00f4, code lost:
        r0 = 0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:49:0x00f6, code lost:
        r0 = 0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:50:0x00f8, code lost:
        android.util.Log.w(r7, A0I(257, 46, 42) + r4);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:51:0x0114, code lost:
        return null;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static com.facebook.ads.redexgen.X.E7 A0A(com.facebook.ads.redexgen.X.IM r9) {
        /*
        // Method dump skipped, instructions count: 283
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C1010a1.A0A(com.facebook.ads.redexgen.X.IM):com.facebook.ads.redexgen.X.E7");
    }

    /* JADX INFO: Multiple debug info for r8v1 'frameId2'  int: [D('flags' int), D('frameId2' int)] */
    /* JADX INFO: Multiple debug info for r7v2 'frameSize'  int: [D('frameSize' int), D('isEncrypted' boolean)] */
    /* JADX WARNING: Code restructure failed: missing block: B:129:0x019f, code lost:
        if (r8 == 67) goto L_0x01a1;
     */
    /* JADX WARNING: Removed duplicated region for block: B:137:0x01bd  */
    /* JADX WARNING: Removed duplicated region for block: B:141:0x01cf  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static com.facebook.ads.internal.exoplayer2.metadata.id3.Id3Frame A0B(int r23, com.facebook.ads.redexgen.X.IM r24, boolean r25, int r26, com.facebook.ads.redexgen.X.E6 r27) {
        /*
        // Method dump skipped, instructions count: 601
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C1010a1.A0B(int, com.facebook.ads.redexgen.X.IM, boolean, int, com.facebook.ads.redexgen.X.E6):com.facebook.ads.internal.exoplayer2.metadata.id3.Id3Frame");
    }

    public static PrivFrame A0C(IM im, int i) throws UnsupportedEncodingException {
        byte[] bArr = new byte[i];
        im.A0d(bArr, 0, i);
        int A022 = A02(bArr, 0);
        return new PrivFrame(new String(bArr, 0, A022, A0I(169, 10, 52)), A0O(bArr, A022 + 1, bArr.length));
    }

    /* JADX INFO: Multiple debug info for r0v3 int: [D('data' byte[]), D('descriptionEndIndex' int)] */
    /* JADX INFO: Multiple debug info for r0v4 int: [D('descriptionEndIndex' int), D('valueEndIndex' int)] */
    public static TextInformationFrame A0D(IM im, int i) throws UnsupportedEncodingException {
        if (i < 1) {
            return null;
        }
        int A0F = im.A0F();
        String A0H = A0H(A0F);
        byte[] bArr = new byte[(i - 1)];
        im.A0d(bArr, 0, i - 1);
        int descriptionEndIndex = A03(bArr, 0, A0F);
        String str = new String(bArr, 0, descriptionEndIndex, A0H);
        int A002 = A00(A0F) + descriptionEndIndex;
        return new TextInformationFrame(A0I(353, 4, 86), str, A0K(bArr, A002, A03(bArr, A002, A0F), A0H));
    }

    public static TextInformationFrame A0E(IM im, int encoding, String charset) throws UnsupportedEncodingException {
        if (encoding < 1) {
            return null;
        }
        int A0F = im.A0F();
        String A0H = A0H(A0F);
        byte[] bArr = new byte[(encoding - 1)];
        im.A0d(bArr, 0, encoding - 1);
        return new TextInformationFrame(charset, null, new String(bArr, 0, A03(bArr, 0, A0F), A0H));
    }

    public static UrlLinkFrame A0F(IM im, int i) throws UnsupportedEncodingException {
        if (i < 1) {
            String[] strArr = A02;
            if (strArr[2].charAt(11) != strArr[5].charAt(11)) {
                String[] strArr2 = A02;
                strArr2[7] = "x";
                strArr2[1] = "0";
                return null;
            }
            throw new RuntimeException();
        }
        int descriptionEndIndex = im.A0F();
        String A0H = A0H(descriptionEndIndex);
        byte[] bArr = new byte[(i - 1)];
        im.A0d(bArr, 0, i - 1);
        int A032 = A03(bArr, 0, descriptionEndIndex);
        String str = new String(bArr, 0, A032, A0H);
        int A002 = A00(descriptionEndIndex) + A032;
        return new UrlLinkFrame(A0I(454, 4, 16), str, A0K(bArr, A002, A02(bArr, A002), A0I(169, 10, 52)));
    }

    public static UrlLinkFrame A0G(IM im, int i, String str) throws UnsupportedEncodingException {
        byte[] bArr = new byte[i];
        im.A0d(bArr, 0, i);
        return new UrlLinkFrame(str, null, new String(bArr, 0, A02(bArr, 0), A0I(169, 10, 52)));
    }

    public static String A0H(int i) {
        String A0I = A0I(169, 10, 52);
        if (i == 0) {
            return A0I;
        }
        if (i == 1) {
            return A0I(357, 6, 5);
        }
        if (i == 2) {
            return A0I(363, 8, 4);
        }
        if (i != 3) {
            return A0I;
        }
        String[] strArr = A02;
        if (strArr[2].charAt(11) != strArr[5].charAt(11)) {
            A02[0] = "Xs3p10eLQltfrtGuZ9I87GBEYIMhEDM2";
            return A0I(371, 5, 124);
        }
        throw new RuntimeException();
    }

    public static String A0J(int i, int i2, int i3, int i4, int i5) {
        if (i == 2) {
            return String.format(Locale.US, A0I(0, 6, FacebookMediationAdapter.ERROR_CREATE_NATIVE_AD_FROM_BID_PAYLOAD), Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4));
        }
        return String.format(Locale.US, A0I(6, 8, 10), Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4), Integer.valueOf(i5));
    }

    public static String A0K(byte[] bArr, int i, int i2, String str) throws UnsupportedEncodingException {
        if (i2 <= i || i2 > bArr.length) {
            return A0I(0, 0, FacebookMediationAdapter.ERROR_REQUIRES_UNIFIED_NATIVE_ADS);
        }
        return new String(bArr, i, i2 - i, str);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:37:0x00a2, code lost:
        if (r8 != false) goto L_0x00a4;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:45:0x00b3, code lost:
        if (r8 != false) goto L_0x00a4;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static boolean A0N(com.facebook.ads.redexgen.X.IM r17, int r18, int r19, boolean r20) {
        /*
        // Method dump skipped, instructions count: 243
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C1010a1.A0N(com.facebook.ads.redexgen.X.IM, int, int, boolean):boolean");
    }

    public static byte[] A0O(byte[] bArr, int i, int i2) {
        if (i2 <= i) {
            return new byte[0];
        }
        byte[] copyOfRange = Arrays.copyOfRange(bArr, i, i2);
        if (A02[3].length() != 29) {
            String[] strArr = A02;
            strArr[2] = "BXfcBk8SW4yeYxu44B11cVVkBGYBzlAv";
            strArr[5] = "okWvwdNSxMQpYeQbiZnCLiGxFx7BKew9";
            return copyOfRange;
        }
        throw new RuntimeException();
    }

    public final Metadata A0P(byte[] bArr, int i) {
        int i2;
        ArrayList arrayList = new ArrayList();
        IM im = new IM(bArr, i);
        E7 A0A = A0A(im);
        if (A0A == null) {
            return null;
        }
        int A07 = im.A07();
        if (E7.A00(A0A) == 2) {
            i2 = 6;
        } else {
            i2 = 10;
        }
        int A012 = E7.A01(A0A);
        if (E7.A02(A0A)) {
            A012 = A01(im, E7.A01(A0A));
        }
        im.A0Y(A07 + A012);
        boolean unsignedIntFrameSizeHack = false;
        if (!A0N(im, E7.A00(A0A), i2, false)) {
            int A002 = E7.A00(A0A);
            if (A02[4].charAt(24) != '1') {
                A02[0] = "uYZb4rh3wheJht2DQ5CIaEPvRS4bXzrD";
                if (A002 != 4 || !A0N(im, 4, i2, true)) {
                    Log.w(A0I(179, 10, 114), A0I(84, 45, 2) + E7.A00(A0A));
                    return null;
                }
                unsignedIntFrameSizeHack = true;
            } else {
                throw new RuntimeException();
            }
        }
        while (im.A05() >= i2) {
            Id3Frame A0B = A0B(E7.A00(A0A), im, unsignedIntFrameSizeHack, i2, this.A00);
            if (A0B != null) {
                arrayList.add(A0B);
            }
        }
        return new Metadata(arrayList);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0449Du
    public final Metadata A4g(DW dw) {
        ByteBuffer byteBuffer = dw.A01;
        return A0P(byteBuffer.array(), byteBuffer.limit());
    }
}
