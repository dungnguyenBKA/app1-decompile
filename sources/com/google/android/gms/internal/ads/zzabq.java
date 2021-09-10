package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;

public final class zzabq {
    private static void zza(List<String> list, zzacx<String> zzacx) {
        String str = zzacx.get();
        if (!TextUtils.isEmpty(str)) {
            list.add(str);
        }
    }

    static List<String> zzsg() {
        ArrayList arrayList = new ArrayList();
        zza(arrayList, zzacx.zzh("gad:dynamite_module:experiment_id", ""));
        zza(arrayList, zzadg.zzddj);
        zza(arrayList, zzadg.zzddk);
        zza(arrayList, zzadg.zzddl);
        zza(arrayList, zzadg.zzddm);
        zza(arrayList, zzadg.zzddn);
        zza(arrayList, zzadg.zzddt);
        zza(arrayList, zzadg.zzddo);
        zza(arrayList, zzadg.zzddp);
        zza(arrayList, zzadg.zzddq);
        zza(arrayList, zzadg.zzddr);
        zza(arrayList, zzadg.zzdds);
        return arrayList;
    }

    static List<String> zzsh() {
        ArrayList arrayList = new ArrayList();
        zza(arrayList, zzadt.zzdey);
        return arrayList;
    }
}
