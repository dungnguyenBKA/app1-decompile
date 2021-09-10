package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import com.facebook.ads.NativeAdBase;
import java.util.Arrays;
import java.util.List;

/* renamed from: com.facebook.ads.redexgen.X.To  reason: case insensitive filesystem */
public final class C0842To implements AbstractC01631p {
    public static byte[] A03;
    public AnonymousClass5G A00;
    public XJ A01;
    public final NativeAdBase.MediaCacheFlag A02;

    static {
        A03();
    }

    public static String A02(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 87);
        }
        return new String(copyOfRange);
    }

    public static void A03() {
        A03 = new byte[]{59, 52, 33, 60, 35, 48, 100, Byte.MAX_VALUE, 122, Byte.MAX_VALUE, 126, 102, Byte.MAX_VALUE};
    }

    public C0842To(AnonymousClass5G r1, XJ xj, NativeAdBase.MediaCacheFlag mediaCacheFlag) {
        this.A00 = r1;
        this.A01 = xj;
        this.A02 = mediaCacheFlag;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC01631p
    public final void AA7(C0588Jl jl) {
        KS.A00(new C0840Tl(this, jl));
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC01631p
    public final void AAw(List<C0794Rp> list) {
        AnonymousClass7D r0 = new AnonymousClass7D(this.A01);
        String A022 = A02(6, 7, 70);
        for (C0794Rp rp : list) {
            if (A02(6, 7, 70).equals(A022)) {
                A022 = rp.A0T();
            }
            if (this.A02.equals(NativeAdBase.MediaCacheFlag.ALL)) {
                if (rp.A0M() != null) {
                    r0.A0T(new AnonymousClass7A(rp.A0M().getUrl(), rp.A0M().getHeight(), rp.A0M().getWidth(), rp.A0T(), A02(0, 6, 2)));
                }
                if (rp.A0L() != null) {
                    r0.A0T(new AnonymousClass7A(rp.A0L().getUrl(), rp.A0L().getHeight(), rp.A0L().getWidth(), rp.A0T(), A02(0, 6, 2)));
                }
                if (!TextUtils.isEmpty(rp.A0V())) {
                    r0.A0Y(new AnonymousClass7C(rp.A0V(), rp.A0T(), A02(0, 6, 2), rp.A0P().longValue()));
                }
            }
        }
        r0.A0S(new C0841Tn(this, list), new AnonymousClass76(A022, A02(0, 6, 2)));
    }
}
