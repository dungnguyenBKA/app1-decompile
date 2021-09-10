package com.google.android.gms.internal.ads;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.zzbg;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import com.vungle.warren.model.ReportDBAdapter;
import com.vungle.warren.model.VisionDataDBAdapter;

public final class zzcqr extends SQLiteOpenHelper {
    private final Context context;
    private final zzdzv zzgql;

    public zzcqr(Context context2, zzdzv zzdzv) {
        super(context2, "AdMobOfflineBufferedPings.db", (SQLiteDatabase.CursorFactory) null, ((Integer) zzwr.zzqr().zzd(zzabp.zzdad)).intValue());
        this.context = context2;
        this.zzgql = zzdzv;
    }

    private final void zza(zzdqu<SQLiteDatabase, Void> zzdqu) {
        zzdzk.zza(this.zzgql.zze(new zzcqu(this)), new zzcra(this, zzdqu), this.zzgql);
    }

    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE offline_buffered_pings (timestamp INTEGER PRIMARY_KEY, gws_query_id TEXT, url TEXT, event_state INTEGER)");
    }

    public final void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        onUpgrade(sQLiteDatabase, i, i2);
    }

    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS offline_buffered_pings");
    }

    public final void zzb(zzazo zzazo, String str) {
        zza(new zzcqv(this, zzazo, str));
    }

    public final void zzgm(String str) {
        zza(new zzcqy(this, str));
    }

    /* access modifiers changed from: private */
    public static void zza(SQLiteDatabase sQLiteDatabase, zzazo zzazo) {
        sQLiteDatabase.beginTransaction();
        try {
            Cursor query = sQLiteDatabase.query("offline_buffered_pings", new String[]{ReportDBAdapter.ReportColumns.COLUMN_URL}, "event_state = 1", null, null, null, "timestamp ASC", null);
            int count = query.getCount();
            String[] strArr = new String[count];
            int i = 0;
            while (query.moveToNext()) {
                int columnIndex = query.getColumnIndex(ReportDBAdapter.ReportColumns.COLUMN_URL);
                if (columnIndex != -1) {
                    strArr[i] = query.getString(columnIndex);
                }
                i++;
            }
            query.close();
            sQLiteDatabase.delete("offline_buffered_pings", "event_state = ?", new String[]{Integer.toString(1)});
            sQLiteDatabase.setTransactionSuccessful();
            for (int i2 = 0; i2 < count; i2++) {
                zzazo.zzel(strArr[i2]);
            }
        } finally {
            sQLiteDatabase.endTransaction();
        }
    }

    public final void zza(zzazo zzazo) {
        zza(new zzcqt(zzazo));
    }

    /* access modifiers changed from: package-private */
    public final void zza(SQLiteDatabase sQLiteDatabase, zzazo zzazo, String str) {
        this.zzgql.execute(new zzcqw(sQLiteDatabase, str, zzazo));
    }

    static void zza(SQLiteDatabase sQLiteDatabase, String str) {
        sQLiteDatabase.delete("offline_buffered_pings", "gws_query_id = ? AND event_state = ?", new String[]{str, Integer.toString(0)});
    }

    public final void zza(zzcrc zzcrc) {
        zza(new zzcqx(this, zzcrc));
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ Void zza(zzcrc zzcrc, SQLiteDatabase sQLiteDatabase) {
        ContentValues contentValues = new ContentValues();
        contentValues.put(VisionDataDBAdapter.VisionDataColumns.COLUMN_TIMESTAMP, Long.valueOf(zzcrc.timestamp));
        contentValues.put("gws_query_id", zzcrc.zzbvs);
        contentValues.put(ReportDBAdapter.ReportColumns.COLUMN_URL, zzcrc.url);
        contentValues.put("event_state", Integer.valueOf(zzcrc.zzgsb - 1));
        sQLiteDatabase.insert("offline_buffered_pings", null, contentValues);
        zzr.zzkr();
        zzbg zzbd = zzj.zzbd(this.context);
        if (zzbd != null) {
            try {
                zzbd.zzap(aw.Q(this.context));
            } catch (RemoteException e) {
                zzd.zza("Failed to schedule offline ping sender.", e);
            }
        }
        return null;
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ Void zza(zzazo zzazo, String str, SQLiteDatabase sQLiteDatabase) {
        zza(sQLiteDatabase, zzazo, str);
        return null;
    }

    static final /* synthetic */ void zza(SQLiteDatabase sQLiteDatabase, String str, zzazo zzazo) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("event_state", (Integer) 1);
        sQLiteDatabase.update("offline_buffered_pings", contentValues, "gws_query_id = ?", new String[]{str});
        zza(sQLiteDatabase, zzazo);
    }
}
