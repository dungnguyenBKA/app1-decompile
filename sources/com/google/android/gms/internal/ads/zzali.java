package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzd;

/* access modifiers changed from: package-private */
public final class zzali implements zzbae<zzakm> {
    private final /* synthetic */ zzakz zzdjw;
    private final /* synthetic */ zzalq zzdka;

    zzali(zzakz zzakz, zzalq zzalq) {
        this.zzdjw = zzakz;
        this.zzdka = zzalq;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // com.google.android.gms.internal.ads.zzbae
    public final /* synthetic */ void zzg(zzakm zzakm) {
        synchronized (this.zzdjw.lock) {
            this.zzdjw.status = 0;
            if (!(this.zzdjw.zzdjq == null || this.zzdka == this.zzdjw.zzdjq)) {
                zzd.zzeb("New JS engine is loaded, marking previous one as destroyable.");
                this.zzdjw.zzdjq.zzuo();
            }
            this.zzdjw.zzdjq = this.zzdka;
        }
    }
}
