package com.google.android.gms.dynamite;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.internal.common.zzb;
import com.google.android.gms.internal.common.zzd;

public final class i extends zzb implements j {
    i(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.dynamite.IDynamiteLoaderV2");
    }

    @Override // com.google.android.gms.dynamite.j
    public final zv f(zv zvVar, String str, int i, zv zvVar2) {
        Parcel a_ = a_();
        zzd.zza(a_, zvVar);
        a_.writeString(str);
        a_.writeInt(i);
        zzd.zza(a_, zvVar2);
        return ic.A(zza(2, a_));
    }

    @Override // com.google.android.gms.dynamite.j
    public final zv g(zv zvVar, String str, int i, zv zvVar2) {
        Parcel a_ = a_();
        zzd.zza(a_, zvVar);
        a_.writeString(str);
        a_.writeInt(i);
        zzd.zza(a_, zvVar2);
        return ic.A(zza(3, a_));
    }
}
