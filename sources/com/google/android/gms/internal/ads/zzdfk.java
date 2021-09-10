package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzr;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzdfk implements Runnable {
    private final zzdfi zzhdl;
    private final long zzhdm;

    zzdfk(zzdfi zzdfi, long j) {
        this.zzhdl = zzdfi;
        this.zzhdm = j;
    }

    public final void run() {
        zzdfi zzdfi = this.zzhdl;
        long j = this.zzhdm;
        String canonicalName = zzdfi.getClass().getCanonicalName();
        long b = zzr.zzky().b() - j;
        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 40);
        sb.append("Signal runtime : ");
        sb.append(canonicalName);
        sb.append(" = ");
        sb.append(b);
        zzd.zzeb(sb.toString());
    }
}
