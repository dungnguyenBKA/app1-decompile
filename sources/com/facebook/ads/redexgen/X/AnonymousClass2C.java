package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.pm.PackageManager;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Handler;
import android.view.Surface;
import androidx.annotation.Nullable;
import com.facebook.ads.internal.exoplayer2.Format;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import com.vungle.warren.error.VungleException;
import java.nio.ByteBuffer;
import java.util.Arrays;

@TargetApi(VungleException.NO_SPACE_TO_INIT)
/* renamed from: com.facebook.ads.redexgen.X.2C  reason: invalid class name */
public final class AnonymousClass2C extends AbstractC02013c implements ID {
    public static byte[] A0E;
    public static String[] A0F;
    public int A00;
    public int A01;
    public int A02;
    public int A03;
    public int A04;
    public long A05;
    public MediaFormat A06;
    public boolean A07;
    public boolean A08;
    public boolean A09;
    public boolean A0A;
    public final Context A0B;
    public final B6 A0C;
    public final BC A0D;

    static {
        A07();
        A06();
    }

    public static String A04(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0E, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 16);
        }
        return new String(copyOfRange);
    }

    public static void A06() {
        A0E = new byte[]{7, 5, 16, 102, 27, 13, 11, 102, 41, 41, 43, 102, 44, 45, 43, 65, 67, 86, 32, 105, 97, 97, 105, 98, 107, 32, 124, 111, 121, 32, 106, 107, 109, 97, 106, 107, 124, 54, 57, 51, 37, 56, 62, 51, 121, 36, 56, 49, 35, 32, 54, 37, 50, 121, 59, 50, 54, 57, 53, 54, 52, 60, 64, 84, 69, 72, 78, 14, 83, 64, 86, 24, 19, 26, 21, 21, 30, 23, 86, 24, 20, 14, 21, 15, 63, 50, 37, 56, 59, 35, 50, 76, 65, 86, 75, 85, 72, 80, 65, 95, 83, 74, 31, 91, 92, 66, 71, 70, 31, 65, 91, 72, 87, 70, 66, 70, 78, 48, 50, 41, 47, 50, 41, 52, 57, 121, 107, 103, 122, 102, 111, 39, 120, 107, 126, 111, 70, 84, 88, 70, 64, 91, 82, 5, 26, 13, 16, 25, 19, 11, 26};
    }

    public static void A07() {
        A0F = new String[]{"aLXIjAOeq43kD47uUx47KIQfBztZ5JR6", "bYDvuG1CO7Q3NDumZhhBhB8jHe", "lzauC9VKCpzgBdv7KHug0xPju0EyyDRc", "zBmjWuq", "FwqFg", "FmVSMSIXQUSd0OcxsELVimAN3SmZwHxI", "I9K2sHUvqtNZm1Rj9xJMtQcmEPzsJytW", "SRtBuggTCbvw2MXSYfok3SEL95E53gc0"};
    }

    public AnonymousClass2C(Context context, Dk dk, @Nullable C0<C0967Yj> c0, boolean z, @Nullable Handler handler, @Nullable B7 b7, @Nullable C0386As as, AbstractC0393Az... azArr) {
        this(context, dk, c0, z, handler, b7, new YQ(as, azArr));
    }

    public AnonymousClass2C(Context context, Dk dk, @Nullable C0<C0967Yj> c0, boolean z, @Nullable Handler handler, @Nullable B7 b7, BC bc) {
        super(1, dk, c0, z);
        this.A0B = context.getApplicationContext();
        this.A0D = bc;
        this.A0C = new B6(handler, b7);
        bc.ADm(new YS(this));
    }

    private int A00(C0437De de, Format format) {
        PackageManager packageManager;
        if (C0556Ic.A02 < 24) {
            if (A04(15, 22, 30).equals(de.A02)) {
                boolean z = true;
                if (C0556Ic.A02 == 23 && (packageManager = this.A0B.getPackageManager()) != null && packageManager.hasSystemFeature(A04(37, 25, 71))) {
                    z = false;
                }
                if (z) {
                    return -1;
                }
            }
        }
        return format.A09;
    }

    private final int A01(C0437De de, Format format, Format[] formatArr) {
        return A00(de, format);
    }

    @SuppressLint({"InlinedApi"})
    private final MediaFormat A02(Format format, String str, int i) {
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString(A04(113, 4, 59), str);
        mediaFormat.setInteger(A04(71, 13, FacebookMediationAdapter.ERROR_NULL_CONTEXT), format.A05);
        mediaFormat.setInteger(A04(125, 11, 26), format.A0C);
        C0447Dq.A07(mediaFormat, format.A0P);
        C0447Dq.A05(mediaFormat, A04(99, 14, 34), i);
        if (C0556Ic.A02 >= 23) {
            mediaFormat.setInteger(A04(117, 8, 80), 0);
        }
        return mediaFormat;
    }

    private void A05() {
        long A68 = this.A0D.A68(A7z());
        if (A68 != Long.MIN_VALUE) {
            if (!this.A08) {
                A68 = Math.max(this.A05, A68);
            }
            this.A05 = A68;
            this.A08 = false;
        }
    }

    public static boolean A09(String str) {
        if (C0556Ic.A02 < 24 && A04(0, 15, 88).equals(str)) {
            if (!A04(136, 7, 37).equals(C0556Ic.A05) || (!C0556Ic.A03.startsWith(A04(143, 8, FacebookMediationAdapter.ERROR_ADVIEW_CONSTRUCTOR_EXCEPTION)) && !C0556Ic.A03.startsWith(A04(84, 7, 71)) && !C0556Ic.A03.startsWith(A04(91, 8, 52)))) {
                return false;
            }
            return true;
        }
        return false;
    }

    private final boolean A0A(String str) {
        int A002 = IF.A00(str);
        if (A002 != 0) {
            boolean A7y = this.A0D.A7y(A002);
            if (A0F[5].charAt(2) != 'V') {
                throw new RuntimeException();
            }
            A0F[1] = "OP";
            if (A7y) {
                return true;
            }
        }
        return false;
    }

    @Override // com.facebook.ads.redexgen.X.EP, com.facebook.ads.redexgen.X.AbstractC02013c
    public final void A14() {
        try {
            this.A0D.ACz();
            try {
                super.A14();
            } finally {
                this.A0U.A00();
                this.A0C.A04(this.A0U);
            }
        } catch (Throwable th) {
            super.A14();
            throw th;
        } finally {
            this.A0U.A00();
            this.A0C.A04(this.A0U);
        }
    }

    @Override // com.facebook.ads.redexgen.X.EP, com.facebook.ads.redexgen.X.AbstractC02013c
    public final void A15() {
        super.A15();
        this.A0D.ACT();
    }

    @Override // com.facebook.ads.redexgen.X.EP, com.facebook.ads.redexgen.X.AbstractC02013c
    public final void A16() {
        A05();
        this.A0D.pause();
        super.A16();
    }

    @Override // com.facebook.ads.redexgen.X.EP, com.facebook.ads.redexgen.X.AbstractC02013c
    public final void A17(long j, boolean z) throws A0 {
        super.A17(j, z);
        this.A0D.reset();
        this.A05 = j;
        this.A07 = true;
        this.A08 = true;
    }

    @Override // com.facebook.ads.redexgen.X.EP, com.facebook.ads.redexgen.X.AbstractC02013c
    public final void A18(boolean z) throws A0 {
        super.A18(z);
        this.A0C.A05(this.A0U);
        int i = A13().A00;
        if (i != 0) {
            this.A0D.A59(i);
        } else {
            this.A0D.A4n();
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02013c
    public final int A1C(MediaCodec mediaCodec, C0437De de, Format format, Format format2) {
        return 0;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:47:0x00cf, code lost:
        if (r7 != -1) goto L_0x00d1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:49:0x00d7, code lost:
        if (r4.A0H(r17.A0C) != false) goto L_0x00d9;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:51:0x00db, code lost:
        if (r17.A05 == -1) goto L_0x00e5;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:53:0x00e3, code lost:
        if (r4.A0G(r17.A05) == false) goto L_0x00e6;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:60:0x00fa, code lost:
        if (r7 != -1) goto L_0x00d1;
     */
    @Override // com.facebook.ads.redexgen.X.AbstractC02013c
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final int A1D(com.facebook.ads.redexgen.X.Dk r15, com.facebook.ads.redexgen.X.C0<com.facebook.ads.redexgen.X.C0967Yj> r16, com.facebook.ads.internal.exoplayer2.Format r17) throws com.facebook.ads.redexgen.X.C0444Dn {
        /*
        // Method dump skipped, instructions count: 253
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.AnonymousClass2C.A1D(com.facebook.ads.redexgen.X.Dk, com.facebook.ads.redexgen.X.C0, com.facebook.ads.internal.exoplayer2.Format):int");
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02013c
    public final C0437De A1G(Dk dk, Format format, boolean z) throws C0444Dn {
        C0437De A6v;
        if (!A0A(format.A0O) || (A6v = dk.A6v()) == null) {
            return super.A1G(dk, format, z);
        }
        return A6v;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02013c
    public final void A1J() throws A0 {
        try {
            this.A0D.ACU();
        } catch (BB e) {
            throw A0.A01(e, A10());
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02013c
    public final void A1M(MediaCodec mediaCodec, MediaFormat mediaFormat) throws A0 {
        int i;
        int[] iArr;
        int i2;
        MediaFormat mediaFormat2 = this.A06;
        if (mediaFormat2 != null) {
            i = IF.A00(mediaFormat2.getString(A04(113, 4, 59)));
            mediaFormat = this.A06;
        } else {
            i = this.A04;
        }
        int integer = mediaFormat.getInteger(A04(71, 13, FacebookMediationAdapter.ERROR_NULL_CONTEXT));
        int integer2 = mediaFormat.getInteger(A04(125, 11, 26));
        if (!this.A09 || integer != 6 || (i2 = this.A00) >= 6) {
            iArr = null;
        } else {
            iArr = new int[i2];
            for (int i3 = 0; i3 < this.A00; i3++) {
                iArr[i3] = i3;
            }
        }
        try {
            this.A0D.A47(i, integer, integer2, 0, iArr, this.A02, this.A03);
        } catch (B8 e) {
            throw A0.A01(e, A10());
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02013c
    public final void A1N(Format format) throws A0 {
        int i;
        super.A1N(format);
        this.A0C.A03(format);
        if (A04(62, 9, 49).equals(format.A0O)) {
            i = format.A0A;
        } else {
            i = 2;
        }
        this.A04 = i;
        this.A00 = format.A05;
        this.A02 = format.A06;
        this.A03 = format.A07;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02013c
    public final void A1O(YY yy) {
        if (this.A07 && !yy.A03()) {
            if (Math.abs(yy.A00 - this.A05) > 500000) {
                this.A05 = yy.A00;
            }
            this.A07 = false;
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02013c
    public final void A1P(C0437De de, MediaCodec mediaCodec, Format format, MediaCrypto mediaCrypto) {
        String str;
        this.A01 = A01(de, format, A1B());
        this.A09 = A09(de.A02);
        this.A0A = de.A04;
        if (de.A01 == null) {
            str = A04(62, 9, 49);
        } else {
            str = de.A01;
        }
        MediaFormat A022 = A02(format, str, this.A01);
        mediaCodec.configure(A022, (Surface) null, mediaCrypto, 0);
        if (this.A0A) {
            this.A06 = A022;
            this.A06.setString(A04(113, 4, 59), format.A0O);
            return;
        }
        this.A06 = null;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02013c
    public final void A1Q(String str, long j, long j2) {
        this.A0C.A06(str, j, j2);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02013c
    public final boolean A1R(long j, long j2, MediaCodec mediaCodec, ByteBuffer byteBuffer, int i, int i2, long j3, boolean z) throws A0 {
        if (this.A0A && (i2 & 2) != 0) {
            mediaCodec.releaseOutputBuffer(i, false);
            return true;
        } else if (z) {
            mediaCodec.releaseOutputBuffer(i, false);
            this.A0U.A08++;
            this.A0D.A7X();
            return true;
        } else {
            try {
                if (!this.A0D.A7U(byteBuffer, j3)) {
                    return false;
                }
                mediaCodec.releaseOutputBuffer(i, false);
                this.A0U.A06++;
                return true;
            } catch (B9 | BB e) {
                throw A0.A01(e, A10());
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.EP, com.facebook.ads.redexgen.X.YH
    public final ID A6k() {
        return this;
    }

    @Override // com.facebook.ads.redexgen.X.ID
    public final AL A70() {
        return this.A0D.A70();
    }

    @Override // com.facebook.ads.redexgen.X.ID
    public final long A73() {
        if (A7F() == 2) {
            A05();
        }
        return this.A05;
    }

    @Override // com.facebook.ads.redexgen.X.AV, com.facebook.ads.redexgen.X.EP
    public final void A7Y(int i, Object obj) throws A0 {
        if (i == 2) {
            BC bc = this.A0D;
            if (A0F[7].charAt(17) != 'P') {
                A0F[4] = "awvXiH99cLu1HaadjiPENScqQYAeI";
                bc.setVolume(((Float) obj).floatValue());
                return;
            }
            throw new RuntimeException();
        } else if (i != 3) {
            super.A7Y(i, obj);
        } else {
            this.A0D.ADf((C0385Ar) obj);
        }
    }

    @Override // com.facebook.ads.redexgen.X.YH, com.facebook.ads.redexgen.X.AbstractC02013c
    public final boolean A7z() {
        return super.A7z() && this.A0D.A7z();
    }

    @Override // com.facebook.ads.redexgen.X.YH, com.facebook.ads.redexgen.X.AbstractC02013c
    public final boolean A89() {
        return this.A0D.A7b() || super.A89();
    }

    @Override // com.facebook.ads.redexgen.X.ID
    public final AL ADq(AL al) {
        return this.A0D.ADq(al);
    }
}
