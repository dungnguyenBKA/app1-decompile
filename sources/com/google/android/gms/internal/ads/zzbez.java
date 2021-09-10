package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.net.Uri;
import android.text.TextUtils;
import android.webkit.JavascriptInterface;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.internal.ads.zzbfd;
import com.google.android.gms.internal.ads.zzbfm;
import com.google.android.gms.internal.ads.zzbfo;

@TargetApi(17)
public final class zzbez<WebViewT extends zzbfd & zzbfm & zzbfo> {
    private final zzbfe zzeuh;
    private final WebViewT zzeui;

    public zzbez(WebViewT webviewt, zzbfe zzbfe) {
        this.zzeuh = zzbfe;
        this.zzeui = webviewt;
    }

    @JavascriptInterface
    public final String getClickSignals(String str) {
        if (TextUtils.isEmpty(str)) {
            zzd.zzeb("Click string is empty, not proceeding.");
            return "";
        }
        zzei zzada = this.zzeui.zzada();
        if (zzada == null) {
            zzd.zzeb("Signal utils is empty, ignoring.");
            return "";
        }
        zzdy zzca = zzada.zzca();
        if (zzca == null) {
            zzd.zzeb("Signals object is empty, ignoring.");
            return "";
        } else if (this.zzeui.getContext() != null) {
            return zzca.zza(this.zzeui.getContext(), str, this.zzeui.getView(), this.zzeui.zzabe());
        } else {
            zzd.zzeb("Context is null, ignoring.");
            return "";
        }
    }

    @JavascriptInterface
    public final void notify(String str) {
        if (TextUtils.isEmpty(str)) {
            zzazk.zzex("URL is empty, ignoring message");
        } else {
            zzj.zzeen.post(new zzbfb(this, str));
        }
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ void zzfn(String str) {
        this.zzeuh.zzj(Uri.parse(str));
    }
}
