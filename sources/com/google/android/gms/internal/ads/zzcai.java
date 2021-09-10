package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.overlay.zzn;
import com.google.android.gms.ads.internal.overlay.zzq;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.ads.nonagon.transaction.omid.OmidMediaType;
import com.google.android.gms.internal.ads.zzug;

public final class zzcai implements zzq, zzbtb {
    private final Context context;
    private final zzazn zzbpn;
    private final zzbeb zzdjd;
    private final zzdmw zzesr;
    private zv zzfvs;
    private final zzug.zza.EnumC0069zza zzgbp;

    public zzcai(Context context2, zzbeb zzbeb, zzdmw zzdmw, zzazn zzazn, zzug.zza.EnumC0069zza zza) {
        this.context = context2;
        this.zzdjd = zzbeb;
        this.zzesr = zzdmw;
        this.zzbpn = zzazn;
        this.zzgbp = zza;
    }

    @Override // com.google.android.gms.internal.ads.zzbtb
    public final void onAdLoaded() {
        zzarn zzarn;
        zzarm zzarm;
        zzarm zzarm2;
        zzug.zza.EnumC0069zza zza = this.zzgbp;
        if ((zza == zzug.zza.EnumC0069zza.REWARD_BASED_VIDEO_AD || zza == zzug.zza.EnumC0069zza.INTERSTITIAL || zza == zzug.zza.EnumC0069zza.APP_OPEN) && this.zzesr.zzdww && this.zzdjd != null && zzr.zzlg().zzm(this.context)) {
            zzazn zzazn = this.zzbpn;
            int i = zzazn.zzehy;
            int i2 = zzazn.zzehz;
            StringBuilder sb = new StringBuilder(23);
            sb.append(i);
            sb.append(".");
            sb.append(i2);
            String sb2 = sb.toString();
            String videoEventsOwner = this.zzesr.zzhjr.getVideoEventsOwner();
            if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcvp)).booleanValue()) {
                if (this.zzesr.zzhjr.getMediaType() == OmidMediaType.VIDEO) {
                    zzarn = zzarn.VIDEO;
                    zzarm = zzarm.DEFINED_BY_JAVASCRIPT;
                } else {
                    if (this.zzesr.zzhjs == 2) {
                        zzarm2 = zzarm.UNSPECIFIED;
                    } else {
                        zzarm2 = zzarm.BEGIN_TO_RENDER;
                    }
                    zzarm = zzarm2;
                    zzarn = zzarn.HTML_DISPLAY;
                }
                this.zzfvs = zzr.zzlg().zza(sb2, this.zzdjd.getWebView(), "", "javascript", videoEventsOwner, zzarm, zzarn, this.zzesr.zzcht);
            } else {
                this.zzfvs = zzr.zzlg().zza(sb2, this.zzdjd.getWebView(), "", "javascript", videoEventsOwner);
            }
            if (this.zzfvs != null && this.zzdjd.getView() != null) {
                zzr.zzlg().zza(this.zzfvs, this.zzdjd.getView());
                this.zzdjd.zzaq(this.zzfvs);
                zzr.zzlg().zzab(this.zzfvs);
                if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcvs)).booleanValue()) {
                    this.zzdjd.zza("onSdkLoaded", new x());
                }
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzq
    public final void onPause() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzq
    public final void onResume() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzq
    public final void onUserLeaveHint() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzq
    public final void zza(zzn zzn) {
        this.zzfvs = null;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzq
    public final void zzvo() {
        zzbeb zzbeb;
        if (this.zzfvs != null && (zzbeb = this.zzdjd) != null) {
            zzbeb.zza("onSdkImpression", new x());
        }
    }
}
