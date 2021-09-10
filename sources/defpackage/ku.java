package defpackage;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import defpackage.cv;

/* renamed from: ku  reason: default package */
final /* synthetic */ class ku implements cv.b {
    private final long a;
    private final it b;

    private ku(long j, it itVar) {
        this.a = j;
        this.b = itVar;
    }

    public static cv.b a(long j, it itVar) {
        return new ku(j, itVar);
    }

    @Override // defpackage.cv.b
    public Object apply(Object obj) {
        long j = this.a;
        it itVar = this.b;
        SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj;
        int i = cv.g;
        ContentValues contentValues = new ContentValues();
        contentValues.put("next_request_ms", Long.valueOf(j));
        if (sQLiteDatabase.update("transport_contexts", contentValues, "backend_name = ? and priority = ?", new String[]{itVar.b(), String.valueOf(rv.a(itVar.d()))}) < 1) {
            contentValues.put("backend_name", itVar.b());
            contentValues.put("priority", Integer.valueOf(rv.a(itVar.d())));
            sQLiteDatabase.insert("transport_contexts", null, contentValues);
        }
        return null;
    }
}
