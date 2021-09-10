package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

public final class zzboe {
    private final Executor executor;
    private volatile boolean zzafd = true;
    private final ScheduledExecutorService zzfri;
    private final zzdzw<zzbnz> zzfwn;

    public zzboe(Executor executor2, ScheduledExecutorService scheduledExecutorService, zzdzw<zzbnz> zzdzw) {
        this.executor = executor2;
        this.zzfri = scheduledExecutorService;
        this.zzfwn = zzdzw;
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private final void zzaku() {
        zzazp.zzeig.execute(new zzboi(this));
    }

    public final boolean isLoading() {
        return this.zzafd;
    }

    public final void zza(zzdzl<zzbnt> zzdzl) {
        zzdzk.zza(this.zzfwn, new zzboh(this, zzdzl), this.executor);
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ void zzakv() {
        this.zzafd = false;
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private final void zza(List<? extends zzdzw<? extends zzbnt>> list, zzdzl<zzbnt> zzdzl) {
        if (list == null || list.isEmpty()) {
            this.executor.execute(new zzbod(zzdzl));
            return;
        }
        zzdzw zzag = zzdzk.zzag(null);
        Iterator<? extends zzdzw<? extends zzbnt>> it = list.iterator();
        while (it.hasNext()) {
            zzag = zzdzk.zzb(zzdzk.zzb(zzag, Throwable.class, new zzbog(zzdzl), this.executor), new zzbof(this, zzdzl, (zzdzw) it.next()), this.executor);
        }
        zzdzk.zza(zzag, new zzbok(this, zzdzl), this.executor);
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ zzdzw zza(zzdzl zzdzl, zzdzw zzdzw, zzbnt zzbnt) {
        if (zzbnt != null) {
            zzdzl.onSuccess(zzbnt);
        }
        return zzdzk.zza(zzdzw, zzadv.zzdfb.get().longValue(), TimeUnit.MILLISECONDS, this.zzfri);
    }
}
