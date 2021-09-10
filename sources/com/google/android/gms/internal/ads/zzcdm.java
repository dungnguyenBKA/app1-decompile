package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.Map;
import org.apache.http.protocol.HTTP;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzcdm implements zzaif {
    private final zzcdh zzggm;

    zzcdm(zzcdh zzcdh) {
        this.zzggm = zzcdh;
    }

    @Override // com.google.android.gms.internal.ads.zzaif
    public final void zza(Object obj, Map map) {
        zzbeb zzbeb = (zzbeb) obj;
        zzbeb.zzacx().zza(new zzcdn(this.zzggm, map));
        String str = (String) map.get("overlayHtml");
        String str2 = (String) map.get("baseUrl");
        if (TextUtils.isEmpty(str2)) {
            zzbeb.loadData(str, "text/html", HTTP.UTF_8);
        } else {
            zzbeb.loadDataWithBaseURL(str2, str, "text/html", HTTP.UTF_8, null);
        }
    }
}
