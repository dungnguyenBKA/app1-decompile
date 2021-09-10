package defpackage;

import android.database.sqlite.SQLiteDatabase;
import defpackage.cv;
import java.util.List;

/* renamed from: mu  reason: default package */
final /* synthetic */ class mu implements cv.b {
    private static final mu a = new mu();

    private mu() {
    }

    public static cv.b a() {
        return a;
    }

    @Override // defpackage.cv.b
    public Object apply(Object obj) {
        int i = cv.g;
        return (List) cv.m0(((SQLiteDatabase) obj).rawQuery("SELECT distinct t._id, t.backend_name, t.priority, t.extras FROM transport_contexts AS t, events AS e WHERE e.context_id = t._id", new String[0]), uu.a());
    }
}
