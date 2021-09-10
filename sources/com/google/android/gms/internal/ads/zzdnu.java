package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.AdSize;
import java.util.ArrayList;
import java.util.List;

public final class zzdnu {
    public static zzdmz zza(List<zzdmz> list, zzdmz zzdmz) {
        return list.get(0);
    }

    public static zzvs zzb(Context context, List<zzdmz> list) {
        ArrayList arrayList = new ArrayList();
        for (zzdmz zzdmz : list) {
            if (zzdmz.zzhkf) {
                arrayList.add(AdSize.FLUID);
            } else {
                arrayList.add(new AdSize(zzdmz.width, zzdmz.height));
            }
        }
        return new zzvs(context, (AdSize[]) arrayList.toArray(new AdSize[arrayList.size()]));
    }

    public static zzdmz zzh(zzvs zzvs) {
        if (zzvs.zzcii) {
            return new zzdmz(-3, 0, true);
        }
        return new zzdmz(zzvs.width, zzvs.height, false);
    }
}
