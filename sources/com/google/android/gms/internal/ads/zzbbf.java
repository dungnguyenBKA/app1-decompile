package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.graphics.SurfaceTexture;
import com.google.android.gms.ads.internal.util.zzj;
import com.vungle.warren.error.VungleException;
import java.util.concurrent.TimeUnit;

@TargetApi(VungleException.SERVER_RETRY_ERROR)
public final class zzbbf {
    private final long zzekt = TimeUnit.MILLISECONDS.toNanos(((Long) zzwr.zzqr().zzd(zzabp.zzcng)).longValue());
    private long zzeku;
    private boolean zzekv = true;

    zzbbf() {
    }

    public final void zza(SurfaceTexture surfaceTexture, zzbaw zzbaw) {
        if (zzbaw != null) {
            long timestamp = surfaceTexture.getTimestamp();
            if (this.zzekv || Math.abs(timestamp - this.zzeku) >= this.zzekt) {
                this.zzekv = false;
                this.zzeku = timestamp;
                zzj.zzeen.post(new zzbbi(this, zzbaw));
            }
        }
    }

    public final void zzaal() {
        this.zzekv = true;
    }
}
