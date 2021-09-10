package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.ads.internal.zzc;
import com.google.android.gms.ads.zzb;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.internal.b;

public final class zzte extends zzc<zzti> {
    zzte(Context context, Looper looper, b.a aVar, b.AbstractC0047b bVar) {
        super(zzaul.zzx(context), looper, 123, aVar, bVar, null);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.b
    public final /* synthetic */ IInterface createServiceInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.cache.ICacheService");
        if (queryLocalInterface instanceof zzti) {
            return (zzti) queryLocalInterface;
        }
        return new zztl(iBinder);
    }

    @Override // com.google.android.gms.common.internal.b
    public final Feature[] getApiFeatures() {
        return zzb.zzadj;
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.b
    public final String getServiceDescriptor() {
        return "com.google.android.gms.ads.internal.cache.ICacheService";
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.b
    public final String getStartServiceAction() {
        return "com.google.android.gms.ads.service.CACHE";
    }

    public final zzti zznd() {
        return (zzti) super.getService();
    }

    public final boolean zzne() {
        return ((Boolean) zzwr.zzqr().zzd(zzabp.zzcrm)).booleanValue() && androidx.core.app.b.r(getAvailableFeatures(), zzb.zzadi);
    }
}
