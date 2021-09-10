package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.media.MediaCodec;
import com.vungle.warren.error.VungleException;

@TargetApi(VungleException.ASSET_DOWNLOAD_ERROR)
final class zzjn {
    private final MediaCodec.CryptoInfo zzany;
    private final MediaCodec.CryptoInfo.Pattern zzaoh;

    private zzjn(MediaCodec.CryptoInfo cryptoInfo) {
        this.zzany = cryptoInfo;
        this.zzaoh = new MediaCodec.CryptoInfo.Pattern(0, 0);
    }

    /* access modifiers changed from: private */
    public final void set(int i, int i2) {
        this.zzaoh.set(0, 0);
        this.zzany.setPattern(this.zzaoh);
    }
}
