package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzf;
import com.google.android.gms.ads.internal.zzr;

public final class zzcpj implements zzbxl {
    private final zzdrz zzdic;
    private final zzf zzeaw;
    private boolean zzgmj = false;
    private boolean zzgmk = false;
    private final String zzgml;

    public zzcpj(String str, zzdrz zzdrz) {
        this.zzgml = str;
        this.zzdic = zzdrz;
        this.zzeaw = zzr.zzkv().zzxs();
    }

    private final zzdsa zzgl(String str) {
        return zzdsa.zzgx(str).zzu("tms", Long.toString(zzr.zzky().b(), 10)).zzu("tid", this.zzeaw.zzyu() ? "" : this.zzgml);
    }

    @Override // com.google.android.gms.internal.ads.zzbxl
    public final synchronized void zzamm() {
        if (!this.zzgmj) {
            this.zzdic.zzb(zzgl("init_started"));
            this.zzgmj = true;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbxl
    public final synchronized void zzamn() {
        if (!this.zzgmk) {
            this.zzdic.zzb(zzgl("init_finished"));
            this.zzgmk = true;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbxl
    public final void zzft(String str) {
        this.zzdic.zzb(zzgl("adapter_init_started").zzu("ancn", str));
    }

    @Override // com.google.android.gms.internal.ads.zzbxl
    public final void zzfu(String str) {
        this.zzdic.zzb(zzgl("adapter_init_finished").zzu("ancn", str));
    }

    @Override // com.google.android.gms.internal.ads.zzbxl
    public final void zzm(String str, String str2) {
        this.zzdic.zzb(zzgl("adapter_init_finished").zzu("ancn", str).zzu("rqe", str2));
    }
}
