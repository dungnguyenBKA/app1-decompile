package com.google.android.gms.internal.ads;

import android.database.sqlite.SQLiteDatabase;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzcqt implements zzdqu {
    private final zzazo zzdua;

    zzcqt(zzazo zzazo) {
        this.zzdua = zzazo;
    }

    @Override // com.google.android.gms.internal.ads.zzdqu
    public final Object apply(Object obj) {
        return zzcqr.zza((zzazo) ((SQLiteDatabase) obj), (SQLiteDatabase) this.zzdua);
    }
}
