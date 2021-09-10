package defpackage;

import android.database.Cursor;
import defpackage.cv;

/* access modifiers changed from: package-private */
/* renamed from: vu  reason: default package */
public final /* synthetic */ class vu implements cv.b {
    private static final vu a = new vu();

    private vu() {
    }

    public static cv.b a() {
        return a;
    }

    @Override // defpackage.cv.b
    public Object apply(Object obj) {
        return Boolean.valueOf(((Cursor) obj).moveToNext());
    }
}
