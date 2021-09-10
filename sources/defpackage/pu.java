package defpackage;

import android.database.Cursor;
import defpackage.cv;
import java.util.ArrayList;

/* access modifiers changed from: package-private */
/* renamed from: pu  reason: default package */
public final /* synthetic */ class pu implements cv.b {
    private static final pu a = new pu();

    private pu() {
    }

    public static cv.b a() {
        return a;
    }

    @Override // defpackage.cv.b
    public Object apply(Object obj) {
        Cursor cursor = (Cursor) obj;
        int i = cv.g;
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        while (cursor.moveToNext()) {
            byte[] blob = cursor.getBlob(0);
            arrayList.add(blob);
            i2 += blob.length;
        }
        byte[] bArr = new byte[i2];
        int i3 = 0;
        for (int i4 = 0; i4 < arrayList.size(); i4++) {
            byte[] bArr2 = (byte[]) arrayList.get(i4);
            System.arraycopy(bArr2, 0, bArr, i3, bArr2.length);
            i3 += bArr2.length;
        }
        return bArr;
    }
}
