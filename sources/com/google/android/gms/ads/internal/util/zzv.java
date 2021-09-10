package com.google.android.gms.ads.internal.util;

import android.annotation.TargetApi;
import android.os.Environment;
import android.os.StatFs;
import android.support.v4.media.session.PlaybackStateCompat;
import android.view.View;
import com.google.android.gms.internal.ads.zzabp;
import com.google.android.gms.internal.ads.zzwr;
import com.vungle.warren.error.VungleException;

@TargetApi(VungleException.NO_SPACE_TO_LOAD_AD_AUTO_CACHED)
public class zzv extends zzw {
    @Override // com.google.android.gms.ads.internal.util.zzr
    public boolean isAttachedToWindow(View view) {
        return super.isAttachedToWindow(view) || view.getWindowId() != null;
    }

    @Override // com.google.android.gms.ads.internal.util.zzr
    public final int zzzc() {
        return 14;
    }

    @Override // com.google.android.gms.ads.internal.util.zzr
    public final long zzzg() {
        if (!((Boolean) zzwr.zzqr().zzd(zzabp.zzcss)).booleanValue()) {
            return -1;
        }
        return new StatFs(Environment.getDataDirectory().getAbsolutePath()).getAvailableBytes() / PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID;
    }
}
