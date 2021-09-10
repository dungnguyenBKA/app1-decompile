package com.google.android.gms.internal.ads;

import android.database.sqlite.SQLiteDatabase;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzcqv implements zzdqu {
    private final String zzdlo;
    private final zzcqr zzgrw;
    private final zzazo zzgrx;

    zzcqv(zzcqr zzcqr, zzazo zzazo, String str) {
        this.zzgrw = zzcqr;
        this.zzgrx = zzazo;
        this.zzdlo = str;
    }

    @Override // com.google.android.gms.internal.ads.zzdqu
    public final Object apply(Object obj) {
        return this.zzgrw.zza(this.zzgrx, this.zzdlo, (SQLiteDatabase) obj);
    }
}
