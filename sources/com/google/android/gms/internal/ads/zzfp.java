package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.internal.ads.zzcb;
import com.google.android.gms.internal.ads.zzcf;
import java.util.concurrent.ExecutionException;

public final class zzfp extends zzgn {
    private static final zzgq<zzcx> zzaau = new zzgq<>();
    private final Context zzaav;
    private zzcb.zza zzaaw = null;

    public zzfp(zzfc zzfc, String str, String str2, zzcf.zza.zzb zzb, int i, int i2, Context context, zzcb.zza zza) {
        super(zzfc, str, str2, zzb, i, 27);
        this.zzaav = context;
        this.zzaaw = zza;
    }

    private static String zza(zzcb.zza zza) {
        if (zza == null || !zza.zzz() || zzfh.zzar(zza.zzaa().zzaf())) {
            return null;
        }
        return zza.zzaa().zzaf();
    }

    private final String zzcx() {
        try {
            if (this.zzwc.zzcp() != null) {
                this.zzwc.zzcp().get();
            }
            zzcf.zza zzco = this.zzwc.zzco();
            if (zzco == null || !zzco.zzai()) {
                return null;
            }
            return zzco.zzaf();
        } catch (InterruptedException | ExecutionException unused) {
            return null;
        }
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Removed duplicated region for block: B:15:0x0039  */
    @Override // com.google.android.gms.internal.ads.zzgn
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void zzcw() {
        /*
        // Method dump skipped, instructions count: 278
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfp.zzcw():void");
    }
}
