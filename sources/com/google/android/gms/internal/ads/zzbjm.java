package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.Map;

public final class zzbjm implements zzbjf {
    private final zzdmu zzfrb;

    public zzbjm(zzdmu zzdmu) {
        this.zzfrb = zzdmu;
    }

    @Override // com.google.android.gms.internal.ads.zzbjf
    public final void zzm(Map<String, String> map) {
        String str = map.get("render_in_browser");
        if (!TextUtils.isEmpty(str)) {
            try {
                this.zzfrb.zzbl(Boolean.parseBoolean(str));
            } catch (Exception unused) {
                throw new IllegalStateException("Invalid render_in_browser state");
            }
        }
    }
}
