package defpackage;

import android.database.sqlite.SQLiteDatabase;
import defpackage.cv;

/* renamed from: bv  reason: default package */
final /* synthetic */ class bv implements cv.b {
    private final cv a;
    private final it b;

    private bv(cv cvVar, it itVar) {
        this.a = cvVar;
        this.b = itVar;
    }

    public static cv.b a(cv cvVar, it itVar) {
        return new bv(cvVar, itVar);
    }

    @Override // defpackage.cv.b
    public Object apply(Object obj) {
        return cv.V(this.a, this.b, (SQLiteDatabase) obj);
    }
}
