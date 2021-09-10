package com.google.android.gms.internal.ads;

import java.util.Map;
import java.util.Queue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

/* access modifiers changed from: package-private */
public final class zzdsb implements zzdrz {
    private final zzdrz zzhrl;
    private final Queue<zzdsa> zzhrm = new LinkedBlockingQueue();
    private final int zzhrn = ((Integer) zzwr.zzqr().zzd(zzabp.zzdao)).intValue();
    private final AtomicBoolean zzhro = new AtomicBoolean(false);

    public zzdsb(zzdrz zzdrz, ScheduledExecutorService scheduledExecutorService) {
        this.zzhrl = zzdrz;
        long intValue = (long) ((Integer) zzwr.zzqr().zzd(zzabp.zzdan)).intValue();
        scheduledExecutorService.scheduleAtFixedRate(new zzdse(this), intValue, intValue, TimeUnit.MILLISECONDS);
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ void zzaxk() {
        while (!this.zzhrm.isEmpty()) {
            this.zzhrl.zzb(this.zzhrm.remove());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdrz
    public final void zzb(zzdsa zzdsa) {
        if (this.zzhrm.size() < this.zzhrn) {
            this.zzhrm.offer(zzdsa);
        } else if (!this.zzhro.getAndSet(true)) {
            Queue<zzdsa> queue = this.zzhrm;
            zzdsa zzgx = zzdsa.zzgx("dropped_event");
            Map<String, String> zzls = zzdsa.zzls();
            if (zzls.containsKey("action")) {
                zzgx.zzu("dropped_action", zzls.get("action"));
            }
            queue.offer(zzgx);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdrz
    public final String zzc(zzdsa zzdsa) {
        return this.zzhrl.zzc(zzdsa);
    }
}
