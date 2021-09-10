package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Build;
import com.google.ads.ADRequestList;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.Future;

public final class zzabt {
    private Context context = null;
    private String zzbrp = null;
    private String zzdat;
    private Map<String, String> zzdaw;

    public zzabt(Context context2, String str) {
        String str2;
        this.context = context2;
        this.zzbrp = str;
        this.zzdat = zzadf.zzddh.get();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        this.zzdaw = linkedHashMap;
        linkedHashMap.put(ADRequestList.SELF, "gmob_sdk");
        this.zzdaw.put("v", "3");
        this.zzdaw.put("os", Build.VERSION.RELEASE);
        this.zzdaw.put("api_v", Build.VERSION.SDK);
        Map<String, String> map = this.zzdaw;
        zzr.zzkr();
        map.put("device", zzj.zzyz());
        Map<String, String> map2 = this.zzdaw;
        if (context2.getApplicationContext() != null) {
            str2 = context2.getApplicationContext().getPackageName();
        } else {
            str2 = context2.getPackageName();
        }
        map2.put("app", str2);
        Map<String, String> map3 = this.zzdaw;
        zzr.zzkr();
        map3.put("is_lite_sdk", zzj.zzau(context2) ? "1" : "0");
        Future<zzatz> zzv = zzr.zzlc().zzv(this.context);
        try {
            this.zzdaw.put("network_coarse", Integer.toString(zzv.get().zzdyc));
            this.zzdaw.put("network_fine", Integer.toString(zzv.get().zzdyd));
        } catch (Exception e) {
            zzr.zzkv().zza(e, "CsiConfiguration.CsiConfiguration");
        }
    }

    /* access modifiers changed from: package-private */
    public final Context getContext() {
        return this.context;
    }

    /* access modifiers changed from: package-private */
    public final String zzlw() {
        return this.zzbrp;
    }

    /* access modifiers changed from: package-private */
    public final String zzsj() {
        return this.zzdat;
    }

    /* access modifiers changed from: package-private */
    public final Map<String, String> zzsk() {
        return this.zzdaw;
    }
}
