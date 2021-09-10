package defpackage;

import android.database.sqlite.SQLiteDatabase;
import defpackage.cv;

/* renamed from: zu  reason: default package */
final /* synthetic */ class zu implements cv.b {
    private final String a;

    private zu(String str) {
        this.a = str;
    }

    public static cv.b a(String str) {
        return new zu(str);
    }

    @Override // defpackage.cv.b
    public Object apply(Object obj) {
        String str = this.a;
        SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj;
        int i = cv.g;
        sQLiteDatabase.compileStatement(str).execute();
        sQLiteDatabase.compileStatement("DELETE FROM events WHERE num_attempts >= 16").execute();
        return null;
    }
}
