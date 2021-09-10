package com.google.android.gms.internal.ads;

import android.view.View;
import android.view.WindowManager;
import java.util.Map;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzcdu implements zzaif {
    private final zzcdp zzggq;
    private final View zzggt;
    private final WindowManager zzggu;

    zzcdu(zzcdp zzcdp, View view, WindowManager windowManager) {
        this.zzggq = zzcdp;
        this.zzggt = view;
        this.zzggu = windowManager;
    }

    @Override // com.google.android.gms.internal.ads.zzaif
    public final void zza(Object obj, Map map) {
        this.zzggq.zza(this.zzggt, this.zzggu, (zzbeb) obj, map);
    }
}
