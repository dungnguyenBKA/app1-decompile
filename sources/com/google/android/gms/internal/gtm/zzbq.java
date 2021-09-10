package com.google.android.gms.internal.gtm;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import com.google.android.gms.analytics.q;
import com.google.android.gms.common.internal.n;
import java.util.Objects;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

public final class zzbq extends zzbs {
    private final zzck zza;

    public zzbq(zzbv zzbv, zzbw zzbw) {
        super(zzbv);
        Objects.requireNonNull(zzbw, "null reference");
        this.zza = new zzck(zzbv, zzbw);
    }

    public final long zza(zzbx zzbx) {
        zzW();
        Objects.requireNonNull(zzbx, "null reference");
        q.h();
        long zzb = this.zza.zzb(zzbx, true);
        if (zzb == 0) {
            this.zza.zzk(zzbx);
        }
        return zzb;
    }

    public final void zzc() {
        zzW();
        Context zzo = zzo();
        if (!zzfi.zza(zzo) || !zzfn.zzh(zzo)) {
            zze(null);
            return;
        }
        Intent intent = new Intent("com.google.android.gms.analytics.ANALYTICS_DISPATCH");
        intent.setComponent(new ComponentName(zzo, "com.google.android.gms.analytics.AnalyticsService"));
        zzo.startService(intent);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.gtm.zzbs
    public final void zzd() {
        this.zza.zzX();
    }

    public final void zze(zzcz zzcz) {
        zzW();
        zzq().i(new zzbo(this, zzcz));
    }

    public final void zzf(String str, Runnable runnable) {
        n.f(str, "campaign param can't be empty");
        zzq().i(new zzbk(this, str, runnable));
    }

    public final void zzg() {
        zzW();
        zzE();
        zzq().i(new zzbn(this));
    }

    public final void zzh(zzex zzex) {
        Objects.requireNonNull(zzex, "null reference");
        zzW();
        zzG("Hit delivery requested", zzex);
        zzq().i(new zzbm(this, zzex));
    }

    /* access modifiers changed from: package-private */
    public final void zzi() {
        q.h();
        this.zza.zzl();
    }

    /* access modifiers changed from: package-private */
    public final void zzj() {
        q.h();
        this.zza.zzm();
    }

    public final void zzk() {
        zzW();
        q.h();
        zzck zzck = this.zza;
        q.h();
        zzck.zzW();
        zzck.zzO("Service disconnected");
    }

    public final void zzl(int i) {
        zzW();
        zzG("setLocalDispatchPeriod (sec)", Integer.valueOf(i));
        zzq().i(new zzbl(this, i));
    }

    public final void zzm() {
        this.zza.zzaa();
    }

    public final boolean zzn() {
        zzW();
        try {
            zzq().g(new zzbp(this)).get(4, TimeUnit.SECONDS);
            return true;
        } catch (InterruptedException e) {
            zzS("syncDispatchLocalHits interrupted", e);
            return false;
        } catch (ExecutionException e2) {
            zzK("syncDispatchLocalHits failed", e2);
            return false;
        } catch (TimeoutException e3) {
            zzS("syncDispatchLocalHits timed out", e3);
            return false;
        }
    }
}
