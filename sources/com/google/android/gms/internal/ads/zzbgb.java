package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zzf;
import com.google.android.gms.ads.internal.zzr;
import java.lang.ref.WeakReference;

public class zzbgb {
    private final Context zzaad;
    private final zzazn zzboz;
    private final WeakReference<Context> zzewa;

    public static class zza {
        private Context zzaad;
        private zzazn zzboz;
        private WeakReference<Context> zzewa;

        public final zza zza(zzazn zzazn) {
            this.zzboz = zzazn;
            return this;
        }

        public final zza zzbw(Context context) {
            this.zzewa = new WeakReference<>(context);
            if (context.getApplicationContext() != null) {
                context = context.getApplicationContext();
            }
            this.zzaad = context;
            return this;
        }
    }

    private zzbgb(zza zza2) {
        this.zzboz = zza2.zzboz;
        this.zzaad = zza2.zzaad;
        this.zzewa = zza2.zzewa;
    }

    /* access modifiers changed from: package-private */
    public final Context zzaeu() {
        return this.zzaad;
    }

    /* access modifiers changed from: package-private */
    public final WeakReference<Context> zzaev() {
        return this.zzewa;
    }

    /* access modifiers changed from: package-private */
    public final zzazn zzaew() {
        return this.zzboz;
    }

    /* access modifiers changed from: package-private */
    public final String zzaex() {
        return zzr.zzkr().zzq(this.zzaad, this.zzboz.zzbrp);
    }

    public final zzei zzaey() {
        return new zzei(new zzf(this.zzaad, this.zzboz));
    }
}
