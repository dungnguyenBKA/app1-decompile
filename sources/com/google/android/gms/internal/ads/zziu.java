package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.media.AudioTimestamp;
import android.media.AudioTrack;
import com.vungle.warren.error.VungleException;

@TargetApi(VungleException.NO_SPACE_TO_DOWNLOAD_ASSETS)
final class zziu extends zziv {
    private final AudioTimestamp zzalt = new AudioTimestamp();
    private long zzalu;
    private long zzalv;
    private long zzalw;

    public zziu() {
        super(null);
    }

    @Override // com.google.android.gms.internal.ads.zziv
    public final void zza(AudioTrack audioTrack, boolean z) {
        super.zza(audioTrack, z);
        this.zzalu = 0;
        this.zzalv = 0;
        this.zzalw = 0;
    }

    @Override // com.google.android.gms.internal.ads.zziv
    public final boolean zzfy() {
        boolean timestamp = this.zzakc.getTimestamp(this.zzalt);
        if (timestamp) {
            long j = this.zzalt.framePosition;
            if (this.zzalv > j) {
                this.zzalu++;
            }
            this.zzalv = j;
            this.zzalw = j + (this.zzalu << 32);
        }
        return timestamp;
    }

    @Override // com.google.android.gms.internal.ads.zziv
    public final long zzfz() {
        return this.zzalt.nanoTime;
    }

    @Override // com.google.android.gms.internal.ads.zziv
    public final long zzga() {
        return this.zzalw;
    }
}
