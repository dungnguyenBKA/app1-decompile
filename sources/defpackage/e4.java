package defpackage;

import android.database.AbstractWindowedCursor;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.os.Build;
import androidx.room.g;

/* renamed from: e4  reason: default package */
public class e4 {
    public static Cursor a(g gVar, k4 k4Var, boolean z) {
        Cursor n = gVar.n(k4Var);
        if (z && (n instanceof AbstractWindowedCursor)) {
            AbstractWindowedCursor abstractWindowedCursor = (AbstractWindowedCursor) n;
            int count = abstractWindowedCursor.getCount();
            int numRows = abstractWindowedCursor.hasWindow() ? abstractWindowedCursor.getWindow().getNumRows() : count;
            if (Build.VERSION.SDK_INT < 23 || numRows < count) {
                try {
                    MatrixCursor matrixCursor = new MatrixCursor(abstractWindowedCursor.getColumnNames(), abstractWindowedCursor.getCount());
                    while (abstractWindowedCursor.moveToNext()) {
                        Object[] objArr = new Object[abstractWindowedCursor.getColumnCount()];
                        for (int i = 0; i < abstractWindowedCursor.getColumnCount(); i++) {
                            int type = abstractWindowedCursor.getType(i);
                            if (type == 0) {
                                objArr[i] = null;
                            } else if (type == 1) {
                                objArr[i] = Long.valueOf(abstractWindowedCursor.getLong(i));
                            } else if (type == 2) {
                                objArr[i] = Double.valueOf(abstractWindowedCursor.getDouble(i));
                            } else if (type == 3) {
                                objArr[i] = abstractWindowedCursor.getString(i);
                            } else if (type == 4) {
                                objArr[i] = abstractWindowedCursor.getBlob(i);
                            } else {
                                throw new IllegalStateException();
                            }
                        }
                        matrixCursor.addRow(objArr);
                    }
                    return matrixCursor;
                } finally {
                    abstractWindowedCursor.close();
                }
            }
        }
        return n;
    }
}
