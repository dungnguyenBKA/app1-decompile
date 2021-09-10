package defpackage;

import android.database.sqlite.SQLiteDatabase;
import defpackage.cv;

/* renamed from: nu  reason: default package */
final /* synthetic */ class nu implements cv.b {
    private final long a;

    private nu(long j) {
        this.a = j;
    }

    public static cv.b a(long j) {
        return new nu(j);
    }

    @Override // defpackage.cv.b
    public Object apply(Object obj) {
        long j = this.a;
        int i = cv.g;
        return Integer.valueOf(((SQLiteDatabase) obj).delete("events", "timestamp_ms < ?", new String[]{String.valueOf(j)}));
    }
}
