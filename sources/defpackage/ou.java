package defpackage;

import android.database.Cursor;
import defpackage.cv;
import java.util.List;

/* access modifiers changed from: package-private */
/* renamed from: ou  reason: default package */
public final /* synthetic */ class ou implements cv.b {
    private final cv a;
    private final List b;
    private final it c;

    private ou(cv cvVar, List list, it itVar) {
        this.a = cvVar;
        this.b = list;
        this.c = itVar;
    }

    public static cv.b a(cv cvVar, List list, it itVar) {
        return new ou(cvVar, list, itVar);
    }

    @Override // defpackage.cv.b
    public Object apply(Object obj) {
        cv.i0(this.a, this.b, this.c, (Cursor) obj);
        return null;
    }
}
