package com.google.android.gms.internal.gtm;

import android.util.Log;
import com.google.android.gms.analytics.b;

final class zzcu implements b {
    private int zza = 2;
    private boolean zzb;

    zzcu() {
    }

    public final void error(Exception exc) {
    }

    @Override // com.google.android.gms.analytics.b
    public final void error(String str) {
    }

    @Override // com.google.android.gms.analytics.b
    public final int getLogLevel() {
        return this.zza;
    }

    public final void info(String str) {
    }

    public final void setLogLevel(int i) {
        this.zza = i;
        if (!this.zzb) {
            zzet<String> zzet = zzeu.zzc;
            String zzb2 = zzet.zzb();
            StringBuilder sb = new StringBuilder(zzb2.length() + 91);
            sb.append("Logger is deprecated. To enable debug logging, please run:\nadb shell setprop log.tag.");
            sb.append(zzb2);
            sb.append(" DEBUG");
            Log.i(zzet.zzb(), sb.toString());
            this.zzb = true;
        }
    }

    @Override // com.google.android.gms.analytics.b
    public final void verbose(String str) {
    }

    @Override // com.google.android.gms.analytics.b
    public final void warn(String str) {
    }
}
