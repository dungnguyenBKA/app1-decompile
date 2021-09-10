package com.google.android.gms.ads.internal.util;

import android.annotation.TargetApi;
import android.content.Context;
import android.webkit.CookieManager;
import android.webkit.WebResourceResponse;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.ads.zzazk;
import com.google.android.gms.internal.ads.zzbeb;
import com.google.android.gms.internal.ads.zzbee;
import com.google.android.gms.internal.ads.zzbfi;
import com.google.android.gms.internal.ads.zztu;
import com.vungle.warren.error.VungleException;
import java.io.InputStream;
import java.util.Map;

@TargetApi(VungleException.SERVER_ERROR)
public class zzx extends zzy {
    @Override // com.google.android.gms.ads.internal.util.zzr
    public final zzbee zza(zzbeb zzbeb, zztu zztu, boolean z) {
        return new zzbfi(zzbeb, zztu, z);
    }

    @Override // com.google.android.gms.ads.internal.util.zzr
    public final CookieManager zzbf(Context context) {
        if (zzr.zzze()) {
            return null;
        }
        try {
            return CookieManager.getInstance();
        } catch (Throwable th) {
            zzazk.zzc("Failed to obtain CookieManager.", th);
            zzr.zzkv().zza(th, "ApiLevelUtil.getCookieManager");
            return null;
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzr
    public final int zzzf() {
        return 16974374;
    }

    @Override // com.google.android.gms.ads.internal.util.zzr
    public final WebResourceResponse zza(String str, String str2, int i, String str3, Map<String, String> map, InputStream inputStream) {
        return new WebResourceResponse(str, str2, i, str3, map, inputStream);
    }
}
