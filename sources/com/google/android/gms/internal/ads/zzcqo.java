package com.google.android.gms.internal.ads;

import android.database.sqlite.SQLiteDatabase;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzcqo implements zzdqu {
    private final zzcql zzgrr;

    zzcqo(zzcql zzcql) {
        this.zzgrr = zzcql;
    }

    @Override // com.google.android.gms.internal.ads.zzdqu
    public final Object apply(Object obj) {
        return this.zzgrr.zza((SQLiteDatabase) obj);
    }
}
