package com.facebook.ads.redexgen.X;

import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.ConfigurationInfo;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.util.Arrays;
import javax.annotation.Nullable;

public final class UO extends AnonymousClass6V {
    public static byte[] A04;
    @Nullable
    public ConfigurationInfo A00;
    public final ActivityManager.RunningAppProcessInfo A01;
    public final ActivityManager A02 = ((ActivityManager) this.A03.getSystemService(A04(0, 8, FacebookMediationAdapter.ERROR_WRONG_NATIVE_TYPE)));
    public final Context A03;

    static {
        A05();
    }

    public static String A04(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A04, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 6);
        }
        return new String(copyOfRange);
    }

    public static void A05() {
        A04 = new byte[]{13, 15, 24, 5, 26, 5, 24, 21};
    }

    public UO(Context context, C02715v r6) {
        super(context, r6);
        this.A03 = context;
        ActivityManager activityManager = this.A02;
        if (activityManager != null) {
            this.A00 = activityManager.getDeviceConfigurationInfo();
        }
        this.A01 = new ActivityManager.RunningAppProcessInfo();
    }

    public final AbstractC02806e A0H() {
        return new UL(this);
    }

    public final AbstractC02806e A0I() {
        return new UM(this);
    }

    public final AbstractC02806e A0J() {
        return new UH(this);
    }

    public final AbstractC02806e A0K() {
        return new UI(this);
    }

    public final AbstractC02806e A0L() {
        return new UJ(this);
    }

    public final AbstractC02806e A0M() {
        return new UG(this);
    }

    public final AbstractC02806e A0N() {
        return new UK(this);
    }

    public final AbstractC02806e A0O() {
        return new UF(this);
    }

    public final AbstractC02806e A0P() {
        return new UN(this);
    }

    public final AbstractC02806e A0Q() {
        return new UD(this);
    }

    public final AbstractC02806e A0R() {
        return new UE(this);
    }
}
