package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzb;
import com.google.android.gms.ads.internal.util.zzf;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.ads.zzbgb;
import com.google.android.gms.internal.ads.zzbig;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import javax.annotation.concurrent.GuardedBy;

public abstract class zzbgc implements zzbjd {
    @GuardedBy("AppComponent.class")
    private static zzbgc zzewb;

    public static zzbgc zza(Context context, zzane zzane, int i) {
        zzbgc zzh = zzh(context, i);
        zzh.zzaff().zzb(zzane);
        return zzh;
    }

    @Deprecated
    public static zzbgc zzh(Context context, int i) {
        synchronized (zzbgc.class) {
            zzbgc zzbgc = zzewb;
            if (zzbgc != null) {
                return zzbgc;
            }
            return zza(new zzazn(204204000, i, true, false), context, new zzbgw());
        }
    }

    /* access modifiers changed from: protected */
    public abstract zzdga zza(zzdhj zzdhj);

    public abstract zzdrz zzaez();

    public abstract Executor zzafa();

    public abstract ScheduledExecutorService zzafb();

    public abstract Executor zzafc();

    public abstract zzdzv zzafd();

    public abstract zzbts zzafe();

    public abstract zzcin zzaff();

    public abstract zzbim zzafg();

    public abstract zzbmu zzafh();

    public abstract zzdjn zzafi();

    public abstract zzbla zzafj();

    public abstract zzblj zzafk();

    public abstract zzdic zzafl();

    public abstract zzbzx zzafm();

    public abstract zzdle zzafn();

    public abstract zzcat zzafo();

    public abstract zzchh zzafp();

    public abstract zzdmr zzafq();

    public abstract zzczl zzafr();

    public abstract zzczo zzafs();

    public abstract zzcrb zzaft();

    public abstract zzdof<zzcgk> zzafu();

    @Deprecated
    private static zzbgc zza(zzazn zzazn, Context context, zzbig.zza zza) {
        zzbgc zzbgc;
        synchronized (zzbgc.class) {
            if (zzewb == null) {
                zzewb = new zzbhs().zzc(new zzbgb(new zzbgb.zza().zza(zzazn).zzbw(context))).zza(new zzbig(zza)).zzahv();
                zzabp.initialize(context);
                zzr.zzkv().zzd(context, zzazn);
                zzr.zzkx().initialize(context);
                zzr.zzkr().zzak(context);
                zzr.zzkr().zzal(context);
                zzr.zzkr();
                zzj.zzbb(context);
                zzb.zzaj(context);
                zzr.zzku().initialize(context);
                zzr.zzlm().initialize(context);
                zzf zzxs = zzr.zzkv().zzxs();
                zzxs.initialize(context);
                zzaxa.zza(context, zzxs);
                if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcxy)).booleanValue()) {
                    if (!((Boolean) zzwr.zzqr().zzd(zzabp.zzcot)).booleanValue()) {
                        zztu zztu = new zztu(new zztz(context));
                        zzcpv zzcpv = new zzcpv(new zzcpt(context), zzewb.zzafd());
                        zzr.zzkr();
                        new zzcql(context, zzazn, zztu, zzcpv, zzj.zzyy(), zzewb.zzaez()).zzarx();
                    }
                }
            }
            zzbgc = zzewb;
        }
        return zzbgc;
    }

    @Override // com.google.android.gms.internal.ads.zzbjd
    public final zzdga zza(zzatq zzatq, int i) {
        return zza(new zzdhj(zzatq, i));
    }
}
