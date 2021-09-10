package defpackage;

import android.database.sqlite.SQLiteDatabase;
import defpackage.cv;

/* renamed from: lu  reason: default package */
final /* synthetic */ class lu implements cv.b {
    private final cv a;
    private final it b;

    private lu(cv cvVar, it itVar) {
        this.a = cvVar;
        this.b = itVar;
    }

    public static cv.b a(cv cvVar, it itVar) {
        return new lu(cvVar, itVar);
    }

    @Override // defpackage.cv.b
    public Object apply(Object obj) {
        return cv.b0(this.a, this.b, (SQLiteDatabase) obj);
    }
}
