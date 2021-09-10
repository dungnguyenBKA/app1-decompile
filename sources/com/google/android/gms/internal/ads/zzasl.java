package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.IBinder;
import android.os.Parcel;
import java.util.List;

public final class zzasl extends zzgw implements zzasj {
    zzasl(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.query.IUpdateUrlsCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzasj
    public final void onError(String str) {
        Parcel zzdo = zzdo();
        zzdo.writeString(str);
        zzb(2, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzasj
    public final void onSuccess(List<Uri> list) {
        Parcel zzdo = zzdo();
        zzdo.writeTypedList(list);
        zzb(1, zzdo);
    }
}
