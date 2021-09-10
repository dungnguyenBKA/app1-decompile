package com.facebook.ads.redexgen.X;

import android.annotation.TargetApi;
import android.content.Context;
import android.net.Uri;
import android.view.Surface;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.facebook.ads.internal.exoplayer2.Format;
import com.vungle.warren.error.VungleException;
import java.util.Arrays;

@TargetApi(VungleException.SERVER_RETRY_ERROR)
/* renamed from: com.facebook.ads.redexgen.X.Py  reason: case insensitive filesystem */
public final class C0751Py {
    public static byte[] A02;
    public static String[] A03;
    public final C0442Dj A00;
    public final C1080bB A01 = new C1080bB();

    static {
        A03();
        A02();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 10);
        }
        return new String(copyOfRange);
    }

    public static void A02() {
        A02 = new byte[]{-114, -104, -116, -114, -49, -51, -31, -33, -47, -114, -116, -90, -116, -114, -96, -86, -98, -96, -16, -29, -20, -30, -29, -16, -29, -16, -57, -20, -30, -29, -10, -96, -98, -72, -98, -96, -114, -23, 111, 114, -127, -68, 99, -75, -70, -79, -90, 99, 97, 123, 97, 99};
    }

    public static void A03() {
        A03 = new String[]{"WzijvlAd9RP1HJzMxCKzeYHnMs2QP54v", "kfrqpsiELz0FvZTPYg", "hAwPDz", "OryCsPOoCbEZ1Kjw18", "JoqBI6chV", "rfkFyJ13DXugB3RLj6H", "rQvj", "kthZXjW83"};
    }

    public C0751Py(XJ xj) {
        this.A00 = A2.A00(new YC(xj), new C0395Bb(new C1069b0(this.A01)), new YA());
    }

    @VisibleForTesting
    public static String A01(A0 a0) {
        return A00(41, 11, 55) + a0.A01 + A00(14, 22, 116) + a0.A00 + A00(0, 14, 98) + a0.getCause() + A00(36, 2, 98);
    }

    public static boolean A04() {
        if (A03[0].charAt(3) != 'z') {
            A03[6] = "p35x";
            return true;
        }
        throw new RuntimeException();
    }

    public final int A05() {
        return this.A00.A0K();
    }

    public final int A06() {
        return this.A00.A5k();
    }

    public final long A07() {
        return this.A00.A67();
    }

    public final long A08() {
        return this.A00.A6I();
    }

    @Nullable
    public final C0749Pw A09() {
        Format A0M = this.A00.A0M();
        if (A0M == null) {
            return null;
        }
        return new C0749Pw(A0M.A0F, A0M.A08);
    }

    public final void A0A() {
        this.A00.ACz();
    }

    public final void A0B() {
        this.A00.ADZ();
    }

    public final void A0C() {
        this.A00.A0N();
    }

    public final void A0D(float f) {
        this.A00.A0O(f);
    }

    public final void A0E(long j) {
        this.A00.ADY(j);
    }

    /* JADX INFO: Multiple debug info for r3v0 'this'  com.facebook.ads.redexgen.X.Py: [D('cacheManager' com.facebook.ads.redexgen.X.Q2), D('dataSourceFactory' com.facebook.ads.redexgen.X.HH)] */
    public final void A0F(Context context, Uri uri) {
        if (J4.A1s(context, A04())) {
            this.A00.A0Q(new C1036aT(Q2.A05(context).A0E(context)).A00(uri));
            return;
        }
        this.A00.A0Q(new C1036aT(new C1082bD(context, C0556Ic.A0K(context, A00(38, 3, 4)), this.A01)).A00(uri));
    }

    public final void A0G(@Nullable Surface surface) {
        this.A00.A0P(surface);
    }

    public final void A0H(AbstractC0748Pv pv) {
        this.A00.A3I(new C0529Hb(this, pv));
    }

    public final void A0I(AbstractC0750Px px) {
        this.A00.A0R(new C0532He(this, px));
    }

    public final void A0J(boolean z) {
        this.A00.ADp(z);
    }

    public final boolean A0K() {
        return this.A00.A6z();
    }

    public final boolean A0L() {
        return this.A00.A0L() != null;
    }
}
