package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

public final class zzdek implements zzdfi<zzdel> {
    private final Context context;
    private final ScheduledExecutorService zzfri;
    private final zzdnp zzfwy;
    private final zzdzv zzghl;
    private final zzcxh zzgwe;
    private String zzgzy;
    private final zzcxj zzhco;

    public zzdek(zzdzv zzdzv, ScheduledExecutorService scheduledExecutorService, String str, zzcxj zzcxj, Context context2, zzdnp zzdnp, zzcxh zzcxh) {
        this.zzghl = zzdzv;
        this.zzfri = scheduledExecutorService;
        this.zzgzy = str;
        this.zzhco = zzcxj;
        this.context = context2;
        this.zzfwy = zzdnp;
        this.zzgwe = zzcxh;
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ zzdzw zza(String str, List list, Bundle bundle) {
        zzbaa zzbaa = new zzbaa();
        this.zzgwe.zzgn(str);
        zzapk zzgo = this.zzgwe.zzgo(str);
        Objects.requireNonNull(zzgo);
        zzgo.zza(aw.Q(this.context), this.zzgzy, bundle, (Bundle) list.get(0), this.zzfwy.zzbpo, new zzcxp(str, zzgo, zzbaa));
        return zzbaa;
    }

    @Override // com.google.android.gms.internal.ads.zzdfi
    public final zzdzw<zzdel> zzasy() {
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcqz)).booleanValue()) {
            return zzdzk.zza(new zzden(this), this.zzghl);
        }
        return zzdzk.zzag(null);
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ zzdzw zzatl() {
        Map<String, List<Bundle>> zzt = this.zzhco.zzt(this.zzgzy, this.zzfwy.zzhkx);
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<String, List<Bundle>> entry : zzt.entrySet()) {
            String key = entry.getKey();
            List<Bundle> value = entry.getValue();
            Bundle bundle = this.zzfwy.zzhkw.zzchu;
            arrayList.add(zzdzf.zzg(zzdzk.zza(new zzdem(this, key, value, bundle != null ? bundle.getBundle(key) : null), this.zzghl)).zza(((Long) zzwr.zzqr().zzd(zzabp.zzcqy)).longValue(), TimeUnit.MILLISECONDS, this.zzfri).zza(Throwable.class, new zzdep(key), this.zzghl));
        }
        return zzdzk.zzk(arrayList).zzb(new zzdeo(arrayList), this.zzghl);
    }
}
