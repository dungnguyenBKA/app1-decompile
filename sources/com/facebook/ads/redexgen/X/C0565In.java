package com.facebook.ads.redexgen.X;

import android.annotation.TargetApi;
import android.media.MediaCodec;
import android.os.Handler;
import androidx.annotation.NonNull;
import com.vungle.warren.error.VungleException;

@TargetApi(VungleException.ASSET_DOWNLOAD_RECOVERABLE)
/* renamed from: com.facebook.ads.redexgen.X.In  reason: case insensitive filesystem */
public final class C0565In implements MediaCodec.OnFrameRenderedListener {
    public final /* synthetic */ AnonymousClass21 A00;

    public C0565In(AnonymousClass21 r2, MediaCodec mediaCodec) {
        this.A00 = r2;
        mediaCodec.setOnFrameRenderedListener(this, new Handler());
    }

    public final void onFrameRendered(@NonNull MediaCodec mediaCodec, long j, long j2) {
        if (this == this.A00.A00) {
            this.A00.A1T();
        }
    }
}
