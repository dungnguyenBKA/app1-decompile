package com.facebook.ads.redexgen.X;

import android.annotation.TargetApi;
import android.os.Looper;
import com.facebook.ads.internal.exoplayer2.drm.DrmInitData;
import com.facebook.ads.redexgen.X.C1;
import com.vungle.warren.error.VungleException;

@TargetApi(VungleException.NO_SPACE_TO_INIT)
public interface C0<T extends C1> {
    AbstractC0417Bz<T> A2Q(Looper looper, DrmInitData drmInitData);

    boolean A3y(DrmInitData drmInitData);

    void AD5(AbstractC0417Bz<T> bz);
}
