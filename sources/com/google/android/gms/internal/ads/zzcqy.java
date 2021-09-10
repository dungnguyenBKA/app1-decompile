package com.google.android.gms.internal.ads;

import android.database.sqlite.SQLiteDatabase;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzcqy implements zzdqu {
    private final String zzdjf;
    private final zzcqr zzgrw;

    zzcqy(zzcqr zzcqr, String str) {
        this.zzgrw = zzcqr;
        this.zzdjf = str;
    }

    @Override // com.google.android.gms.internal.ads.zzdqu
    public final Object apply(Object obj) {
        zzcqr.zza((SQLiteDatabase) obj, this.zzdjf);
        return null;
    }
}
