package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import java.io.File;
import java.util.Collections;
import java.util.Map;

@TargetApi(11)
public class zzbff extends zzbee {
    public zzbff(zzbeb zzbeb, zztu zztu, boolean z) {
        super(zzbeb, zztu, z);
    }

    /* access modifiers changed from: protected */
    public final WebResourceResponse zza(WebView webView, String str, Map<String, String> map) {
        String str2;
        if (!(webView instanceof zzbeb)) {
            zzazk.zzex("Tried to intercept request from a WebView that wasn't an AdWebView.");
            return null;
        }
        zzbeb zzbeb = (zzbeb) webView;
        zzawz zzawz = this.zzerf;
        if (zzawz != null) {
            zzawz.zza(str, map, 1);
        }
        if (!"mraid.js".equalsIgnoreCase(new File(str).getName())) {
            if (map == null) {
                map = Collections.emptyMap();
            }
            return super.zzc(str, map);
        }
        if (zzbeb.zzacx() != null) {
            zzbeb.zzacx().zzvx();
        }
        if (zzbeb.zzacv().zzaeo()) {
            str2 = (String) zzwr.zzqr().zzd(zzabp.zzcnr);
        } else if (zzbeb.zzadc()) {
            str2 = (String) zzwr.zzqr().zzd(zzabp.zzcnq);
        } else {
            str2 = (String) zzwr.zzqr().zzd(zzabp.zzcnp);
        }
        zzr.zzkr();
        return zzj.zzd(zzbeb.getContext(), zzbeb.zzabj().zzbrp, str2);
    }
}
