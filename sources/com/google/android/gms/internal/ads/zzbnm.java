package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.ads.nonagon.transaction.omid.OmidMediaType;
import javax.annotation.concurrent.GuardedBy;

public final class zzbnm implements zzbse, zzbtb {
    private final Context context;
    private final zzazn zzbpn;
    private final zzbeb zzdjd;
    private final zzdmw zzesr;
    @GuardedBy("this")
    private zv zzfvs;
    @GuardedBy("this")
    private boolean zzfvt;

    public zzbnm(Context context2, zzbeb zzbeb, zzdmw zzdmw, zzazn zzazn) {
        this.context = context2;
        this.zzdjd = zzbeb;
        this.zzesr = zzdmw;
        this.zzbpn = zzazn;
    }

    private final synchronized void zzakn() {
        zzarn zzarn;
        zzarm zzarm;
        if (this.zzesr.zzdww) {
            if (this.zzdjd != null) {
                if (zzr.zzlg().zzm(this.context)) {
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
                            zzarn = zzarn.HTML_DISPLAY;
                            if (this.zzesr.zzhiz == 1) {
                                zzarm = zzarm.ONE_PIXEL;
                            } else {
                                zzarm = zzarm.BEGIN_TO_RENDER;
                            }
                        }
                        this.zzfvs = zzr.zzlg().zza(sb2, this.zzdjd.getWebView(), "", "javascript", videoEventsOwner, zzarm, zzarn, this.zzesr.zzcht);
                    } else {
                        this.zzfvs = zzr.zzlg().zza(sb2, this.zzdjd.getWebView(), "", "javascript", videoEventsOwner);
                    }
                    View view = this.zzdjd.getView();
                    if (!(this.zzfvs == null || view == null)) {
                        zzr.zzlg().zza(this.zzfvs, view);
                        this.zzdjd.zzaq(this.zzfvs);
                        zzr.zzlg().zzab(this.zzfvs);
                        this.zzfvt = true;
                        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcvs)).booleanValue()) {
                            this.zzdjd.zza("onSdkLoaded", new x());
                        }
                    }
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbse
    public final synchronized void onAdImpression() {
        zzbeb zzbeb;
        if (!this.zzfvt) {
            zzakn();
        }
        if (!(!this.zzesr.zzdww || this.zzfvs == null || (zzbeb = this.zzdjd) == null)) {
            zzbeb.zza("onSdkImpression", new x());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbtb
    public final synchronized void onAdLoaded() {
        if (!this.zzfvt) {
            zzakn();
        }
    }
}
