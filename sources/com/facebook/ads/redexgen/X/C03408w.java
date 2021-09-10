package com.facebook.ads.redexgen.X;

import androidx.annotation.Nullable;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* renamed from: com.facebook.ads.redexgen.X.8w  reason: invalid class name and case insensitive filesystem */
public final class C03408w {
    public static byte[] A05;
    public int A00 = 0;
    public C03418x A01;
    @Nullable
    public String A02;
    @Nullable
    public String A03;
    public List<C03388u> A04 = new ArrayList();

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A05, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ FacebookMediationAdapter.ERROR_CREATE_NATIVE_AD_FROM_BID_PAYLOAD);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A05 = new byte[]{79, 88};
    }

    public C03408w(C03418x r2, @Nullable String str, @Nullable String str2) {
        this.A01 = r2;
        this.A03 = str;
        this.A02 = str2;
    }

    public final int A02() {
        return this.A04.size();
    }

    public final long A03() {
        C03418x r0 = this.A01;
        if (r0 != null) {
            return r0.A0C() + ((long) this.A01.A03());
        }
        return -1;
    }

    public final C03388u A04() {
        if (this.A00 >= this.A04.size()) {
            return null;
        }
        this.A00++;
        return this.A04.get(this.A00 - 1);
    }

    public final C03418x A05() {
        return this.A01;
    }

    @Nullable
    public final String A06() {
        return this.A02;
    }

    @Nullable
    public final String A07() {
        int i = this.A00;
        if (i <= 0 || i > this.A04.size()) {
            return null;
        }
        return this.A04.get(this.A00 - 1).A05().optString(A00(0, 2, 65));
    }

    @Nullable
    public final String A08() {
        return this.A03;
    }

    public final void A09(C03388u r2) {
        this.A04.add(r2);
    }

    public final boolean A0A() {
        if (this.A01 == null || LZ.A00() > this.A01.A0C() + ((long) this.A01.A03())) {
            return true;
        }
        return false;
    }
}
