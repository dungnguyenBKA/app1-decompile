package com.google.android.gms.internal.ads;

import android.content.Context;
import java.lang.ref.WeakReference;
import javax.annotation.Nullable;

public final class zzbyy extends zzbnt {
    private final Context context;
    private final zzcag zzfui;
    private boolean zzfuj = false;
    private final WeakReference<zzbeb> zzgbe;
    private final zzbxo zzgbf;
    private final zzboq zzgbg;
    private final zzdtm zzgbh;
    private final zzbrt zzgbi;

    zzbyy(zzbnw zzbnw, Context context2, @Nullable zzbeb zzbeb, zzbxo zzbxo, zzcag zzcag, zzboq zzboq, zzdtm zzdtm, zzbrt zzbrt) {
        super(zzbnw);
        this.context = context2;
        this.zzgbe = new WeakReference<>(zzbeb);
        this.zzgbf = zzbxo;
        this.zzfui = zzcag;
        this.zzgbg = zzboq;
        this.zzgbh = zzdtm;
        this.zzgbi = zzbrt;
    }

    public final void finalize() {
        try {
            zzbeb zzbeb = this.zzgbe.get();
            if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcyw)).booleanValue()) {
                if (!this.zzfuj && zzbeb != null) {
                    zzazp.zzeig.execute(zzbyx.zze(zzbeb));
                }
            } else if (zzbeb != null) {
                zzbeb.destroy();
            }
        } finally {
            super.finalize();
        }
    }

    public final boolean isClosed() {
        return this.zzgbg.isClosed();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v3, types: [android.content.Context] */
    /* JADX WARNING: Removed duplicated region for block: B:12:0x0052 A[RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:13:0x0053  */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final boolean zzb(boolean r5, @javax.annotation.Nullable android.app.Activity r6) {
        /*
        // Method dump skipped, instructions count: 112
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbyy.zzb(boolean, android.app.Activity):boolean");
    }
}
