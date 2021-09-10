package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;
import com.facebook.ads.AdSDKNotificationListener;
import com.google.android.gms.ads.MobileAds;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import java.util.regex.Pattern;

public final class zzckb implements zzbrq, zzbse, zzbvq, zzvc {
    private final Context context;
    private final zzckn zzdib;
    private final zzcqr zzdie;
    private final zzdnl zzeyz;
    private final zzdmw zzfrj;
    private final zzdoc zzglj;
    private Boolean zzglk;
    private final boolean zzgll = ((Boolean) zzwr.zzqr().zzd(zzabp.zzcyz)).booleanValue();

    public zzckb(Context context2, zzdoc zzdoc, zzckn zzckn, zzdnl zzdnl, zzdmw zzdmw, zzcqr zzcqr) {
        this.context = context2;
        this.zzglj = zzdoc;
        this.zzdib = zzckn;
        this.zzeyz = zzdnl;
        this.zzfrj = zzdmw;
        this.zzdie = zzcqr;
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

    private final zzckq zzge(String str) {
        zzckq zzc = this.zzdib.zzaqr().zza(this.zzeyz.zzhks.zzess).zzc(this.zzfrj);
        zzc.zzr("action", str);
        if (!this.zzfrj.zzhjh.isEmpty()) {
            zzc.zzr("ancn", this.zzfrj.zzhjh.get(0));
        }
        if (this.zzfrj.zzhjz) {
            zzr.zzkr();
            zzc.zzr("device_connectivity", zzj.zzba(this.context) ? "online" : "offline");
            zzc.zzr("event_timestamp", String.valueOf(zzr.zzky().a()));
            zzc.zzr("offline_ad", "1");
        }
        return zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzvc
    public final void onAdClicked() {
        if (this.zzfrj.zzhjz) {
            zza(zzge("click"));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbse
    public final void onAdImpression() {
        if (zzaqo() || this.zzfrj.zzhjz) {
            zza(zzge(AdSDKNotificationListener.IMPRESSION_EVENT));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbrq
    public final void zza(zzcaf zzcaf) {
        if (this.zzgll) {
            zzckq zzge = zzge("ifts");
            zzge.zzr("reason", "exception");
            if (!TextUtils.isEmpty(zzcaf.getMessage())) {
                zzge.zzr("msg", zzcaf.getMessage());
            }
            zzge.zzaqt();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbvq
    public final void zzale() {
        if (zzaqo()) {
            zzge("adapter_impression").zzaqt();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbvq
    public final void zzalg() {
        if (zzaqo()) {
            zzge("adapter_shown").zzaqt();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbrq
    public final void zzalp() {
        if (this.zzgll) {
            zzckq zzge = zzge("ifts");
            zzge.zzr("reason", "blocked");
            zzge.zzaqt();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbrq
    public final void zzl(zzvg zzvg) {
        zzvg zzvg2;
        if (this.zzgll) {
            zzckq zzge = zzge("ifts");
            zzge.zzr("reason", "adapter");
            int i = zzvg.errorCode;
            String str = zzvg.zzchg;
            if (zzvg.zzchh.equals(MobileAds.ERROR_DOMAIN) && (zzvg2 = zzvg.zzchi) != null && !zzvg2.zzchh.equals(MobileAds.ERROR_DOMAIN)) {
                zzvg zzvg3 = zzvg.zzchi;
                i = zzvg3.errorCode;
                str = zzvg3.zzchg;
            }
            if (i >= 0) {
                zzge.zzr("arec", String.valueOf(i));
            }
            String zzgt = this.zzglj.zzgt(str);
            if (zzgt != null) {
                zzge.zzr("areec", zzgt);
            }
            zzge.zzaqt();
        }
    }

    private final void zza(zzckq zzckq) {
        if (this.zzfrj.zzhjz) {
            this.zzdie.zza(new zzcrc(zzr.zzky().a(), this.zzeyz.zzhks.zzess.zzbvs, zzckq.zzaqu(), zzcqs.zzgru));
            return;
        }
        zzckq.zzaqt();
    }
}
