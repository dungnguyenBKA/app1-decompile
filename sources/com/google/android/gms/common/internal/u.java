package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.internal.base.zaa;
import com.google.android.gms.internal.base.zac;

public final class u extends zaa implements l {
    u(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.common.internal.ISignInButtonCreator");
    }

    @Override // com.google.android.gms.common.internal.l
    public final zv q(zv zvVar, SignInButtonConfig signInButtonConfig) {
        Parcel zaa = zaa();
        zac.zaa(zaa, zvVar);
        zac.zaa(zaa, signInButtonConfig);
        return ic.A(zaa(2, zaa));
    }
}
