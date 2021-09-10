package com.google.android.gms.internal.ads;

import android.view.View;
import com.google.android.gms.ads.internal.zzg;
import javax.annotation.concurrent.GuardedBy;

public final class zzcxb implements zzg {
    @GuardedBy("this")
    private zzg zzgxe;

    public final synchronized void zza(zzg zzg) {
        this.zzgxe = zzg;
    }

    @Override // com.google.android.gms.ads.internal.zzg
    public final synchronized void zzh(View view) {
        zzg zzg = this.zzgxe;
        if (zzg != null) {
            zzg.zzh(view);
        }
    }

    @Override // com.google.android.gms.ads.internal.zzg
    public final synchronized void zzkc() {
        zzg zzg = this.zzgxe;
        if (zzg != null) {
            zzg.zzkc();
        }
    }

    @Override // com.google.android.gms.ads.internal.zzg
    public final synchronized void zzkd() {
        zzg zzg = this.zzgxe;
        if (zzg != null) {
            zzg.zzkd();
        }
    }
}
