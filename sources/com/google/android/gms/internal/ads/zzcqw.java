package com.google.android.gms.internal.ads;

import android.database.sqlite.SQLiteDatabase;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzcqw implements Runnable {
    private final String zzdjf;
    private final SQLiteDatabase zzgry;
    private final zzazo zzgrz;

    zzcqw(SQLiteDatabase sQLiteDatabase, String str, zzazo zzazo) {
        this.zzgry = sQLiteDatabase;
        this.zzdjf = str;
        this.zzgrz = zzazo;
    }

    public final void run() {
        zzcqr.zza(this.zzgry, this.zzdjf, this.zzgrz);
    }
}
