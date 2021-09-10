package com.google.android.gms.dynamite;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.internal.common.zzb;
import com.google.android.gms.internal.common.zzd;

public final class g extends zzb implements h {
    g(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.dynamite.IDynamiteLoader");
    }

    @Override // com.google.android.gms.dynamite.h
    public final int B(zv zvVar, String str, boolean z) {
        Parcel a_ = a_();
        zzd.zza(a_, zvVar);
        a_.writeString(str);
        zzd.zza(a_, z);
        Parcel zza = zza(3, a_);
        int readInt = zza.readInt();
        zza.recycle();
        return readInt;
    }

    @Override // com.google.android.gms.dynamite.h
    public final zv D(zv zvVar, String str, int i) {
        Parcel a_ = a_();
        zzd.zza(a_, zvVar);
        a_.writeString(str);
        a_.writeInt(i);
        return ic.A(zza(4, a_));
    }

    @Override // com.google.android.gms.dynamite.h
    public final zv k(zv zvVar, String str, int i) {
        Parcel a_ = a_();
        zzd.zza(a_, zvVar);
        a_.writeString(str);
        a_.writeInt(i);
        return ic.A(zza(2, a_));
    }

    @Override // com.google.android.gms.dynamite.h
    public final int w(zv zvVar, String str, boolean z) {
        Parcel a_ = a_();
        zzd.zza(a_, zvVar);
        a_.writeString(str);
        zzd.zza(a_, z);
        Parcel zza = zza(5, a_);
        int readInt = zza.readInt();
        zza.recycle();
        return readInt;
    }

    @Override // com.google.android.gms.dynamite.h
    public final int zzb() {
        Parcel zza = zza(6, a_());
        int readInt = zza.readInt();
        zza.recycle();
        return readInt;
    }
}
