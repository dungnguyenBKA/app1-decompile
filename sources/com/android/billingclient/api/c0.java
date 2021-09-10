package com.android.billingclient.api;

import android.os.Bundle;
import com.google.android.gms.internal.play_billing.zza;
import java.util.ArrayList;

final class c0 {
    static g a(Bundle bundle, String str, String str2) {
        g gVar = a0.l;
        if (bundle == null) {
            zza.zzb(str, String.format("%s got null owned items list", str2));
            return gVar;
        }
        int zza = zza.zza(bundle, str);
        g y = ic.y(zza, zza.zzb(bundle, str));
        if (zza != 0) {
            zza.zzb(str, String.format("%s failed. Response code: %s", str2, Integer.valueOf(zza)));
            return y;
        } else if (!bundle.containsKey("INAPP_PURCHASE_ITEM_LIST") || !bundle.containsKey("INAPP_PURCHASE_DATA_LIST") || !bundle.containsKey("INAPP_DATA_SIGNATURE_LIST")) {
            zza.zzb(str, String.format("Bundle returned from %s doesn't contain required fields.", str2));
            return gVar;
        } else {
            ArrayList<String> stringArrayList = bundle.getStringArrayList("INAPP_PURCHASE_ITEM_LIST");
            ArrayList<String> stringArrayList2 = bundle.getStringArrayList("INAPP_PURCHASE_DATA_LIST");
            ArrayList<String> stringArrayList3 = bundle.getStringArrayList("INAPP_DATA_SIGNATURE_LIST");
            if (stringArrayList == null) {
                zza.zzb(str, String.format("Bundle returned from %s contains null SKUs list.", str2));
                return gVar;
            } else if (stringArrayList2 == null) {
                zza.zzb(str, String.format("Bundle returned from %s contains null purchases list.", str2));
                return gVar;
            } else if (stringArrayList3 != null) {
                return a0.m;
            } else {
                zza.zzb(str, String.format("Bundle returned from %s contains null signatures list.", str2));
                return gVar;
            }
        }
    }
}
