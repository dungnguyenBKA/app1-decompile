package defpackage;

import android.database.Cursor;
import defpackage.cv;

/* access modifiers changed from: package-private */
/* renamed from: yu  reason: default package */
public final /* synthetic */ class yu implements cv.b {
    private static final yu a = new yu();

    private yu() {
    }

    public static cv.b a() {
        return a;
    }

    @Override // defpackage.cv.b
    public Object apply(Object obj) {
        Cursor cursor = (Cursor) obj;
        int i = cv.g;
        if (!cursor.moveToNext()) {
            return null;
        }
        return Long.valueOf(cursor.getLong(0));
    }
}
