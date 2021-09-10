package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.c;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

public final class zzctx implements zzcty<zzcbu> {
    private final zzdzv zzghl;
    private final zzcau zzgun;
    private final zzcen zzguo;
    private final zzdof<zzcgk> zzgup;

    public zzctx(zzcau zzcau, zzdzv zzdzv, zzcen zzcen, zzdof<zzcgk> zzdof) {
        this.zzgun = zzcau;
        this.zzghl = zzdzv;
        this.zzguo = zzcen;
        this.zzgup = zzdof;
    }

    @Override // com.google.android.gms.internal.ads.zzcrj
    public final boolean zza(zzdnl zzdnl, zzdmw zzdmw) {
        zzdnd zzdnd = zzdmw.zzhjg;
        return (zzdnd == null || zzdnd.zzgcf == null) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.zzcrj
    public final zzdzw<List<zzdzw<zzcbu>>> zzb(zzdnl zzdnl, zzdmw zzdmw) {
        return zzdzk.zzb(zzdzk.zzb(this.zzgup.zzavm(), new zzcua(this, zzdmw), this.zzghl), new zzctz(this, zzdnl, zzdmw), this.zzghl);
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ zzcbu zza(zzdzw zzdzw, zzdzw zzdzw2, zzdnl zzdnl, zzdmw zzdmw, JSONObject jSONObject) {
        zzccd zzccd = (zzccd) zzdzw.get();
        zzcgk zzcgk = (zzcgk) zzdzw2.get();
        zzccf zza = this.zzgun.zza(new zzboj(zzdnl, zzdmw, null), new zzccp(zzccd), new zzcbi(jSONObject, zzcgk));
        zza.zzagv().zzapn();
        zza.zzagw().zzb(zzcgk);
        zza.zzagx().zzi(zzccd.zzanz());
        return zza.zzagu();
    }

    private final zzdzw<zzcbu> zzb(zzdnl zzdnl, zzdmw zzdmw, JSONObject jSONObject) {
        zzdzw<zzcgk> zzavm = this.zzgup.zzavm();
        zzdzw<zzccd> zza = this.zzguo.zza(zzdnl, zzdmw, jSONObject);
        return zzdzk.zzb(zzavm, zza).zzb(new zzcue(this, zza, zzavm, zzdnl, zzdmw, jSONObject), this.zzghl);
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ zzdzw zza(zzcgk zzcgk, JSONObject jSONObject) {
        this.zzgup.zzd(zzdzk.zzag(zzcgk));
        if (jSONObject.optBoolean("success")) {
            return zzdzk.zzag(jSONObject.getJSONObject("json").getJSONArray("ads"));
        }
        throw new zzaly("process json failed");
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ zzdzw zza(zzdnl zzdnl, zzdmw zzdmw, JSONArray jSONArray) {
        if (jSONArray.length() == 0) {
            return zzdzk.immediateFailedFuture(new zzcmb(zzdom.NO_FILL));
        }
        if (zzdnl.zzhkr.zzfwy.zzgzc <= 1) {
            return zzdzk.zzb(zzb(zzdnl, zzdmw, jSONArray.getJSONObject(0)), zzcub.zzeaj, this.zzghl);
        }
        int length = jSONArray.length();
        this.zzgup.ensureSize(Math.min(length, zzdnl.zzhkr.zzfwy.zzgzc));
        ArrayList arrayList = new ArrayList(zzdnl.zzhkr.zzfwy.zzgzc);
        for (int i = 0; i < zzdnl.zzhkr.zzfwy.zzgzc; i++) {
            if (i < length) {
                arrayList.add(zzb(zzdnl, zzdmw, jSONArray.getJSONObject(i)));
            } else {
                arrayList.add(zzdzk.immediateFailedFuture(new zzcmb(zzdom.NO_FILL)));
            }
        }
        return zzdzk.zzag(arrayList);
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ zzdzw zza(zzdmw zzdmw, zzcgk zzcgk) {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("isNonagon", true);
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzdai)).booleanValue() && c.d()) {
            jSONObject.put("skipDeepLinkValidation", true);
        }
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put("response", zzdmw.zzhjg.zzgcf);
        jSONObject2.put("sdk_params", jSONObject);
        return zzdzk.zzb(zzcgk.zzc("google.afma.nativeAds.preProcessJson", jSONObject2), new zzcuc(this, zzcgk), this.zzghl);
    }
}
