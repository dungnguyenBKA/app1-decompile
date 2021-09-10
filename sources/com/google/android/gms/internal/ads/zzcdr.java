package com.google.android.gms.internal.ads;

import android.view.View;
import android.view.WindowManager;
import java.util.Map;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzcdr implements zzaif {
    private final zzcdp zzggq;
    private final WindowManager zzggr;
    private final View zzggs;

    zzcdr(zzcdp zzcdp, WindowManager windowManager, View view) {
        this.zzggq = zzcdp;
        this.zzggr = windowManager;
        this.zzggs = view;
    }

    @Override // com.google.android.gms.internal.ads.zzaif
    public final void zza(Object obj, Map map) {
        this.zzggq.zza(this.zzggr, this.zzggs, (zzbeb) obj, map);
    }
}
