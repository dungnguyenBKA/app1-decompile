package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.Collections;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;

public final class zzcjy implements zzeqb<Set<zzbya<zzdrp>>> {
    private final zzeqo<Executor> zzewf;
    private final zzeqo<Context> zzewk;
    private final zzeqo<String> zzgle;
    private final zzeqo<Map<zzdrk, zzcjz>> zzglf;

    public zzcjy(zzeqo<String> zzeqo, zzeqo<Context> zzeqo2, zzeqo<Executor> zzeqo3, zzeqo<Map<zzdrk, zzcjz>> zzeqo4) {
        this.zzgle = zzeqo;
        this.zzewk = zzeqo2;
        this.zzewf = zzeqo3;
        this.zzglf = zzeqo4;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        Set set;
        String str = this.zzgle.get();
        Context context = this.zzewk.get();
        Executor executor = this.zzewf.get();
        Map<zzdrk, zzcjz> map = this.zzglf.get();
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcvg)).booleanValue()) {
            zztu zztu = new zztu(new zztz(context));
            zztu.zza(new zzcka(str));
            set = Collections.singleton(new zzbya(new zzcjx(zztu, map), executor));
        } else {
            set = Collections.emptySet();
        }
        return (Set) zzeqh.zza(set, "Cannot return null from a non-@Nullable @Provides method");
    }
}
