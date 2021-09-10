package androidx.media;

import android.os.IBinder;
import androidx.media.MediaBrowserServiceCompat;

class n implements Runnable {
    final /* synthetic */ MediaBrowserServiceCompat.j b;
    final /* synthetic */ MediaBrowserServiceCompat.i c;

    n(MediaBrowserServiceCompat.i iVar, MediaBrowserServiceCompat.j jVar) {
        this.c = iVar;
        this.b = jVar;
    }

    public void run() {
        IBinder a = ((MediaBrowserServiceCompat.k) this.b).a();
        MediaBrowserServiceCompat.a remove = MediaBrowserServiceCompat.this.c.remove(a);
        if (remove != null) {
            a.unlinkToDeath(remove, 0);
        }
    }
}
