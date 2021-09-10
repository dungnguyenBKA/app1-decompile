package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import javax.annotation.concurrent.GuardedBy;

public final class zzbxz extends zzbwf<zzqw> implements zzqw {
    private final Context context;
    private final zzdmw zzesr;
    @GuardedBy("this")
    private Map<View, zzqs> zzgaz = new WeakHashMap(1);

    public zzbxz(Context context2, Set<zzbya<zzqw>> set, zzdmw zzdmw) {
        super(set);
        this.context = context2;
        this.zzesr = zzdmw;
    }

    @Override // com.google.android.gms.internal.ads.zzqw
    public final synchronized void zza(zzqx zzqx) {
        zza(new zzbyc(zzqx));
    }

    public final synchronized void zzv(View view) {
        zzqs zzqs = this.zzgaz.get(view);
        if (zzqs == null) {
            zzqs = new zzqs(this.context, view);
            zzqs.zza(this);
            this.zzgaz.put(view, zzqs);
        }
        zzdmw zzdmw = this.zzesr;
        if (zzdmw != null && zzdmw.zzdxa) {
            if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcqt)).booleanValue()) {
                zzqs.zzen(((Long) zzwr.zzqr().zzd(zzabp.zzcqs)).longValue());
                return;
            }
        }
        zzqs.zzlt();
    }

    public final synchronized void zzw(View view) {
        if (this.zzgaz.containsKey(view)) {
            this.zzgaz.get(view).zzb(this);
            this.zzgaz.remove(view);
        }
    }
}
