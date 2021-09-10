package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.common.g;
import com.google.android.gms.common.internal.b;

public final class e3 extends b<y2> {
    public e3(Context context, Looper looper, b.a aVar, b.AbstractC0047b bVar) {
        super(context, looper, 93, aVar, bVar, null);
    }

    /* Return type fixed from 'android.os.IInterface' to match base method */
    @Override // com.google.android.gms.common.internal.b
    public final /* bridge */ /* synthetic */ y2 createServiceInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.measurement.internal.IMeasurementService");
        return queryLocalInterface instanceof y2 ? (y2) queryLocalInterface : new w2(iBinder);
    }

    @Override // com.google.android.gms.common.internal.b
    public final int getMinApkVersion() {
        return g.GOOGLE_PLAY_SERVICES_VERSION_CODE;
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.b
    public final String getServiceDescriptor() {
        return "com.google.android.gms.measurement.internal.IMeasurementService";
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.b
    public final String getStartServiceAction() {
        return "com.google.android.gms.measurement.START";
    }
}
