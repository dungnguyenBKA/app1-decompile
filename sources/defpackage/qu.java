package defpackage;

import android.database.Cursor;
import defpackage.cv;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/* access modifiers changed from: package-private */
/* renamed from: qu  reason: default package */
public final /* synthetic */ class qu implements cv.b {
    private final Map a;

    private qu(Map map) {
        this.a = map;
    }

    public static cv.b a(Map map) {
        return new qu(map);
    }

    @Override // defpackage.cv.b
    public Object apply(Object obj) {
        Map map = this.a;
        Cursor cursor = (Cursor) obj;
        int i = cv.g;
        while (cursor.moveToNext()) {
            long j = cursor.getLong(0);
            Set set = (Set) map.get(Long.valueOf(j));
            if (set == null) {
                set = new HashSet();
                map.put(Long.valueOf(j), set);
            }
            set.add(new cv.c(cursor.getString(1), cursor.getString(2), null));
        }
        return null;
    }
}
