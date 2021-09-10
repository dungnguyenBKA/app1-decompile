package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zza;
import com.google.android.gms.ads.internal.zzr;

/* access modifiers changed from: package-private */
public final class zzayq extends zza {
    private final /* synthetic */ zzayo zzecs;

    zzayq(zzayo zzayo) {
        this.zzecs = zzayo;
    }

    @Override // com.google.android.gms.ads.internal.util.zza
    public final void zzwe() {
        zzabt zzabt = new zzabt(this.zzecs.context, this.zzecs.zzbpn.zzbrp);
        synchronized (this.zzecs.lock) {
            try {
                zzr.zzla();
                zzabu.zza(this.zzecs.zzecf, zzabt);
            } catch (IllegalArgumentException e) {
                zzazk.zzd("Cannot config CSI reporter.", e);
            }
        }
    }
}
