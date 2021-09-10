package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzbs;
import java.util.Map;

/* access modifiers changed from: package-private */
public final class zzalh implements zzaif<zzalx> {
    private final /* synthetic */ zzakm zzdjv;
    private final /* synthetic */ zzakz zzdjw;
    private final /* synthetic */ zzei zzdjy;
    private final /* synthetic */ zzbs zzdjz;

    zzalh(zzakz zzakz, zzei zzei, zzakm zzakm, zzbs zzbs) {
        this.zzdjw = zzakz;
        this.zzdjy = zzei;
        this.zzdjv = zzakm;
        this.zzdjz = zzbs;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, java.util.Map] */
    @Override // com.google.android.gms.internal.ads.zzaif
    public final /* synthetic */ void zza(zzalx zzalx, Map map) {
        synchronized (this.zzdjw.lock) {
            zzazk.zzew("JS Engine is requesting an update");
            if (this.zzdjw.status == 0) {
                zzazk.zzew("Starting reload.");
                this.zzdjw.status = 2;
                this.zzdjw.zza(this.zzdjy);
            }
            this.zzdjv.zzb("/requestReload", (zzaif) this.zzdjz.get());
        }
    }
}
