package com.facebook.ads.redexgen.X;

import androidx.annotation.Nullable;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.util.Arrays;

public class XG implements AnonymousClass0L {
    public static byte[] A01;
    public static String[] A02;
    public final /* synthetic */ XK A00;

    static {
        A02();
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            byte b = copyOfRange[i4];
            if (A02[3].charAt(2) != 'x') {
                A02[0] = "5v5qZEzKm5dZGLy7lyhruzHwv9U4ulwR";
                copyOfRange[i4] = (byte) ((b ^ i3) ^ FacebookMediationAdapter.ERROR_MAPPING_NATIVE_ASSETS);
            } else {
                throw new RuntimeException();
            }
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{5, 1, 13, 11, 9};
    }

    public static void A02() {
        A02 = new String[]{"aROWSCJTZ7USEA9NykDAgKPqU9Hz2yMC", "Zqbs868sBagHNlYScp55lXssWh10RIQa", "mbYc5GC1jhCg", "AuzesFDqytnerPl8cSxQvwaSTNgSXgGN", "J34OJh55Zf7CVcps1JZJSO0d6JwePACZ", "sgVYwbqUus7", "7dh0o4NaZc6u8WRc1KGfxvMUmypAWeMQ", "ZE0swazaf"};
    }

    public XG(XK xk) {
        this.A00 = xk;
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0L
    public final void A8O(Throwable th) {
        this.A00.A04().A8V(A00(0, 5, 0), C03228e.A1M, new C03238f(th));
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0L
    public final void A8Z(Throwable th) {
        this.A00.A04().A8V(A00(0, 5, 0), C03228e.A1O, new C03238f(th));
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0L
    public final void ACs(String str, int i, @Nullable String str2, @Nullable Integer num, @Nullable Long l, AnonymousClass06 r18) {
        AnonymousClass7G.A05(this.A00, r18.A06, r18.A08, r18.A09, r18.A07, r18.A03, i, str2, num, l, null);
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass0L
    public final void ACt(String str, boolean z, AnonymousClass06 r10) {
        AnonymousClass7G.A04(this.A00, new AnonymousClass7F(r10.A06, r10.A08, r10.A07, r10.A03, str), z);
    }
}
