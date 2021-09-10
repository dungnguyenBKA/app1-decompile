package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;
import android.webkit.CookieManager;
import com.google.android.gms.ads.internal.zzr;
import com.vungle.warren.model.CookieDBAdapter;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class zzbjl implements zzbjf {
    private final CookieManager zzfra;

    public zzbjl(Context context) {
        this.zzfra = zzr.zzkt().zzbf(context);
    }

    @Override // com.google.android.gms.internal.ads.zzbjf
    public final void zzm(Map<String, String> map) {
        Object obj;
        if (this.zzfra != null) {
            if (map.get("clear") != null) {
                String str = (String) zzwr.zzqr().zzd(zzabp.zzcpf);
                String cookie = this.zzfra.getCookie(str);
                if (cookie != null) {
                    List<String> zzc = zzdwk.zza(zzdvu.zzb(';')).zzc(cookie);
                    for (int i = 0; i < zzc.size(); i++) {
                        CookieManager cookieManager = this.zzfra;
                        Iterable<String> zza = zzdwk.zza(zzdvu.zzb('=')).zza(zzc.get(i));
                        zzdwl.checkNotNull(zza);
                        if (zza instanceof List) {
                            obj = ((List) zza).get(0);
                        } else {
                            Iterator<String> it = zza.iterator();
                            zzdwl.checkNotNull(it);
                            zzdwl.checkArgument(true, "numberToAdvance must be nonnegative");
                            if (it.hasNext()) {
                                obj = it.next();
                            } else {
                                throw new IndexOutOfBoundsException(ic.d(91, "position (0) must be less than the number of elements that remained (0", ")"));
                            }
                        }
                        String valueOf = String.valueOf((String) obj);
                        String valueOf2 = String.valueOf((String) zzwr.zzqr().zzd(zzabp.zzcou));
                        cookieManager.setCookie(str, valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf));
                    }
                    return;
                }
                return;
            }
            String str2 = map.get(CookieDBAdapter.CookieColumns.TABLE_NAME);
            if (!TextUtils.isEmpty(str2)) {
                this.zzfra.setCookie((String) zzwr.zzqr().zzd(zzabp.zzcpf), str2);
            }
        }
    }
}
