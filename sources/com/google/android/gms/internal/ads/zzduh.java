package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.ads.internal.zzc;
import com.google.android.gms.common.internal.b;

public final class zzduh extends zzc<zzduo> {
    private final int zzhty;

    public zzduh(Context context, Looper looper, b.a aVar, b.AbstractC0047b bVar, int i) {
        super(context, looper, 116, aVar, bVar, null);
        this.zzhty = i;
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.b
    public final /* synthetic */ IInterface createServiceInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.gass.internal.IGassService");
        if (queryLocalInterface instanceof zzduo) {
            return (zzduo) queryLocalInterface;
        }
        return new zzdun(iBinder);
    }

    @Override // com.google.android.gms.common.internal.b
    public final int getMinApkVersion() {
        return this.zzhty;
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.b
    public final String getServiceDescriptor() {
        return "com.google.android.gms.gass.internal.IGassService";
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.b
    public final String getStartServiceAction() {
        return "com.google.android.gms.gass.START";
    }

    public final zzduo zzayh() {
        return (zzduo) super.getService();
    }
}
