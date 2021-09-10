package defpackage;

import android.database.sqlite.SQLiteDatabase;
import defpackage.cv;

/* renamed from: xu  reason: default package */
final /* synthetic */ class xu implements cv.b {
    private final cv a;
    private final it b;
    private final et c;

    private xu(cv cvVar, it itVar, et etVar) {
        this.a = cvVar;
        this.b = itVar;
        this.c = etVar;
    }

    public static cv.b a(cv cvVar, it itVar, et etVar) {
        return new xu(cvVar, itVar, etVar);
    }

    @Override // defpackage.cv.b
    public Object apply(Object obj) {
        return cv.j0(this.a, this.b, this.c, (SQLiteDatabase) obj);
    }
}
