package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zza;
import java.util.Collections;
import java.util.Map;

public final class zzaig implements zzaif<zzbeb> {
    private static final Map<String, Integer> zzdhz;
    private final zza zzdhw;
    private final zzaqg zzdhx;
    private final zzaqt zzdhy;

    static {
        String[] strArr = {"resize", "playVideo", "storePicture", "createCalendarEvent", "setOrientationProperties", "closeResizedAd", "unload"};
        Integer[] numArr = {1, 2, 3, 4, 5, 6, 7};
        x xVar = new x(7);
        for (int i = 0; i < 7; i++) {
            xVar.put(strArr[i], numArr[i]);
        }
        zzdhz = Collections.unmodifiableMap(xVar);
    }

    public zzaig(zza zza, zzaqg zzaqg, zzaqt zzaqt) {
        this.zzdhw = zza;
        this.zzdhx = zzaqg;
        this.zzdhy = zzaqt;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, java.util.Map] */
    @Override // com.google.android.gms.internal.ads.zzaif
    public final /* synthetic */ void zza(zzbeb zzbeb, Map map) {
        zza zza;
        zzbeb zzbeb2 = zzbeb;
        int intValue = zzdhz.get((String) map.get("a")).intValue();
        if (intValue != 5 && intValue != 7 && (zza = this.zzdhw) != null && !zza.zzjy()) {
            this.zzdhw.zzbk(null);
        } else if (intValue == 1) {
            this.zzdhx.zzg(map);
        } else if (intValue == 3) {
            new zzaql(zzbeb2, map).execute();
        } else if (intValue == 4) {
            new zzaqf(zzbeb2, map).execute();
        } else if (intValue == 5) {
            new zzaqi(zzbeb2, map).execute();
        } else if (intValue == 6) {
            this.zzdhx.zzad(true);
        } else if (intValue != 7) {
            zzazk.zzew("Unknown MRAID command called.");
        } else {
            this.zzdhy.zzvr();
        }
    }
}
