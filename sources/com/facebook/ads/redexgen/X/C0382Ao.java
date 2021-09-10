package com.facebook.ads.redexgen.X;

import com.facebook.ads.internal.exoplayer2.Format;
import com.facebook.ads.internal.exoplayer2.drm.DrmInitData;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import com.google.android.gms.ads.AdRequest;
import java.nio.ByteBuffer;
import java.util.Arrays;
import org.apache.http.HttpStatus;

/* renamed from: com.facebook.ads.redexgen.X.Ao  reason: case insensitive filesystem */
public final class C0382Ao {
    public static byte[] A00;
    public static String[] A01;
    public static final int[] A02 = {32, 40, 48, 56, 64, 80, 96, 112, 128, 160, 192, 224, 256, 320, 384, 448, AdRequest.MAX_CONTENT_URL_LENGTH, 576, 640};
    public static final int[] A03 = {1, 2, 3, 6};
    public static final int[] A04 = {2, 1, 2, 3, 3, 4, 4, 5};
    public static final int[] A05 = {48000, 44100, 32000};
    public static final int[] A06 = {24000, 22050, 16000};
    public static final int[] A07 = {69, 87, FacebookMediationAdapter.ERROR_FACEBOOK_INITIALIZATION, 121, 139, 174, 208, 243, 278, 348, HttpStatus.SC_EXPECTATION_FAILED, 487, 557, 696, 835, 975, 1114, 1253, 1393};

    public static String A0A(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 20);
        }
        return new String(copyOfRange);
    }

    public static void A0B() {
        A00 = new byte[]{-12, 8, -9, -4, 2, -62, -12, -10, -58, -90, -70, -87, -82, -76, 116, -86, -90, -88, 120, -76, -56, -73, -68, -62, -126, -72, -76, -74, -122, Byte.MIN_VALUE, -67, -62, -74};
    }

    public static void A0C() {
        A01 = new String[]{"VvJRVU69OBzslE4p0Zfahzrb3nPsCKe", "zB", "Dc8Zie1A4h", "IkzAL6jiMaNeqHCHyOgeN31JBtAuXgmh", "IvEhEJvdlav", "U0ZY", "AtQ7wNEb", "nSd2surlWGidCnNOvkjufSfipgX2"};
    }

    static {
        A0C();
        A0B();
    }

    public static int A00() {
        return 1536;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:18:0x0054, code lost:
        if (r3 == 32000) goto L_0x0056;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:22:0x0067, code lost:
        if (r3 == 8056) goto L_0x0056;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:23:0x006a, code lost:
        r3 = r4 * 4;
        r2 = com.facebook.ads.redexgen.X.C0382Ao.A01;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:24:0x007c, code lost:
        if (r2[5].length() == r2[0].length()) goto L_0x0086;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:25:0x007e, code lost:
        com.facebook.ads.redexgen.X.C0382Ao.A01[1] = "Nn7BAMihkF3vkcKtO99yZwIrAOOwI";
     */
    /* JADX WARNING: Code restructure failed: missing block: B:26:0x0085, code lost:
        return r3;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:28:0x008b, code lost:
        throw new java.lang.RuntimeException();
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static int A01(int r5, int r6) {
        /*
        // Method dump skipped, instructions count: 140
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C0382Ao.A01(int, int):int");
    }

    public static int A02(ByteBuffer byteBuffer) {
        int endIndex = byteBuffer.position();
        int limit = byteBuffer.limit() - 10;
        for (int i = endIndex; i <= limit; i++) {
            if ((byteBuffer.getInt(i + 4) & -16777217) == -1167101192) {
                return i - endIndex;
            }
        }
        return -1;
    }

    public static int A03(ByteBuffer byteBuffer) {
        int i = 6;
        if (((byteBuffer.get(byteBuffer.position() + 4) & 192) >> 6) != 3) {
            i = A03[(byteBuffer.get(byteBuffer.position() + 4) & 48) >> 4];
        }
        return i * 256;
    }

    public static int A04(ByteBuffer byteBuffer, int i) {
        boolean z;
        if ((byteBuffer.get(byteBuffer.position() + i + 7) & 255) == 187) {
            z = true;
        } else {
            z = false;
        }
        return 40 << ((byteBuffer.get((byteBuffer.position() + i) + (z ? 9 : 8)) >> 4) & 7);
    }

    public static int A05(byte[] bArr) {
        if (bArr.length >= 5) {
            return A01((bArr[4] & 192) >> 6, bArr[4] & 63);
        }
        if (A01[7].length() != 0) {
            A01[6] = "NuFbE2RcGiFtx9wQ";
            return -1;
        }
        throw new RuntimeException();
    }

    public static int A06(byte[] bArr) {
        boolean z = false;
        if (bArr[4] != -8 || bArr[5] != 114 || bArr[6] != 111 || (bArr[7] & 254) != 186) {
            return 0;
        }
        if ((bArr[7] & 255) == 187) {
            z = true;
        }
        return 40 << ((bArr[z ? (char) '\t' : '\b'] >> 4) & 7);
    }

    public static Format A07(IM im, String str, String str2, DrmInitData drmInitData) {
        int i = A05[(im.A0F() & 192) >> 6];
        int A0F = im.A0F();
        int nextByte = A04[(A0F & 56) >> 3];
        if ((A0F & 4) != 0) {
            nextByte++;
        }
        return Format.A07(str, A0A(0, 9, 127), null, -1, -1, nextByte, i, null, drmInitData, 0, str2);
    }

    /* JADX INFO: Multiple debug info for r10v0 com.facebook.ads.redexgen.X.IM: [D('sampleRate' int), D('lowByteChanLoc' int)] */
    /* JADX INFO: Multiple debug info for r0v9 int: [D('channelCount' int), D('numDepSub' int)] */
    public static Format A08(IM im, String str, String str2, DrmInitData drmInitData) {
        im.A0a(2);
        int i = A05[(im.A0F() & 192) >> 6];
        int A0F = im.A0F();
        int channelCount = A04[(A0F & 14) >> 1];
        if ((A0F & 1) != 0) {
            channelCount++;
        }
        if (((im.A0F() & 30) >> 1) > 0 && (im.A0F() & 2) != 0) {
            channelCount += 2;
        }
        String A0A = A0A(9, 10, 49);
        if (im.A05() > 0 && (im.A0F() & 1) != 0) {
            A0A = A0A(19, 14, 63);
        }
        return Format.A07(str, A0A, null, -1, -1, channelCount, i, null, drmInitData, 0, str2);
    }

    /* JADX INFO: Multiple debug info for r1v25 int: [D('frameSize' int), D('addbsil' int)] */
    /* JADX WARNING: Code restructure failed: missing block: B:172:0x02c3, code lost:
        if (r12 != false) goto L_0x00ad;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:27:0x00ab, code lost:
        if (r12 != false) goto L_0x00ad;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static com.facebook.ads.redexgen.X.C0381An A09(com.facebook.ads.redexgen.X.IL r19) {
        /*
        // Method dump skipped, instructions count: 850
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C0382Ao.A09(com.facebook.ads.redexgen.X.IL):com.facebook.ads.redexgen.X.An");
    }
}
