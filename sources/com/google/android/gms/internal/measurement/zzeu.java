package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.database.ContentObserver;
import android.util.Log;
import androidx.core.app.b;
import javax.annotation.Nullable;

/* access modifiers changed from: package-private */
public final class zzeu implements zzer {
    private static zzeu zza;
    @Nullable
    private final Context zzb;
    @Nullable
    private final ContentObserver zzc;

    private zzeu() {
        this.zzb = null;
        this.zzc = null;
    }

    private zzeu(Context context) {
        this.zzb = context;
        zzet zzet = new zzet(this, null);
        this.zzc = zzet;
        context.getContentResolver().registerContentObserver(zzei.zza, true, zzet);
    }

    static zzeu zza(Context context) {
        zzeu zzeu;
        zzeu zzeu2;
        synchronized (zzeu.class) {
            if (zza == null) {
                if (b.n(context, "com.google.android.providers.gsf.permission.READ_GSERVICES") == 0) {
                    zzeu2 = new zzeu(context);
                } else {
                    zzeu2 = new zzeu();
                }
                zza = zzeu2;
            }
            zzeu = zza;
        }
        return zzeu;
    }

    static synchronized void zzc() {
        Context context;
        synchronized (zzeu.class) {
            zzeu zzeu = zza;
            if (!(zzeu == null || (context = zzeu.zzb) == null || zzeu.zzc == null)) {
                context.getContentResolver().unregisterContentObserver(zza.zzc);
            }
            zza = null;
        }
    }

    /* renamed from: zzb */
    public final String zze(String str) {
        if (this.zzb == null) {
            return null;
        }
        try {
            return (String) zzep.zza(new zzes(this, str));
        } catch (IllegalStateException | SecurityException e) {
            String valueOf = String.valueOf(str);
            Log.e("GservicesLoader", valueOf.length() != 0 ? "Unable to read GServices for: ".concat(valueOf) : new String("Unable to read GServices for: "), e);
            return null;
        }
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ String zzd(String str) {
        return zzei.zza(this.zzb.getContentResolver(), str, null);
    }
}
