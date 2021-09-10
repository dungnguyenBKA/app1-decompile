package com.facebook.ads.redexgen.X;

import android.annotation.TargetApi;
import android.media.MediaCrypto;
import com.vungle.warren.error.VungleException;

@TargetApi(VungleException.NO_SPACE_TO_INIT)
/* renamed from: com.facebook.ads.redexgen.X.Yj  reason: case insensitive filesystem */
public final class C0967Yj implements C1 {
    public final MediaCrypto A00;
    public final boolean A01;

    public final MediaCrypto A00() {
        return this.A00;
    }

    public final boolean A01(String str) {
        if (this.A01 || !this.A00.requiresSecureDecoderComponent(str)) {
            return false;
        }
        return true;
    }
}
