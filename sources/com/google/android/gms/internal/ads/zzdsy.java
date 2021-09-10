package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.internal.ads.zzbw;
import java.util.Map;
import java.util.concurrent.Executor;

public final class zzdsy {
    private static volatile zzbw.zza.zzc zzhsm = zzbw.zza.zzc.UNKNOWN;
    private final Context context;
    private final Executor executor;
    private final kw<zztz> zzhsl;

    private zzdsy(Context context2, Executor executor2, kw<zztz> kwVar) {
        this.context = context2;
        this.executor = executor2;
        this.zzhsl = kwVar;
    }

    static void zza(zzbw.zza.zzc zzc) {
        zzhsm = zzc;
    }

    static final /* synthetic */ zztz zzcj(Context context2) {
        return new zztz(context2, "GLAS", null);
    }

    public final kw<Boolean> zzb(int i, long j, String str) {
        return zza(i, j, null, null, null, str);
    }

    public final kw<Boolean> zzg(int i, String str) {
        return zza(i, 0, null, null, null, str);
    }

    public final kw<Boolean> zzh(int i, long j) {
        return zza(i, j, null, null, null, null);
    }

    public static zzdsy zza(Context context2, Executor executor2) {
        return new zzdsy(context2, executor2, nw.b(executor2, new zzdta(context2)));
    }

    public final kw<Boolean> zza(int i, long j, Exception exc) {
        return zza(i, j, exc, null, null, null);
    }

    public final kw<Boolean> zza(int i, long j, String str, Map<String, String> map) {
        return zza(i, j, null, str, null, null);
    }

    private final kw<Boolean> zza(int i, long j, Exception exc, String str, Map<String, String> map, String str2) {
        zzbw.zza.zzb zzd = zzbw.zza.zzs().zzo(this.context.getPackageName()).zzd(j);
        zzd.zzb(zzhsm);
        if (exc != null) {
            zzd.zzp(zzdwv.zza(exc)).zzq(exc.getClass().getName());
        }
        if (str2 != null) {
            zzd.zzr(str2);
        }
        if (str != null) {
            zzd.zzs(str);
        }
        return this.zzhsl.g(this.executor, new zzdsz(zzd, i));
    }

    static final /* synthetic */ Boolean zza(zzbw.zza.zzb zzb, int i, kw kwVar) {
        if (!kwVar.m()) {
            return Boolean.FALSE;
        }
        zzud zzf = ((zztz) kwVar.j()).zzf(((zzbw.zza) ((zzelb) zzb.zzbiw())).toByteArray());
        zzf.zzbv(i);
        zzf.log();
        return Boolean.TRUE;
    }
}
