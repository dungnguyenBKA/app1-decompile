package com.facebook.ads.redexgen.X;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.annotation.Nullable;
import com.facebook.ads.internal.dynamicloading.DynamicLoaderFactory;
import com.facebook.ads.internal.protocol.AdErrorType;
import java.util.Arrays;
import java.util.UUID;

public abstract class SV implements AnonymousClass22 {
    public static byte[] A05;
    public final AbstractC01661s A00;
    public final XJ A01;
    public final String A02 = UUID.randomUUID().toString();
    public final Handler A03;
    public final AbstractC01711x A04;

    static {
        A03();
    }

    public static String A02(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A05, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 36);
        }
        return new String(copyOfRange);
    }

    public static void A03() {
        A05 = new byte[]{-65, -46, -53, -63, -55, -62, -36, -62, -43, -47, -49, -66, -48, -36, -56, -62, -42, -46, -41, -35, -24, -50, -37, -37, -40, -37, -24, -52, -40, -51, -50, -24, -44, -50, -30, -83, -82, -84, -71, -101, -98, -71, -93, -98, -71, -91, -97, -77, -24, -23, -25, -12, -38, -25, -25, -28, -25, -12, -30, -38, -24, -24, -42, -36, -38, -12, -32, -38, -18};
    }

    public abstract void A05();

    public SV(XJ xj, AbstractC01721y r4) {
        this.A01 = xj;
        DynamicLoaderFactory.makeLoader(this.A01).getInitApi().onAdLoadInvoked(this.A01);
        this.A00 = new SS(xj, this);
        this.A03 = new Handler(Looper.getMainLooper());
        this.A04 = r4.A4M(this.A00, this);
    }

    public final void A04() {
        if (J4.A0n(this.A01)) {
            ExecutorC0627Lc.A00(new SU(this));
        }
    }

    public final void A06(int i, AdErrorType adErrorType, @Nullable String str) {
        Bundle bundle = new Bundle();
        String A022 = A02(48, 21, 113);
        if (str != null) {
            bundle.putString(A022, str);
        } else {
            bundle.putString(A022, adErrorType.getDefaultErrorMessage());
        }
        bundle.putInt(A02(17, 18, 101), adErrorType.getErrorCode());
        AAq(i, this.A02, bundle);
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass22
    public final void AAq(int i, String str, @Nullable Bundle bundle) {
        Message obtain = Message.obtain((Handler) null, i);
        obtain.getData().putString(A02(35, 13, 54), str);
        if (bundle != null) {
            obtain.getData().putBundle(A02(0, 17, 89), bundle);
        }
        this.A03.post(new ST(this, obtain));
    }
}
