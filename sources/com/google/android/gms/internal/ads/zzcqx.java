package com.google.android.gms.internal.ads;

import android.database.sqlite.SQLiteDatabase;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzcqx implements zzdqu {
    private final zzcqr zzgrw;
    private final zzcrc zzgsa;

    zzcqx(zzcqr zzcqr, zzcrc zzcrc) {
        this.zzgrw = zzcqr;
        this.zzgsa = zzcrc;
    }

    @Override // com.google.android.gms.internal.ads.zzdqu
    public final Object apply(Object obj) {
        return this.zzgrw.zza(this.zzgsa, (SQLiteDatabase) obj);
    }
}
