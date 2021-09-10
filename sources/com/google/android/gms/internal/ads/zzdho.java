package com.google.android.gms.internal.ads;

import java.util.HashSet;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import org.json.JSONObject;

public final class zzdho implements zzeqb<zzdfl<JSONObject>> {
    public static zzdfl<JSONObject> zza(zzayg zzayg, Object obj, zzdgc zzdgc, zzdhd zzdhd, zzepv<zzdfw> zzepv, zzepv<zzdgg> zzepv2, zzepv<zzdgk> zzepv3, zzepv<zzdgq> zzepv4, zzepv<zzdgz> zzepv5, zzepv<zzdhe> zzepv6, zzepv<zzdhq> zzepv7, Executor executor, ScheduledExecutorService scheduledExecutorService) {
        HashSet hashSet = new HashSet();
        hashSet.add((zzdgv) obj);
        hashSet.add(zzdgc);
        hashSet.add(zzdhd);
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcwx)).booleanValue()) {
            hashSet.add(zzepv.get());
        }
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcwy)).booleanValue()) {
            hashSet.add(zzepv2.get());
        }
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcwz)).booleanValue()) {
            hashSet.add(zzepv3.get());
        }
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcxa)).booleanValue()) {
            hashSet.add(zzepv4.get());
        }
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcxf)).booleanValue()) {
            hashSet.add(zzepv6.get());
        }
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcxg)).booleanValue()) {
            hashSet.add(zzepv7.get());
        }
        return (zzdfl) zzeqh.zza(new zzdfl(executor, hashSet), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        throw new NoSuchMethodError();
    }
}
