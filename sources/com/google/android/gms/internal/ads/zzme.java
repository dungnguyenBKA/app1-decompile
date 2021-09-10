package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import com.vungle.warren.error.VungleException;

/* access modifiers changed from: package-private */
@TargetApi(VungleException.SERVER_ERROR)
public final class zzme implements zzmc {
    private final int zzbdf;
    private MediaCodecInfo[] zzbdg;

    public zzme(boolean z) {
        this.zzbdf = z ? 1 : 0;
    }

    private final void zzhm() {
        if (this.zzbdg == null) {
            this.zzbdg = new MediaCodecList(this.zzbdf).getCodecInfos();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzmc
    public final int getCodecCount() {
        zzhm();
        return this.zzbdg.length;
    }

    @Override // com.google.android.gms.internal.ads.zzmc
    public final MediaCodecInfo getCodecInfoAt(int i) {
        zzhm();
        return this.zzbdg[i];
    }

    @Override // com.google.android.gms.internal.ads.zzmc
    public final boolean zza(String str, MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.isFeatureSupported("secure-playback");
    }

    @Override // com.google.android.gms.internal.ads.zzmc
    public final boolean zzhl() {
        return true;
    }
}
