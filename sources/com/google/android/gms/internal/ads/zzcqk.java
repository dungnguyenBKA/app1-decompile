package com.google.android.gms.internal.ads;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.ads.zzug;
import com.vungle.warren.model.VisionDataDBAdapter;
import java.util.ArrayList;

final /* synthetic */ class zzcqk implements zzdqu {
    private final boolean zzekn;
    private final zzcqh zzgrk;
    private final ArrayList zzgrl;
    private final zzug.zzm zzgrm;
    private final zzug.zzo.zzc zzgrn;

    zzcqk(zzcqh zzcqh, boolean z, ArrayList arrayList, zzug.zzm zzm, zzug.zzo.zzc zzc) {
        this.zzgrk = zzcqh;
        this.zzekn = z;
        this.zzgrl = arrayList;
        this.zzgrm = zzm;
        this.zzgrn = zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzdqu
    public final Object apply(Object obj) {
        zzcqh zzcqh = this.zzgrk;
        boolean z = this.zzekn;
        SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj;
        byte[] bArr = zzcqh.zzgre.zza(z, this.zzgrl, this.zzgrm, this.zzgrn);
        ContentValues contentValues = new ContentValues();
        contentValues.put(VisionDataDBAdapter.VisionDataColumns.COLUMN_TIMESTAMP, Long.valueOf(zzr.zzky().a()));
        contentValues.put("serialized_proto_data", bArr);
        sQLiteDatabase.insert("offline_signal_contents", null, contentValues);
        sQLiteDatabase.execSQL(String.format("UPDATE offline_signal_statistics SET value = value+1 WHERE statistic_name = '%s'", "total_requests"));
        if (!z) {
            sQLiteDatabase.execSQL(String.format("UPDATE offline_signal_statistics SET value = value+1 WHERE statistic_name = '%s'", "failed_requests"));
        }
        return null;
    }
}
