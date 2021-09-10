package com.google.android.gms.internal.ads;

import android.os.Bundle;
import javax.annotation.concurrent.GuardedBy;

public final class zzctg extends zzave implements zzbsu {
    @GuardedBy("this")
    private zzbsx zzguf;
    @GuardedBy("this")
    private zzavf zzguh;
    @GuardedBy("this")
    private zzbyn zzgui;

    public final synchronized void zza(zzavf zzavf) {
        this.zzguh = zzavf;
    }

    @Override // com.google.android.gms.internal.ads.zzavf
    public final synchronized void zzaf(zv zvVar) {
        zzavf zzavf = this.zzguh;
        if (zzavf != null) {
            zzavf.zzaf(zvVar);
        }
        zzbyn zzbyn = this.zzgui;
        if (zzbyn != null) {
            zzbyn.onInitializationSucceeded();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzavf
    public final synchronized void zzag(zv zvVar) {
        zzavf zzavf = this.zzguh;
        if (zzavf != null) {
            zzavf.zzag(zvVar);
        }
        zzbsx zzbsx = this.zzguf;
        if (zzbsx != null) {
            zzbsx.onAdLoaded();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzavf
    public final synchronized void zzah(zv zvVar) {
        zzavf zzavf = this.zzguh;
        if (zzavf != null) {
            zzavf.zzah(zvVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzavf
    public final synchronized void zzai(zv zvVar) {
        zzavf zzavf = this.zzguh;
        if (zzavf != null) {
            zzavf.zzai(zvVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzavf
    public final synchronized void zzaj(zv zvVar) {
        zzavf zzavf = this.zzguh;
        if (zzavf != null) {
            zzavf.zzaj(zvVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzavf
    public final synchronized void zzak(zv zvVar) {
        zzavf zzavf = this.zzguh;
        if (zzavf != null) {
            zzavf.zzak(zvVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzavf
    public final synchronized void zzal(zv zvVar) {
        zzavf zzavf = this.zzguh;
        if (zzavf != null) {
            zzavf.zzal(zvVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzavf
    public final synchronized void zzam(zv zvVar) {
        zzavf zzavf = this.zzguh;
        if (zzavf != null) {
            zzavf.zzam(zvVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzavf
    public final synchronized void zzb(Bundle bundle) {
        zzavf zzavf = this.zzguh;
        if (zzavf != null) {
            zzavf.zzb(bundle);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzavf
    public final synchronized void zzd(zv zvVar, int i) {
        zzavf zzavf = this.zzguh;
        if (zzavf != null) {
            zzavf.zzd(zvVar, i);
        }
        zzbyn zzbyn = this.zzgui;
        if (zzbyn != null) {
            zzbyn.zzdy(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzavf
    public final synchronized void zze(zv zvVar, int i) {
        zzavf zzavf = this.zzguh;
        if (zzavf != null) {
            zzavf.zze(zvVar, i);
        }
        zzbsx zzbsx = this.zzguf;
        if (zzbsx != null) {
            zzbsx.onAdFailedToLoad(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbsu
    public final synchronized void zza(zzbsx zzbsx) {
        this.zzguf = zzbsx;
    }

    public final synchronized void zza(zzbyn zzbyn) {
        this.zzgui = zzbyn;
    }

    @Override // com.google.android.gms.internal.ads.zzavf
    public final synchronized void zza(zv zvVar, zzavj zzavj) {
        zzavf zzavf = this.zzguh;
        if (zzavf != null) {
            zzavf.zza(zvVar, zzavj);
        }
    }
}
