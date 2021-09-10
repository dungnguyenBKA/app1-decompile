package com.google.android.gms.internal.ads;

import android.content.Context;
import android.media.AudioManager;
import com.google.android.gms.ads.internal.zzr;

public final class zzdbx implements zzdfi<zzdbu> {
    private final Context context;
    private final zzdzv zzghl;

    public zzdbx(zzdzv zzdzv, Context context2) {
        this.zzghl = zzdzv;
        this.context = context2;
    }

    @Override // com.google.android.gms.internal.ads.zzdfi
    public final zzdzw<zzdbu> zzasy() {
        return this.zzghl.zze(new zzdbw(this));
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ zzdbu zzatc() {
        AudioManager audioManager = (AudioManager) this.context.getSystemService("audio");
        return new zzdbu(audioManager.getMode(), audioManager.isMusicActive(), audioManager.isSpeakerphoneOn(), audioManager.getStreamVolume(3), audioManager.getRingerMode(), audioManager.getStreamVolume(2), zzr.zzkw().zzra(), zzr.zzkw().zzrb());
    }
}
