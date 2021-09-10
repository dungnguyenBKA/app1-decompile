package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.ads.internal.zzc;
import com.google.android.gms.common.internal.b;

public final class zzasy extends zzc<zzath> {
    public zzasy(Context context, Looper looper, b.a aVar, b.AbstractC0047b bVar) {
        super(zzaul.zzx(context), looper, 8, aVar, bVar, null);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.b
    public final /* synthetic */ IInterface createServiceInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.request.IAdRequestService");
        if (queryLocalInterface instanceof zzath) {
            return (zzath) queryLocalInterface;
        }
        return new zzatj(iBinder);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.b
    public final String getServiceDescriptor() {
        return "com.google.android.gms.ads.internal.request.IAdRequestService";
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.b
    public final String getStartServiceAction() {
        return "com.google.android.gms.ads.service.START";
    }

    public final zzath zzwi() {
        return (zzath) super.getService();
    }
}
