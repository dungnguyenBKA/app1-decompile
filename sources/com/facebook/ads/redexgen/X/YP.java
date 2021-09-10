package com.facebook.ads.redexgen.X;

import android.os.SystemClock;
import android.util.Log;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.util.Arrays;

public final class YP implements BG {
    public static byte[] A01;
    public final /* synthetic */ YQ A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 22);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{44, 32, 114, 70, 87, 90, 92, 103, 65, 82, 80, 88, 67, 109, 100, 101, 120, 99, 100, 109, 42, 99, 103, 122, 101, 121, 121, 99, 104, 102, 115, 42, 102, 107, 120, 109, 111, 42, 107, Byte.MAX_VALUE, 110, 99, 101, 42, 102, 107, 126, 111, 100, 105, 115, 48, 42, 33, 2, 7, 0, 27, 29, 7, 1, 82, 19, 7, 22, 27, 29, 82, 6, 27, 31, 23, 1, 6, 19, 31, 2, 82, 90, 20, 0, 19, 31, 23, 82, 2, 29, 1, 27, 6, 27, 29, 28, 82, 31, 27, 1, 31, 19, 6, 17, 26, 91, 72, 82, 88, 123, 126, 121, 98, 100, 126, 120, 43, 106, 126, 111, 98, 100, 43, Byte.MAX_VALUE, 98, 102, 110, 120, Byte.MAX_VALUE, 106, 102, 123, 43, 35, 120, 114, 120, Byte.MAX_VALUE, 110, 102, 43, 104, 103, 100, 104, 96, 43, 102, 98, 120, 102, 106, Byte.MAX_VALUE, 104, 99, 34, 49, 43};
    }

    public YP(YQ yq) {
        this.A00 = yq;
    }

    public /* synthetic */ YP(YQ yq, BJ bj) {
        this(yq);
    }

    @Override // com.facebook.ads.redexgen.X.BG
    public final void AAX(long j) {
        Log.w(A00(2, 10, 37), A00(12, 41, 28) + j);
    }

    @Override // com.facebook.ads.redexgen.X.BG
    public final void ABE(long j, long j2, long j3, long j4) {
        StringBuilder sb = new StringBuilder();
        sb.append(A00(53, 52, 100));
        sb.append(j);
        String A002 = A00(0, 2, 22);
        sb.append(A002);
        sb.append(j2);
        sb.append(A002);
        sb.append(j3);
        sb.append(A002);
        sb.append(j4);
        sb.append(A002);
        sb.append(this.A00.A03());
        sb.append(A002);
        sb.append(this.A00.A04());
        String sb2 = sb.toString();
        if (!YQ.A0q) {
            Log.w(A00(2, 10, 37), sb2);
            return;
        }
        throw new BM(sb2, null);
    }

    @Override // com.facebook.ads.redexgen.X.BG
    public final void ABm(long j, long j2, long j3, long j4) {
        StringBuilder sb = new StringBuilder();
        sb.append(A00(FacebookMediationAdapter.ERROR_REQUIRES_UNIFIED_NATIVE_ADS, 50, 29));
        sb.append(j);
        String A002 = A00(0, 2, 22);
        sb.append(A002);
        sb.append(j2);
        sb.append(A002);
        sb.append(j3);
        sb.append(A002);
        sb.append(j4);
        sb.append(A002);
        sb.append(this.A00.A03());
        sb.append(A002);
        sb.append(this.A00.A04());
        String sb2 = sb.toString();
        if (!YQ.A0q) {
            Log.w(A00(2, 10, 37), sb2);
            return;
        }
        throw new BM(sb2, null);
    }

    @Override // com.facebook.ads.redexgen.X.BG
    public final void ABt(int i, long j) {
        if (this.A00.A0R != null) {
            this.A00.A0R.ABu(i, j, SystemClock.elapsedRealtime() - this.A00.A0E);
        }
    }
}
