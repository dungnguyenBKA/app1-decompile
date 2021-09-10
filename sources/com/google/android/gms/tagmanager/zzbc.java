package com.google.android.gms.tagmanager;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.os.Build;
import android.util.Log;
import java.io.File;

/* access modifiers changed from: package-private */
public final class zzbc extends SQLiteOpenHelper {
    final /* synthetic */ zzbe zza;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    zzbc(zzbe zzbe, Context context) {
        super(context, "google_tagmanager.db", (SQLiteDatabase.CursorFactory) null, 1);
        this.zza = zzbe;
    }

    public final SQLiteDatabase getWritableDatabase() {
        SQLiteDatabase sQLiteDatabase;
        try {
            sQLiteDatabase = super.getWritableDatabase();
        } catch (SQLiteException unused) {
            this.zza.zzc.getDatabasePath("google_tagmanager.db").delete();
            sQLiteDatabase = null;
        }
        return sQLiteDatabase == null ? super.getWritableDatabase() : sQLiteDatabase;
    }

    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        String path = sQLiteDatabase.getPath();
        try {
            if (Integer.parseInt(Build.VERSION.SDK) >= 9) {
                File file = new File(path);
                file.setReadable(false, false);
                file.setWritable(false, false);
                file.setReadable(true, true);
                file.setWritable(true, true);
            }
        } catch (NumberFormatException unused) {
            String valueOf = String.valueOf(Build.VERSION.SDK);
            Log.e("GoogleTagManager", valueOf.length() != 0 ? "Invalid version number: ".concat(valueOf) : new String("Invalid version number: "));
        }
    }

    public final void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
    }

    /* JADX INFO: finally extract failed */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x008e  */
    /* JADX WARNING: Removed duplicated region for block: B:46:0x009b  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void onOpen(android.database.sqlite.SQLiteDatabase r13) {
        /*
        // Method dump skipped, instructions count: 161
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.tagmanager.zzbc.onOpen(android.database.sqlite.SQLiteDatabase):void");
    }

    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
    }
}
