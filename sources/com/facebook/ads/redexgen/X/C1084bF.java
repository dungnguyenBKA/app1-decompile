package com.facebook.ads.redexgen.X;

import android.net.Uri;
import java.io.IOException;
import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.bF  reason: case insensitive filesystem */
public final class C1084bF implements HI {
    public static byte[] A00;
    public static final HH A01 = new C1083bE();
    public static final C1084bF A02 = new C1084bF();

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 72);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A00 = new byte[]{10, 59, 51, 51, 63, -26, 57, 53, 59, 56, 41, 43};
    }

    static {
        A01();
    }

    public C1084bF() {
    }

    public /* synthetic */ C1084bF(C1083bE bEVar) {
        this();
    }

    @Override // com.facebook.ads.redexgen.X.HI
    public final Uri A7R() {
        return null;
    }

    @Override // com.facebook.ads.redexgen.X.HI
    public final long ACC(HM hm) throws IOException {
        throw new IOException(A00(0, 12, 126));
    }

    @Override // com.facebook.ads.redexgen.X.HI
    public final void close() throws IOException {
    }

    @Override // com.facebook.ads.redexgen.X.HI
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        throw new UnsupportedOperationException();
    }
}
