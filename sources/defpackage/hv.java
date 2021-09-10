package defpackage;

import android.database.sqlite.SQLiteDatabase;
import defpackage.iv;

/* renamed from: hv  reason: default package */
final /* synthetic */ class hv implements iv.a {
    private static final hv a = new hv();

    private hv() {
    }

    public static iv.a b() {
        return a;
    }

    @Override // defpackage.iv.a
    public void a(SQLiteDatabase sQLiteDatabase) {
        int i = iv.i;
        sQLiteDatabase.execSQL("ALTER TABLE events ADD COLUMN inline BOOLEAN NOT NULL DEFAULT 1");
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS event_payloads");
        sQLiteDatabase.execSQL("CREATE TABLE event_payloads (sequence_num INTEGER NOT NULL, event_id INTEGER NOT NULL, bytes BLOB NOT NULL,FOREIGN KEY (event_id) REFERENCES events(_id) ON DELETE CASCADE,PRIMARY KEY (sequence_num, event_id))");
    }
}
