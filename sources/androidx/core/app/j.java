package androidx.core.app;

import android.app.Notification;
import android.os.Bundle;
import android.util.SparseArray;
import java.util.List;

/* access modifiers changed from: package-private */
public class j {
    private static final Object a = new Object();

    public static SparseArray<Bundle> a(List<Bundle> list) {
        int size = list.size();
        SparseArray<Bundle> sparseArray = null;
        for (int i = 0; i < size; i++) {
            Bundle bundle = list.get(i);
            if (bundle != null) {
                if (sparseArray == null) {
                    sparseArray = new SparseArray<>();
                }
                sparseArray.put(i, bundle);
            }
        }
        return sparseArray;
    }

    static Bundle b(e eVar) {
        Bundle bundle;
        Bundle bundle2 = new Bundle();
        bundle2.putInt("icon", eVar.i);
        bundle2.putCharSequence("title", eVar.j);
        bundle2.putParcelable("actionIntent", eVar.k);
        if (eVar.a != null) {
            bundle = new Bundle(eVar.a);
        } else {
            bundle = new Bundle();
        }
        bundle.putBoolean("android.support.allowGeneratedReplies", eVar.a());
        bundle2.putBundle("extras", bundle);
        bundle2.putParcelableArray("remoteInputs", c(eVar.d()));
        bundle2.putBoolean("showsUserInterface", eVar.f);
        bundle2.putInt("semanticAction", eVar.e());
        return bundle2;
    }

    private static Bundle[] c(l[] lVarArr) {
        if (lVarArr == null) {
            return null;
        }
        Bundle[] bundleArr = new Bundle[lVarArr.length];
        if (lVarArr.length <= 0) {
            return bundleArr;
        }
        l lVar = lVarArr[0];
        new Bundle();
        throw null;
    }

    public static Bundle d(Notification.Builder builder, e eVar) {
        builder.addAction(eVar.i, eVar.j, eVar.k);
        Bundle bundle = new Bundle(eVar.a);
        if (eVar.d() != null) {
            bundle.putParcelableArray("android.support.remoteInputs", c(eVar.d()));
        }
        if (eVar.b() != null) {
            bundle.putParcelableArray("android.support.dataRemoteInputs", c(eVar.b()));
        }
        bundle.putBoolean("android.support.allowGeneratedReplies", eVar.a());
        return bundle;
    }
}
