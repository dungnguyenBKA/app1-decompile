package com.google.android.gms.ads.internal.util;

import android.content.Context;
import com.google.android.gms.internal.ads.zzab;
import com.google.android.gms.internal.ads.zzabp;
import com.google.android.gms.internal.ads.zzaf;
import com.google.android.gms.internal.ads.zzajb;
import com.google.android.gms.internal.ads.zzar;
import com.google.android.gms.internal.ads.zzau;
import com.google.android.gms.internal.ads.zzav;
import com.google.android.gms.internal.ads.zzaza;
import com.google.android.gms.internal.ads.zzbd;
import com.google.android.gms.internal.ads.zzwr;
import com.google.android.gms.internal.ads.zzz;
import java.io.File;
import java.util.regex.Pattern;

public final class zzan extends zzau {
    private final Context a;

    private zzan(Context context, zzar zzar) {
        super(zzar);
        this.a = context;
    }

    public static zzaf zzbi(Context context) {
        zzaf zzaf = new zzaf(new zzav(new File(context.getCacheDir(), "admob_volley"), 20971520), new zzan(context, new zzbd()));
        zzaf.start();
        return zzaf;
    }

    @Override // com.google.android.gms.internal.ads.zzu, com.google.android.gms.internal.ads.zzau
    public final zzz zza(zzab<?> zzab) {
        if (zzab.zzh() && zzab.getMethod() == 0) {
            if (Pattern.matches((String) zzwr.zzqr().zzd(zzabp.zzcun), zzab.getUrl())) {
                zzwr.zzqn();
                if (zzaza.zzf(this.a, 13400000)) {
                    zzz zza = new zzajb(this.a).zza(zzab);
                    if (zza != null) {
                        String valueOf = String.valueOf(zzab.getUrl());
                        zzd.zzeb(valueOf.length() != 0 ? "Got gmscore asset response: ".concat(valueOf) : new String("Got gmscore asset response: "));
                        return zza;
                    }
                    String valueOf2 = String.valueOf(zzab.getUrl());
                    zzd.zzeb(valueOf2.length() != 0 ? "Failed to get gmscore asset response: ".concat(valueOf2) : new String("Failed to get gmscore asset response: "));
                }
            }
        }
        return super.zza(zzab);
    }
}
