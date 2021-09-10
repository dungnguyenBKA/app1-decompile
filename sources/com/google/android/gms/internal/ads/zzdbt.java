package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.gms.ads.internal.util.zzf;
import com.google.android.gms.ads.internal.zzr;

public final class zzdbt implements zzdfi<Object> {
    private static final Object lock = new Object();
    private final String zzcjn;
    private final String zzdug;
    private final zzf zzeaw = zzr.zzkv().zzxs();
    private final zzdnp zzfwy;
    private final zzbpf zzhbd;
    private final zzdop zzhbe;

    public zzdbt(String str, String str2, zzbpf zzbpf, zzdop zzdop, zzdnp zzdnp) {
        this.zzdug = str;
        this.zzcjn = str2;
        this.zzhbd = zzbpf;
        this.zzhbe = zzdop;
        this.zzfwy = zzdnp;
    }

    @Override // com.google.android.gms.internal.ads.zzdfi
    public final zzdzw<Object> zzasy() {
        Bundle bundle = new Bundle();
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcwq)).booleanValue()) {
            this.zzhbd.zzf(this.zzfwy.zzhkw);
            bundle.putAll(this.zzhbe.zzavn());
        }
        return zzdzk.zzag(new zzdbs(this, bundle));
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ void zzb(Bundle bundle, Bundle bundle2) {
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcwq)).booleanValue()) {
            bundle2.putBundle("quality_signals", bundle);
        } else {
            if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcwp)).booleanValue()) {
                synchronized (lock) {
                    this.zzhbd.zzf(this.zzfwy.zzhkw);
                    bundle2.putBundle("quality_signals", this.zzhbe.zzavn());
                }
            } else {
                this.zzhbd.zzf(this.zzfwy.zzhkw);
                bundle2.putBundle("quality_signals", this.zzhbe.zzavn());
            }
        }
        bundle2.putString("seq_num", this.zzdug);
        bundle2.putString("session_id", this.zzeaw.zzyu() ? "" : this.zzcjn);
    }
}
