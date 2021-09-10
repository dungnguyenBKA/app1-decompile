package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;

public final class zzbnb extends zzblv {
    private final Executor zzfsj;
    private final zzagl zzfvm;
    private final Runnable zzfvn;

    public zzbnb(zzbnw zzbnw, zzagl zzagl, Runnable runnable, Executor executor) {
        super(zzbnw);
        this.zzfvm = zzagl;
        this.zzfvn = runnable;
        this.zzfsj = executor;
    }

    @Override // com.google.android.gms.internal.ads.zzblv
    public final zzzc getVideoController() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzblv
    public final void zza(ViewGroup viewGroup, zzvs zzvs) {
    }

    @Override // com.google.android.gms.internal.ads.zzblv
    public final zzdmz zzajq() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzblv
    public final View zzajr() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzblv
    public final zzdmz zzajz() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzblv
    public final int zzaka() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzbnt
    public final void zzakb() {
        this.zzfsj.execute(new zzbnd(this, new zzbne(new AtomicReference(this.zzfvn))));
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ void zze(Runnable runnable) {
        try {
            if (!this.zzfvm.zzm(aw.Q(runnable))) {
                runnable.run();
            }
        } catch (RemoteException unused) {
            runnable.run();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzblv
    public final void zzkf() {
    }
}
