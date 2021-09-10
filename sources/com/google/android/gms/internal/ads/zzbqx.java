package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;

public class zzbqx {
    private final Context context;
    private final zzdnp zzfwy;
    private Bundle zzfyw;
    private final String zzfyx;
    private final zzdnk zzfyy;

    public static class zza {
        private Context context;
        private zzdnp zzfwy;
        private Bundle zzfyw;
        private String zzfyx;
        private zzdnk zzfyy;

        public final zza zza(zzdnp zzdnp) {
            this.zzfwy = zzdnp;
            return this;
        }

        public final zzbqx zzalo() {
            return new zzbqx(this);
        }

        public final zza zzcf(Context context2) {
            this.context = context2;
            return this;
        }

        public final zza zze(Bundle bundle) {
            this.zzfyw = bundle;
            return this;
        }

        public final zza zzfs(String str) {
            this.zzfyx = str;
            return this;
        }

        public final zza zza(zzdnk zzdnk) {
            this.zzfyy = zzdnk;
            return this;
        }
    }

    private zzbqx(zza zza2) {
        this.context = zza2.context;
        this.zzfwy = zza2.zzfwy;
        this.zzfyw = zza2.zzfyw;
        this.zzfyx = zza2.zzfyx;
        this.zzfyy = zza2.zzfyy;
    }

    /* access modifiers changed from: package-private */
    public final zza zzalk() {
        return new zza().zzcf(this.context).zza(this.zzfwy).zzfs(this.zzfyx).zze(this.zzfyw);
    }

    /* access modifiers changed from: package-private */
    public final zzdnp zzall() {
        return this.zzfwy;
    }

    /* access modifiers changed from: package-private */
    public final zzdnk zzalm() {
        return this.zzfyy;
    }

    /* access modifiers changed from: package-private */
    public final Bundle zzaln() {
        return this.zzfyw;
    }

    /* access modifiers changed from: package-private */
    public final Context zzce(Context context2) {
        if (this.zzfyx != null) {
            return context2;
        }
        return this.context;
    }
}
