package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.ads.internal.zzc;
import com.google.android.gms.common.internal.b;

public final class zzaiq extends zzc<zzaiz> {
    zzaiq(Context context, Looper looper, b.a aVar, b.AbstractC0047b bVar) {
        super(zzaul.zzx(context), looper, 166, aVar, bVar, null);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.b
    public final /* synthetic */ IInterface createServiceInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.httpcache.IHttpAssetsCacheService");
        if (queryLocalInterface instanceof zzaiz) {
            return (zzaiz) queryLocalInterface;
        }
        return new zzaiy(iBinder);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.b
    public final String getServiceDescriptor() {
        return "com.google.android.gms.ads.internal.httpcache.IHttpAssetsCacheService";
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.b
    public final String getStartServiceAction() {
        return "com.google.android.gms.ads.service.HTTP";
    }

    public final zzaiz zzub() {
        return (zzaiz) super.getService();
    }
}
