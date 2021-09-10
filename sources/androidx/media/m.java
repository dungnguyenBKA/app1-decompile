package androidx.media;

import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import androidx.media.MediaBrowserServiceCompat;

class m implements Runnable {
    final /* synthetic */ MediaBrowserServiceCompat.j b;
    final /* synthetic */ String c;
    final /* synthetic */ int d;
    final /* synthetic */ int e;
    final /* synthetic */ Bundle f;
    final /* synthetic */ MediaBrowserServiceCompat.i g;

    m(MediaBrowserServiceCompat.i iVar, MediaBrowserServiceCompat.j jVar, String str, int i, int i2, Bundle bundle) {
        this.g = iVar;
        this.b = jVar;
        this.c = str;
        this.d = i;
        this.e = i2;
        this.f = bundle;
    }

    public void run() {
        IBinder a = ((MediaBrowserServiceCompat.k) this.b).a();
        MediaBrowserServiceCompat.this.c.remove(a);
        MediaBrowserServiceCompat.a aVar = new MediaBrowserServiceCompat.a(this.c, this.d, this.e, this.f, this.b);
        MediaBrowserServiceCompat.this.c.put(a, aVar);
        try {
            a.linkToDeath(aVar, 0);
        } catch (RemoteException unused) {
            Log.w("MBServiceCompat", "IBinder is already dead.");
        }
    }
}
