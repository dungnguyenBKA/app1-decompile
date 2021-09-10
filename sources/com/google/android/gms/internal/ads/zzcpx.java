package com.google.android.gms.internal.ads;

import android.database.sqlite.SQLiteDatabase;

/* access modifiers changed from: package-private */
public final class zzcpx implements zzdzl<SQLiteDatabase> {
    private final /* synthetic */ zzdqu zzgqm;

    zzcpx(zzcpv zzcpv, zzdqu zzdqu) {
        this.zzgqm = zzdqu;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // com.google.android.gms.internal.ads.zzdzl
    public final /* synthetic */ void onSuccess(SQLiteDatabase sQLiteDatabase) {
        try {
            this.zzgqm.apply(sQLiteDatabase);
        } catch (Exception e) {
            String valueOf = String.valueOf(e.getMessage());
            zzazk.zzev(valueOf.length() != 0 ? "Error executing function on offline signal database: ".concat(valueOf) : new String("Error executing function on offline signal database: "));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdzl
    public final void zzb(Throwable th) {
        String valueOf = String.valueOf(th.getMessage());
        zzazk.zzev(valueOf.length() != 0 ? "Failed to get offline signal database: ".concat(valueOf) : new String("Failed to get offline signal database: "));
    }
}
