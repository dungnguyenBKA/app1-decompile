package com.facebook.ads.redexgen.X;

import android.net.Uri;
import androidx.annotation.Nullable;
import com.facebook.ads.internal.exoplayer2.offline.DownloadAction;
import java.io.DataOutputStream;
import java.io.IOException;
import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.a9  reason: case insensitive filesystem */
public final class C1016a9 extends DownloadAction {
    public static byte[] A01;
    public static String[] A02;
    public static final DownloadAction.Deserializer A03 = new C1015a8(A05(0, 11, 68), 0);
    @Nullable
    public final String A00;

    public static String A05(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 55);
        }
        return new String(copyOfRange);
    }

    public static void A06() {
        A01 = new byte[]{3, 1, 28, 20, 1, 22, 0, 0, 26, 5, 22};
    }

    public static void A07() {
        A02 = new String[]{"zIk8lFjKPo5VqXBeAWetc3TePOqewtK4", "Krv9CUV84BxP4tXlBDsVq5ZfguHkkPOw", "qZweMgdQpTvQjM16IN332AToX", "5wIly2IGyFbenCO8uByiE", "WVTy90LHtMArJ1Mx15Navn95RKOGxxfC", "YMittl3f14YbQo67yPLY6h3Kxcx5v1", "fVvKsKq8KPyH9", "YcDFZjjwvX0vuueDfq7B81mncQMZao1W"};
    }

    static {
        A07();
        A06();
    }

    public C1016a9(Uri uri, boolean z, @Nullable byte[] bArr, @Nullable String str) {
        super(A05(0, 11, 68), 0, uri, z, bArr);
        this.A00 = str;
    }

    /* access modifiers changed from: private */
    /* renamed from: A02 */
    public final C1018aB A08(C0464Ej ej) {
        return new C1018aB(this.A01, this.A00, ej);
    }

    private String A04() {
        String str = this.A00;
        return str != null ? str : C0541Hn.A01(this.A01);
    }

    @Override // com.facebook.ads.internal.exoplayer2.offline.DownloadAction
    public final void A09(DataOutputStream dataOutputStream) throws IOException {
        boolean z;
        dataOutputStream.writeUTF(this.A01.toString());
        dataOutputStream.writeBoolean(this.A03);
        dataOutputStream.writeInt(this.A04.length);
        dataOutputStream.write(this.A04);
        if (this.A00 != null) {
            z = true;
        } else {
            z = false;
        }
        dataOutputStream.writeBoolean(z);
        if (z) {
            dataOutputStream.writeUTF(this.A00);
        }
    }

    @Override // com.facebook.ads.internal.exoplayer2.offline.DownloadAction
    public final boolean A0A(DownloadAction downloadAction) {
        if (!(downloadAction instanceof C1016a9) || !A04().equals(((C1016a9) downloadAction).A04())) {
            return false;
        }
        return true;
    }

    @Override // com.facebook.ads.internal.exoplayer2.offline.DownloadAction
    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        boolean equals = super.equals(obj);
        String[] strArr = A02;
        if (strArr[0].charAt(3) != strArr[1].charAt(3)) {
            A02[3] = "S1dYnav0YyHlHBWJfncCN";
            if (!equals) {
                return false;
            }
            return C0556Ic.A0h(this.A00, ((C1016a9) obj).A00);
        }
        throw new RuntimeException();
    }

    @Override // com.facebook.ads.internal.exoplayer2.offline.DownloadAction
    public final int hashCode() {
        int result;
        int hashCode = super.hashCode() * 31;
        String str = this.A00;
        if (str != null) {
            result = str.hashCode();
        } else {
            result = 0;
        }
        int i = hashCode + result;
        String[] strArr = A02;
        if (strArr[6].length() != strArr[2].length()) {
            A02[4] = "5idVnwwxM2TXqOP7ezpSPuxFrlenP4PE";
            return i;
        }
        throw new RuntimeException();
    }
}
