package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzr;
import java.util.Map;

public final class zzaqi {
    private final zzbeb zzdjd;
    private final boolean zzdpv;
    private final String zzdpw;

    public zzaqi(zzbeb zzbeb, Map<String, String> map) {
        this.zzdjd = zzbeb;
        this.zzdpw = map.get("forceOrientation");
        if (map.containsKey("allowOrientationChange")) {
            this.zzdpv = Boolean.parseBoolean(map.get("allowOrientationChange"));
        } else {
            this.zzdpv = true;
        }
    }

    public final void execute() {
        int i;
        if (this.zzdjd == null) {
            zzazk.zzex("AdWebView is null");
            return;
        }
        if ("portrait".equalsIgnoreCase(this.zzdpw)) {
            i = 7;
        } else if ("landscape".equalsIgnoreCase(this.zzdpw)) {
            i = 6;
        } else if (this.zzdpv) {
            i = -1;
        } else {
            i = zzr.zzkt().zzzc();
        }
        this.zzdjd.setRequestedOrientation(i);
    }
}
