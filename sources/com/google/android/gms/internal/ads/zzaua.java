package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zzr;
import java.util.concurrent.Callable;

/* access modifiers changed from: package-private */
public final class zzaua implements Callable<zzatz> {
    private final /* synthetic */ Context val$context;
    private final /* synthetic */ zzaub zzdyv;

    zzaua(zzaub zzaub, Context context) {
        this.zzdyv = zzaub;
        this.val$context = context;
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // java.util.concurrent.Callable
    public final /* synthetic */ zzatz call() {
        zzatz zzatz;
        zzaud zzaud = (zzaud) this.zzdyv.zzdyw.get(this.val$context);
        if (zzaud != null) {
            if (!(zzada.zzdcn.get().longValue() + zzaud.zzdyz < zzr.zzky().a())) {
                zzatz = new zzaty(this.val$context, zzaud.zzdza).zzws();
                this.zzdyv.zzdyw.put(this.val$context, new zzaud(this.zzdyv, zzatz));
                return zzatz;
            }
        }
        zzatz = new zzaty(this.val$context).zzws();
        this.zzdyv.zzdyw.put(this.val$context, new zzaud(this.zzdyv, zzatz));
        return zzatz;
    }
}
