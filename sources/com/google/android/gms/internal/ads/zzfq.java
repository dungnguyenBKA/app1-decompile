package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.internal.ads.zzcf;
import java.util.concurrent.atomic.AtomicReference;

public final class zzfq extends zzgn {
    private static zzgq<String> zzaax = new zzgq<>();
    private final Context zzaav;

    public zzfq(zzfc zzfc, String str, String str2, zzcf.zza.zzb zzb, int i, int i2, Context context) {
        super(zzfc, str, str2, zzb, i, 29);
        this.zzaav = context;
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgn
    public final void zzcw() {
        this.zzabb.zzaf("E");
        AtomicReference<String> zzas = zzaax.zzas(this.zzaav.getPackageName());
        if (zzas.get() == null) {
            synchronized (zzas) {
                if (zzas.get() == null) {
                    zzas.set((String) this.zzabl.invoke(null, this.zzaav));
                }
            }
        }
        String str = zzas.get();
        synchronized (this.zzabb) {
            this.zzabb.zzaf(zzcy.zza(str.getBytes(), true));
        }
    }
}
