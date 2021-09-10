package defpackage;

import android.database.sqlite.SQLiteDatabase;
import defpackage.cv;

/* renamed from: ru  reason: default package */
final /* synthetic */ class ru implements cv.d {
    private final SQLiteDatabase a;

    private ru(SQLiteDatabase sQLiteDatabase) {
        this.a = sQLiteDatabase;
    }

    public static cv.d b(SQLiteDatabase sQLiteDatabase) {
        return new ru(sQLiteDatabase);
    }

    @Override // defpackage.cv.d
    public Object a() {
        SQLiteDatabase sQLiteDatabase = this.a;
        int i = cv.g;
        sQLiteDatabase.beginTransaction();
        return null;
    }
}
