package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;

/* access modifiers changed from: package-private */
public final class zzwg extends zzws<zzaxy> {
    private final /* synthetic */ Context val$context;
    private final /* synthetic */ zzane zzciv;

    zzwg(zzwc zzwc, Context context, zzane zzane) {
        this.val$context = context;
        this.zzciv = zzane;
    }

    /* access modifiers changed from: private */
    /* renamed from: zzql */
    public final zzaxy zzqk() {
        try {
            return ((zzayd) zzazj.zza(this.val$context, "com.google.android.gms.ads.DynamiteSignalGeneratorCreatorImpl", zzwf.zzbyi)).zze(aw.Q(this.val$context), this.zzciv, 204204000);
        } catch (RemoteException | zzazl | NullPointerException unused) {
            return null;
        }
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // com.google.android.gms.internal.ads.zzws
    public final /* synthetic */ zzaxy zza(zzxy zzxy) {
        return zzxy.zzb(aw.Q(this.val$context), this.zzciv, 204204000);
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzws
    public final /* bridge */ /* synthetic */ zzaxy zzqj() {
        return null;
    }
}
