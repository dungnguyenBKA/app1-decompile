package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.Map;

public final class zzaio implements zzaif<Object> {
    private final zzair zzdim;

    private zzaio(zzair zzair) {
        this.zzdim = zzair;
    }

    public static void zza(zzbeb zzbeb, zzair zzair) {
        zzbeb.zza("/reward", new zzaio(zzair));
    }

    @Override // com.google.android.gms.internal.ads.zzaif
    public final void zza(Object obj, Map<String, String> map) {
        String str = map.get("action");
        if ("grant".equals(str)) {
            zzavj zzavj = null;
            try {
                int parseInt = Integer.parseInt(map.get("amount"));
                String str2 = map.get("type");
                if (!TextUtils.isEmpty(str2)) {
                    zzavj = new zzavj(str2, parseInt);
                }
            } catch (NumberFormatException e) {
                zzazk.zzd("Unable to parse reward amount.", e);
            }
            this.zzdim.zza(zzavj);
        } else if ("video_start".equals(str)) {
            this.zzdim.zzuc();
        } else if ("video_complete".equals(str)) {
            this.zzdim.zzud();
        }
    }
}
