package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzd;
import java.util.Map;

/* access modifiers changed from: package-private */
public final class zzale implements zzaif<zzalx> {
    private final /* synthetic */ zzalq zzdju;
    private final /* synthetic */ zzakm zzdjv;
    private final /* synthetic */ zzakz zzdjw;

    zzale(zzakz zzakz, zzalq zzalq, zzakm zzakm) {
        this.zzdjw = zzakz;
        this.zzdju = zzalq;
        this.zzdjv = zzakm;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, java.util.Map] */
    @Override // com.google.android.gms.internal.ads.zzaif
    public final /* synthetic */ void zza(zzalx zzalx, Map map) {
        synchronized (this.zzdjw.lock) {
            if (this.zzdju.getStatus() != -1) {
                if (this.zzdju.getStatus() != 1) {
                    this.zzdjw.status = 0;
                    this.zzdjw.zzdjo.zzg(this.zzdjv);
                    this.zzdju.zzl(this.zzdjv);
                    this.zzdjw.zzdjq = this.zzdju;
                    zzd.zzeb("Successfully loaded JS Engine.");
                }
            }
        }
    }
}
