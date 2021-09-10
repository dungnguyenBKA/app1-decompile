package defpackage;

import android.database.sqlite.SQLiteDatabase;
import defpackage.iv;

/* renamed from: fv  reason: default package */
final /* synthetic */ class fv implements iv.a {
    private static final fv a = new fv();

    private fv() {
    }

    public static iv.a b() {
        return a;
    }

    @Override // defpackage.iv.a
    public void a(SQLiteDatabase sQLiteDatabase) {
        int i = iv.i;
        sQLiteDatabase.execSQL("ALTER TABLE transport_contexts ADD COLUMN extras BLOB");
        sQLiteDatabase.execSQL("CREATE UNIQUE INDEX contexts_backend_priority_extras on transport_contexts(backend_name, priority, extras)");
        sQLiteDatabase.execSQL("DROP INDEX contexts_backend_priority");
    }
}
