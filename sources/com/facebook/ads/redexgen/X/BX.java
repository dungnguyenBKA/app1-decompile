package com.facebook.ads.redexgen.X;

import android.annotation.TargetApi;
import android.media.MediaCodec;
import com.vungle.warren.error.VungleException;

@TargetApi(VungleException.ASSET_DOWNLOAD_ERROR)
public final class BX {
    public final MediaCodec.CryptoInfo.Pattern A00;
    public final MediaCodec.CryptoInfo A01;

    public BX(MediaCodec.CryptoInfo cryptoInfo) {
        this.A01 = cryptoInfo;
        this.A00 = new MediaCodec.CryptoInfo.Pattern(0, 0);
    }

    /* access modifiers changed from: private */
    public void A00(int i, int i2) {
        this.A00.set(i, i2);
        this.A01.setPattern(this.A00);
    }
}
