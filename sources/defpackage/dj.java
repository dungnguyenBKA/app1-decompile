package defpackage;

import android.content.Context;
import android.util.Log;
import androidx.core.content.a;
import defpackage.aj;

/* renamed from: dj  reason: default package */
public class dj implements bj {
    public aj a(Context context, aj.a aVar) {
        boolean z = a.a(context, "android.permission.ACCESS_NETWORK_STATE") == 0;
        Log.isLoggable("ConnectivityMonitor", 3);
        if (z) {
            return new cj(context, aVar);
        }
        return new hj();
    }
}
