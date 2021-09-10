package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;

/* access modifiers changed from: package-private */
public final class zzwi extends zzws<zzarf> {
    private final /* synthetic */ Context val$context;
    private final /* synthetic */ zzane zzciv;

    zzwi(zzwc zzwc, Context context, zzane zzane) {
        this.val$context = context;
        this.zzciv = zzane;
    }

    /* access modifiers changed from: private */
    /* renamed from: zzqm */
    public final zzarf zzqk() {
        try {
            return ((zzarg) zzazj.zza(this.val$context, "com.google.android.gms.ads.DynamiteOfflineUtilsCreatorImpl", zzwh.zzbyi)).zzc(aw.Q(this.val$context), this.zzciv, 204204000);
        } catch (RemoteException | zzazl | NullPointerException unused) {
            return null;
        }
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // com.google.android.gms.internal.ads.zzws
    public final /* synthetic */ zzarf zza(zzxy zzxy) {
        return zzxy.zzc(aw.Q(this.val$context), this.zzciv, 204204000);
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzws
    public final /* bridge */ /* synthetic */ zzarf zzqj() {
        return null;
    }
}
