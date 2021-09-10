package androidx.media;

import android.os.Bundle;
import android.os.IBinder;
import android.util.Log;
import androidx.core.app.b;
import androidx.media.MediaBrowserServiceCompat;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

class j implements Runnable {
    final /* synthetic */ MediaBrowserServiceCompat.j b;
    final /* synthetic */ String c;
    final /* synthetic */ IBinder d;
    final /* synthetic */ Bundle e;
    final /* synthetic */ MediaBrowserServiceCompat.i f;

    j(MediaBrowserServiceCompat.i iVar, MediaBrowserServiceCompat.j jVar, String str, IBinder iBinder, Bundle bundle) {
        this.f = iVar;
        this.b = jVar;
        this.c = str;
        this.d = iBinder;
        this.e = bundle;
    }

    public void run() {
        MediaBrowserServiceCompat.a aVar = MediaBrowserServiceCompat.this.c.get(((MediaBrowserServiceCompat.k) this.b).a());
        if (aVar == null) {
            StringBuilder q = ic.q("addSubscription for callback that isn't registered id=");
            q.append(this.c);
            Log.w("MBServiceCompat", q.toString());
            return;
        }
        MediaBrowserServiceCompat mediaBrowserServiceCompat = MediaBrowserServiceCompat.this;
        String str = this.c;
        IBinder iBinder = this.d;
        Bundle bundle = this.e;
        Objects.requireNonNull(mediaBrowserServiceCompat);
        List<j2<IBinder, Bundle>> list = aVar.c.get(str);
        if (list == null) {
            list = new ArrayList<>();
        }
        for (j2<IBinder, Bundle> j2Var : list) {
            if (iBinder == j2Var.a && b.d(bundle, j2Var.b)) {
                return;
            }
        }
        list.add(new j2<>(iBinder, bundle));
        aVar.c.put(str, list);
        d dVar = new d(mediaBrowserServiceCompat, str, aVar, str, bundle, null);
        if (bundle == null) {
            mediaBrowserServiceCompat.c(str, dVar);
        } else {
            mediaBrowserServiceCompat.d(str, dVar);
        }
        if (dVar.b()) {
            mediaBrowserServiceCompat.g();
            return;
        }
        throw new IllegalStateException(ic.n(ic.q("onLoadChildren must call detach() or sendResult() before returning for package="), aVar.a, " id=", str));
    }
}
