package defpackage;

import android.database.sqlite.SQLiteDatabase;
import defpackage.iv;

/* renamed from: gv  reason: default package */
final /* synthetic */ class gv implements iv.a {
    private static final gv a = new gv();

    private gv() {
    }

    public static iv.a b() {
        return a;
    }

    @Override // defpackage.iv.a
    public void a(SQLiteDatabase sQLiteDatabase) {
        int i = iv.i;
        sQLiteDatabase.execSQL("ALTER TABLE events ADD COLUMN payload_encoding TEXT");
    }
}
