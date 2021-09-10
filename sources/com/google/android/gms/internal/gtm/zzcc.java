package com.google.android.gms.internal.gtm;

import android.content.ComponentName;
import android.os.RemoteException;
import com.google.android.gms.analytics.q;
import com.google.android.gms.common.stats.a;
import java.util.Collections;
import java.util.Objects;

public final class zzcc extends zzbs {
    private final zzcb zza = new zzcb(this);
    private final zzcw zzb;
    private final zzfo zzc;
    private zzey zzd;

    protected zzcc(zzbv zzbv) {
        super(zzbv);
        this.zzc = new zzfo(zzbv.zzr());
        this.zzb = new zzby(this, zzbv);
    }

    static /* bridge */ /* synthetic */ void zzb(zzcc zzcc, ComponentName componentName) {
        q.h();
        if (zzcc.zzd != null) {
            zzcc.zzd = null;
            zzcc.zzP("Disconnected from device AnalyticsService", componentName);
            zzcc.zzs().zzk();
        }
    }

    static /* bridge */ /* synthetic */ void zzi(zzcc zzcc, zzey zzey) {
        q.h();
        zzcc.zzd = zzey;
        zzcc.zzj();
        zzcc.zzs().zzj();
    }

    private final void zzj() {
        this.zzc.zzb();
        zzcw zzcw = this.zzb;
        zzw();
        zzcw.zzg(zzeu.zzK.zzb().longValue());
    }

    public final void zzc() {
        q.h();
        zzW();
        try {
            a.b().c(zzo(), this.zza);
        } catch (IllegalArgumentException | IllegalStateException unused) {
        }
        if (this.zzd != null) {
            this.zzd = null;
            zzs().zzk();
        }
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.gtm.zzbs
    public final void zzd() {
    }

    public final boolean zze() {
        q.h();
        zzW();
        zzey zzey = this.zzd;
        if (zzey == null) {
            return false;
        }
        try {
            zzey.zze();
            zzj();
            return true;
        } catch (RemoteException unused) {
            zzO("Failed to clear hits from AnalyticsService");
            return false;
        }
    }

    public final boolean zzf() {
        q.h();
        zzW();
        if (this.zzd != null) {
            return true;
        }
        zzey zza2 = this.zza.zza();
        if (zza2 == null) {
            return false;
        }
        this.zzd = zza2;
        zzj();
        return true;
    }

    public final boolean zzg() {
        q.h();
        zzW();
        return this.zzd != null;
    }

    public final boolean zzh(zzex zzex) {
        String str;
        Objects.requireNonNull(zzex, "null reference");
        q.h();
        zzW();
        zzey zzey = this.zzd;
        if (zzey == null) {
            return false;
        }
        if (zzex.zzh()) {
            zzw();
            str = zzct.zzi();
        } else {
            zzw();
            str = zzct.zzk();
        }
        try {
            zzey.zzf(zzex.zzg(), zzex.zzd(), str, Collections.emptyList());
            zzj();
            return true;
        } catch (RemoteException unused) {
            zzO("Failed to send hits to AnalyticsService");
            return false;
        }
    }
}
