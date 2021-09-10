package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.Map;

final class zzbet implements zzaif<zzbeb> {
    private final /* synthetic */ zzber zzetw;

    zzbet(zzber zzber) {
        this.zzetw = zzber;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, java.util.Map] */
    @Override // com.google.android.gms.internal.ads.zzaif
    public final /* synthetic */ void zza(zzbeb zzbeb, Map map) {
        if (map != null) {
            String str = (String) map.get("height");
            if (!TextUtils.isEmpty(str)) {
                try {
                    int parseInt = Integer.parseInt(str);
                    synchronized (this.zzetw) {
                        if (zzber.zza(this.zzetw) != parseInt) {
                            zzber.zza(this.zzetw, parseInt);
                            this.zzetw.requestLayout();
                        }
                    }
                } catch (Exception e) {
                    zzazk.zzd("Exception occurred while getting webview content height", e);
                }
            }
        }
    }
}
