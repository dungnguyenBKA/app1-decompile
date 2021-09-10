package androidx.viewpager.widget;

import android.database.DataSetObservable;
import android.database.DataSetObserver;

public abstract class a {
    private final DataSetObservable a = new DataSetObservable();

    public abstract int a();

    public void b(DataSetObserver dataSetObserver) {
        this.a.unregisterObserver(dataSetObserver);
    }
}
