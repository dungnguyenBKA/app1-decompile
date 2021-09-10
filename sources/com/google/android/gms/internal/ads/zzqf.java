package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.media.MediaCodec;
import android.os.Handler;
import com.vungle.warren.error.VungleException;

/* access modifiers changed from: package-private */
@TargetApi(VungleException.ASSET_DOWNLOAD_RECOVERABLE)
public final class zzqf implements MediaCodec.OnFrameRenderedListener {
    private final /* synthetic */ zzqe zzbmh;

    private zzqf(zzqe zzqe, MediaCodec mediaCodec) {
        this.zzbmh = zzqe;
        mediaCodec.setOnFrameRenderedListener(this, new Handler());
    }

    public final void onFrameRendered(MediaCodec mediaCodec, long j, long j2) {
        zzqe zzqe = this.zzbmh;
        if (this == zzqe.zzbme) {
            zzqe.zzjk();
        }
    }
}
