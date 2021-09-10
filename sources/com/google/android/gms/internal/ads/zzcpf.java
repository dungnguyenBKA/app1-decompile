package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;
import com.facebook.ads.AdSDKNotificationListener;
import com.google.android.gms.ads.MobileAds;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import java.util.regex.Pattern;

public final class zzcpf implements zzbrq, zzbse, zzbvq, zzvc {
    private final Context context;
    private final zzdrz zzdic;
    private final zzcqr zzdie;
    private final String zzdun;
    private final zzdnl zzeyz;
    private final zzdmw zzfrj;
    private final zzdoc zzglj;
    private Boolean zzglk;
    private final boolean zzgll = ((Boolean) zzwr.zzqr().zzd(zzabp.zzcyz)).booleanValue();

    public zzcpf(Context context2, zzdoc zzdoc, zzdnl zzdnl, zzdmw zzdmw, zzcqr zzcqr, zzdrz zzdrz, String str) {
        this.context = context2;
        this.zzglj = zzdoc;
        this.zzeyz = zzdnl;
        this.zzfrj = zzdmw;
        this.zzdie = zzcqr;
        this.zzdic = zzdrz;
        this.zzdun = str;
    }

    private final boolean zzaqo() {
        if (this.zzglk == null) {
            synchronized (this) {
                if (this.zzglk == null) {
                    zzaba<String> zzaba = zzabp.zzcrc;
                    zzr.zzkr();
                    this.zzglk = Boolean.valueOf(zze((String) zzwr.zzqr().zzd(zzaba), zzj.zzay(this.context)));
                }
            }
        }
        return this.zzglk.booleanValue();
    }

    private static boolean zze(String str, String str2) {
        if (!(str == null || str2 == null)) {
            try {
                return Pattern.matches(str, str2);
            } catch (RuntimeException e) {
                zzr.zzkv().zza(e, "CsiActionsListener.isPatternMatched");
            }
        }
        return false;
    }

    private final zzdsa zzgk(String str) {
        zzdsa zzu = zzdsa.zzgx(str).zza(this.zzeyz, null).zzf(this.zzfrj).zzu("request_id", this.zzdun);
        if (!this.zzfrj.zzhjh.isEmpty()) {
            zzu.zzu("ancn", this.zzfrj.zzhjh.get(0));
        }
        if (this.zzfrj.zzhjz) {
            zzr.zzkr();
            zzu.zzu("device_connectivity", zzj.zzba(this.context) ? "online" : "offline");
            zzu.zzu("event_timestamp", String.valueOf(zzr.zzky().a()));
            zzu.zzu("offline_ad", "1");
        }
        return zzu;
    }

    @Override // com.google.android.gms.internal.ads.zzvc
    public final void onAdClicked() {
        if (this.zzfrj.zzhjz) {
            zza(zzgk("click"));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbse
    public final void onAdImpression() {
        if (zzaqo() || this.zzfrj.zzhjz) {
            zza(zzgk(AdSDKNotificationListener.IMPRESSION_EVENT));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbrq
    public final void zza(zzcaf zzcaf) {
        if (this.zzgll) {
            zzdsa zzu = zzgk("ifts").zzu("reason", "exception");
            if (!TextUtils.isEmpty(zzcaf.getMessage())) {
                zzu.zzu("msg", zzcaf.getMessage());
            }
            this.zzdic.zzb(zzu);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbvq
    public final void zzale() {
        if (zzaqo()) {
            this.zzdic.zzb(zzgk("adapter_impression"));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbvq
    public final void zzalg() {
        if (zzaqo()) {
            this.zzdic.zzb(zzgk("adapter_shown"));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbrq
    public final void zzalp() {
        if (this.zzgll) {
            this.zzdic.zzb(zzgk("ifts").zzu("reason", "blocked"));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbrq
    public final void zzl(zzvg zzvg) {
        zzvg zzvg2;
        if (this.zzgll) {
            int i = zzvg.errorCode;
            String str = zzvg.zzchg;
            if (zzvg.zzchh.equals(MobileAds.ERROR_DOMAIN) && (zzvg2 = zzvg.zzchi) != null && !zzvg2.zzchh.equals(MobileAds.ERROR_DOMAIN)) {
                zzvg zzvg3 = zzvg.zzchi;
                i = zzvg3.errorCode;
                str = zzvg3.zzchg;
            }
            String zzgt = this.zzglj.zzgt(str);
            zzdsa zzu = zzgk("ifts").zzu("reason", "adapter");
            if (i >= 0) {
                zzu.zzu("arec", String.valueOf(i));
            }
            if (zzgt != null) {
                zzu.zzu("areec", zzgt);
            }
            this.zzdic.zzb(zzu);
        }
    }

    private final void zza(zzdsa zzdsa) {
        if (this.zzfrj.zzhjz) {
            this.zzdie.zza(new zzcrc(zzr.zzky().a(), this.zzeyz.zzhks.zzess.zzbvs, this.zzdic.zzc(zzdsa), zzcqs.zzgru));
            return;
        }
        this.zzdic.zzb(zzdsa);
    }
}
