package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.content.Context;
import android.media.AudioManager;
import android.os.SystemClock;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;

/* renamed from: com.facebook.ads.redexgen.X.Uq  reason: case insensitive filesystem */
public final class C0870Uq extends AnonymousClass6V {
    public static byte[] A01;
    public final AudioManager A00;

    static {
        A05();
    }

    public static String A04(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 33);
        }
        return new String(copyOfRange);
    }

    public static void A05() {
        A01 = new byte[]{-22, -2, -19, -14, -8};
    }

    public C0870Uq(Context context, C02715v r5) {
        super(context, r5);
        this.A00 = (AudioManager) context.getSystemService(A04(0, 5, FacebookMediationAdapter.ERROR_FACEBOOK_INITIALIZATION));
    }

    /* access modifiers changed from: private */
    @SuppressLint({"Nullable Dereference"})
    public AbstractC02956t A03(HashMap<Integer, C0869Up> hashMap) {
        return new XA(SystemClock.elapsedRealtime(), A03(), hashMap, EnumC02946s.A06);
    }

    public final AbstractC02806e A0H() {
        return new C0867Un(this);
    }

    public final AbstractC02806e A0I() {
        return new C0864Uk(this);
    }

    public final AbstractC02806e A0J() {
        return new C0865Ul(this);
    }

    public final AbstractC02806e A0K() {
        return new C0866Um(this);
    }

    public final AbstractC02806e A0L(List<C02796d> list) {
        return new C0868Uo(this, list);
    }
}
