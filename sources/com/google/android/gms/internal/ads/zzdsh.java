package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.google.ads.ADRequestList;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import java.util.Map;

public final class zzdsh {
    private final Context context;
    private final String packageName;
    private final String zzbrp;

    public zzdsh(Context context2, zzazn zzazn) {
        this.context = context2;
        this.packageName = context2.getPackageName();
        this.zzbrp = zzazn.zzbrp;
    }

    public final void zzq(Map<String, String> map) {
        map.put(ADRequestList.SELF, "gmob_sdk");
        map.put("v", "3");
        map.put("os", Build.VERSION.RELEASE);
        map.put("api_v", Build.VERSION.SDK);
        zzr.zzkr();
        map.put("device", zzj.zzyz());
        map.put("app", this.packageName);
        zzr.zzkr();
        map.put("is_lite_sdk", zzj.zzau(this.context) ? "1" : "0");
        map.put("e", TextUtils.join(",", zzabp.zzsd()));
        map.put("sdkVersion", this.zzbrp);
    }
}
