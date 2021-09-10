package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import java.lang.ref.WeakReference;

public final class zzchb extends zzbnt {
    private final Context context;
    private final zzavl zzdzk;
    private final WeakReference<zzbeb> zzgbe;
    private final zzbxo zzgbf;
    private final zzboq zzgbg;
    private final zzdtm zzgbh;
    private final zzbrt zzgbi;
    private final zzcag zzgbj;
    private boolean zzgiq = false;
    private final zzbta zzgjf;

    zzchb(zzbnw zzbnw, Context context2, zzbeb zzbeb, zzcag zzcag, zzbxo zzbxo, zzbrt zzbrt, zzbta zzbta, zzboq zzboq, zzdmw zzdmw, zzdtm zzdtm) {
        super(zzbnw);
        this.context = context2;
        this.zzgbj = zzcag;
        this.zzgbe = new WeakReference<>(zzbeb);
        this.zzgbf = zzbxo;
        this.zzgbi = zzbrt;
        this.zzgjf = zzbta;
        this.zzgbg = zzboq;
        this.zzgbh = zzdtm;
        this.zzdzk = new zzawi(zzdmw.zzdwm);
    }

    public final void finalize() {
        try {
            zzbeb zzbeb = this.zzgbe.get();
            if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcyw)).booleanValue()) {
                if (!this.zzgiq && zzbeb != null) {
                    zzazp.zzeig.execute(zzche.zze(zzbeb));
                }
            } else if (zzbeb != null) {
                zzbeb.destroy();
            }
        } finally {
            super.finalize();
        }
    }

    public final Bundle getAdMetadata() {
        return this.zzgjf.getAdMetadata();
    }

    public final boolean isClosed() {
        return this.zzgbg.isClosed();
    }

    public final boolean isUsed() {
        return this.zzgiq;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v3, types: [android.content.Context] */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final boolean zzb(boolean r4, android.app.Activity r5) {
        /*
        // Method dump skipped, instructions count: 124
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzchb.zzb(boolean, android.app.Activity):boolean");
    }

    public final zzavl zzrv() {
        return this.zzdzk;
    }

    public final boolean zzrw() {
        zzbeb zzbeb = this.zzgbe.get();
        return zzbeb != null && !zzbeb.zzadm();
    }
}
