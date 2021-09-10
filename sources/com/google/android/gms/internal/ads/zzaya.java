package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.IBinder;
import android.os.Parcel;
import java.util.List;

public final class zzaya extends zzgw implements zzaxy {
    zzaya(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.signals.ISignalGenerator");
    }

    @Override // com.google.android.gms.internal.ads.zzaxy
    public final void zza(zv zvVar, zzaye zzaye, zzaxx zzaxx) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zvVar);
        zzgx.zza(zzdo, zzaye);
        zzgx.zza(zzdo, zzaxx);
        zzb(1, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzaxy
    public final void zzan(zv zvVar) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zvVar);
        zzb(2, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzaxy
    public final zv zzao(zv zvVar) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zvVar);
        return ic.A(zza(4, zzdo));
    }

    @Override // com.google.android.gms.internal.ads.zzaxy
    public final zv zzb(zv zvVar, zv zvVar2) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zvVar);
        zzgx.zza(zzdo, zvVar2);
        return ic.A(zza(3, zzdo));
    }

    @Override // com.google.android.gms.internal.ads.zzaxy
    public final void zza(List<Uri> list, zv zvVar, zzasj zzasj) {
        Parcel zzdo = zzdo();
        zzdo.writeTypedList(list);
        zzgx.zza(zzdo, zvVar);
        zzgx.zza(zzdo, zzasj);
        zzb(5, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzaxy
    public final void zzb(List<Uri> list, zv zvVar, zzasj zzasj) {
        Parcel zzdo = zzdo();
        zzdo.writeTypedList(list);
        zzgx.zza(zzdo, zvVar);
        zzgx.zza(zzdo, zzasj);
        zzb(6, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzaxy
    public final void zza(zzasq zzasq) {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzasq);
        zzb(7, zzdo);
    }
}
