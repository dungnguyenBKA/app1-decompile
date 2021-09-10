package com.google.android.gms.ads.internal.util;

import android.content.Context;
import com.google.android.gms.internal.ads.zzabp;
import com.google.android.gms.internal.ads.zzaf;
import com.google.android.gms.internal.ads.zzaze;
import com.google.android.gms.internal.ads.zzazk;
import com.google.android.gms.internal.ads.zzbaa;
import com.google.android.gms.internal.ads.zzbj;
import com.google.android.gms.internal.ads.zzdzw;
import com.google.android.gms.internal.ads.zzl;
import com.google.android.gms.internal.ads.zzwr;
import com.google.android.gms.internal.ads.zzz;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;
import org.apache.http.client.methods.HttpGet;

@ParametersAreNonnullByDefault
public final class zzay {
    private static zzaf a;
    private static final Object b = new Object();

    public zzay(Context context) {
        zzaf zzaf;
        context = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        synchronized (b) {
            if (a == null) {
                zzabp.initialize(context);
                if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcum)).booleanValue()) {
                    zzaf = zzan.zzbi(context);
                } else {
                    zzaf = zzbj.zza(context);
                }
                a = zzaf;
            }
        }
    }

    public static zzdzw<zzz> zzeo(String str) {
        zzbaa zzbaa = new zzbaa();
        a.zzd(new zzbe(str, zzbaa));
        return zzbaa;
    }

    public final zzdzw<String> zza(int i, String str, Map<String, String> map, byte[] bArr) {
        n nVar = new n(null);
        m mVar = new m(str, nVar);
        zzaze zzaze = new zzaze(null);
        l lVar = new l(i, str, nVar, mVar, bArr, map, zzaze);
        if (zzaze.isEnabled()) {
            try {
                zzaze.zza(str, HttpGet.METHOD_NAME, lVar.getHeaders(), lVar.zzg());
            } catch (zzl e) {
                zzazk.zzex(e.getMessage());
            }
        }
        a.zzd(lVar);
        return nVar;
    }

    public final zzdzw<String> zzb(String str, Map<String, String> map) {
        return zza(0, str, map, null);
    }
}
