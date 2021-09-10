package defpackage;

import android.database.Cursor;
import android.util.Base64;
import defpackage.cv;
import defpackage.it;
import java.util.ArrayList;

/* renamed from: uu  reason: default package */
final /* synthetic */ class uu implements cv.b {
    private static final uu a = new uu();

    private uu() {
    }

    public static cv.b a() {
        return a;
    }

    @Override // defpackage.cv.b
    public Object apply(Object obj) {
        byte[] bArr;
        Cursor cursor = (Cursor) obj;
        int i = cv.g;
        ArrayList arrayList = new ArrayList();
        while (cursor.moveToNext()) {
            it.a a2 = it.a();
            a2.b(cursor.getString(1));
            a2.d(rv.b(cursor.getInt(2)));
            String string = cursor.getString(3);
            if (string == null) {
                bArr = null;
            } else {
                bArr = Base64.decode(string, 0);
            }
            a2.c(bArr);
            arrayList.add(a2.a());
        }
        return arrayList;
    }
}
