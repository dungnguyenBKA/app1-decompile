package com.google.android.gms.internal.ads;

import android.os.Build;
import com.google.android.gms.ads.internal.util.zzbx;
import java.util.HashMap;
import java.util.concurrent.Callable;

final /* synthetic */ class zzdht implements Callable {
    static final Callable zzhca = new zzdht();

    private zzdht() {
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        HashMap hashMap = new HashMap();
        String str = (String) zzwr.zzqr().zzd(zzabp.zzcnm);
        if (str != null && !str.isEmpty()) {
            if (Build.VERSION.SDK_INT >= ((Integer) zzwr.zzqr().zzd(zzabp.zzcnn)).intValue()) {
                String[] split = str.split(",", -1);
                for (String str2 : split) {
                    hashMap.put(str2, zzbx.zzep(str2));
                }
            }
        }
        return new zzdhr(hashMap);
    }
}
