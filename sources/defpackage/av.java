package defpackage;

import android.database.Cursor;
import defpackage.cv;

/* renamed from: av  reason: default package */
final /* synthetic */ class av implements cv.b {
    private static final av a = new av();

    private av() {
    }

    public static cv.b a() {
        return a;
    }

    @Override // defpackage.cv.b
    public Object apply(Object obj) {
        Cursor cursor = (Cursor) obj;
        int i = cv.g;
        if (cursor.moveToNext()) {
            return Long.valueOf(cursor.getLong(0));
        }
        return 0L;
    }
}
