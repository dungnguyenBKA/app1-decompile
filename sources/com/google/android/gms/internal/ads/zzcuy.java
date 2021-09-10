package com.google.android.gms.internal.ads;

import javax.annotation.Nullable;

public final class zzcuy {
    private final zzckn zzdib;
    private final zzdrz zzdic;
    private final zzcim zzgkk;
    private final zzdoc zzglj;

    public zzcuy(zzdoc zzdoc, zzcim zzcim, zzckn zzckn, zzdrz zzdrz) {
        this.zzglj = zzdoc;
        this.zzgkk = zzcim;
        this.zzdib = zzckn;
        this.zzdic = zzdrz;
    }

    public final void zza(zzdnb zzdnb, zzdmw zzdmw, int i, @Nullable zzcrn zzcrn, long j) {
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzdal)).booleanValue()) {
            zzdsa zzu = zzdsa.zzgx("adapter_status").zzb(zzdnb).zzf(zzdmw).zzu("adapter_l", String.valueOf(j)).zzu("sc", Integer.toString(i));
            if (zzcrn != null) {
                zzu.zzu("arec", Integer.toString(zzcrn.zzary().errorCode));
                String zzgt = this.zzglj.zzgt(zzcrn.getMessage());
                if (zzgt != null) {
                    zzu.zzu("areec", zzgt);
                }
            }
            zzcij zzi = this.zzgkk.zzi(zzdmw.zzhjh);
            if (zzi != null) {
                zzu.zzu("ancn", zzi.zzdit);
                zzapy zzapy = zzi.zzgkg;
                if (zzapy != null) {
                    zzu.zzu("adapter_v", zzapy.toString());
                }
                zzapy zzapy2 = zzi.zzgkh;
                if (zzapy2 != null) {
                    zzu.zzu("adapter_sv", zzapy2.toString());
                }
            }
            this.zzdic.zzb(zzu);
            return;
        }
        zzckq zzr = this.zzdib.zzaqr().zza(zzdnb).zzc(zzdmw).zzr("action", "adapter_status").zzr("adapter_l", String.valueOf(j));
        zzr.zzr("sc", Integer.toString(i));
        if (zzcrn != null) {
            zzr.zzr("arec", Integer.toString(zzcrn.zzary().errorCode));
            String zzgt2 = this.zzglj.zzgt(zzcrn.getMessage());
            if (zzgt2 != null) {
                zzr.zzr("areec", zzgt2);
            }
        }
        zzcij zzi2 = this.zzgkk.zzi(zzdmw.zzhjh);
        if (zzi2 != null) {
            zzr.zzr("ancn", zzi2.zzdit);
            zzapy zzapy3 = zzi2.zzgkg;
            if (zzapy3 != null) {
                zzr.zzr("adapter_v", zzapy3.toString());
            }
            zzapy zzapy4 = zzi2.zzgkh;
            if (zzapy4 != null) {
                zzr.zzr("adapter_sv", zzapy4.toString());
            }
        }
        zzr.zzaqt();
    }
}
