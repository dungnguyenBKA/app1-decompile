package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.BlockingQueue;

/* access modifiers changed from: package-private */
public final class zzas implements zzad {
    private final zzaf zzau = null;
    private final zzm zzbn;
    private final Map<String, List<zzab<?>>> zzbx = new HashMap();
    private final zzal zzby;
    private final BlockingQueue<zzab<?>> zzm;

    zzas(zzm zzm2, BlockingQueue<zzab<?>> blockingQueue, zzal zzal) {
        this.zzby = zzal;
        this.zzbn = zzm2;
        this.zzm = blockingQueue;
    }

    @Override // com.google.android.gms.internal.ads.zzad
    public final void zzb(zzab<?> zzab, zzag<?> zzag) {
        List<zzab<?>> remove;
        zzn zzn = zzag.zzbq;
        if (zzn == null || zzn.zza()) {
            zzc(zzab);
            return;
        }
        String zze = zzab.zze();
        synchronized (this) {
            remove = this.zzbx.remove(zze);
        }
        if (remove != null) {
            if (zzao.DEBUG) {
                zzao.v("Releasing %d waiting requests for cacheKey=%s.", Integer.valueOf(remove.size()), zze);
            }
            for (zzab<?> zzab2 : remove) {
                this.zzby.zza(zzab2, zzag);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzad
    public final synchronized void zzc(zzab<?> zzab) {
        BlockingQueue<zzab<?>> blockingQueue;
        String zze = zzab.zze();
        List<zzab<?>> remove = this.zzbx.remove(zze);
        if (remove != null && !remove.isEmpty()) {
            if (zzao.DEBUG) {
                zzao.v("%d waiting requests for cacheKey=%s; resend to network", Integer.valueOf(remove.size()), zze);
            }
            zzab<?> remove2 = remove.remove(0);
            this.zzbx.put(zze, remove);
            remove2.zza((zzad) this);
            if (!(this.zzbn == null || (blockingQueue = this.zzm) == null)) {
                try {
                    blockingQueue.put(remove2);
                } catch (InterruptedException e) {
                    zzao.e("Couldn't add request to queue. %s", e.toString());
                    Thread.currentThread().interrupt();
                    this.zzbn.quit();
                }
            }
        }
    }

    /* access modifiers changed from: package-private */
    public final synchronized boolean zzg(zzab<?> zzab) {
        String zze = zzab.zze();
        if (this.zzbx.containsKey(zze)) {
            List<zzab<?>> list = this.zzbx.get(zze);
            if (list == null) {
                list = new ArrayList<>();
            }
            zzab.zzc("waiting-for-response");
            list.add(zzab);
            this.zzbx.put(zze, list);
            if (zzao.DEBUG) {
                zzao.d("Request for cacheKey=%s is in flight, putting on hold.", zze);
            }
            return true;
        }
        this.zzbx.put(zze, null);
        zzab.zza((zzad) this);
        if (zzao.DEBUG) {
            zzao.d("new request, sending to network %s", zze);
        }
        return false;
    }
}
