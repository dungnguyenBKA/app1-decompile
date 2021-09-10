package androidx.media;

import android.os.Build;
import android.os.Bundle;
import android.os.RemoteException;
import android.util.Log;
import androidx.media.MediaBrowserServiceCompat;
import java.util.HashMap;
import java.util.Objects;

class h implements Runnable {
    final /* synthetic */ MediaBrowserServiceCompat.j b;
    final /* synthetic */ String c;
    final /* synthetic */ int d;
    final /* synthetic */ int e;
    final /* synthetic */ Bundle f;
    final /* synthetic */ MediaBrowserServiceCompat.i g;

    h(MediaBrowserServiceCompat.i iVar, MediaBrowserServiceCompat.j jVar, String str, int i, int i2, Bundle bundle) {
        this.g = iVar;
        this.b = jVar;
        this.c = str;
        this.d = i;
        this.e = i2;
        this.f = bundle;
    }

    public void run() {
        MediaBrowserServiceCompat.this.c.remove(((MediaBrowserServiceCompat.k) this.b).a());
        MediaBrowserServiceCompat mediaBrowserServiceCompat = MediaBrowserServiceCompat.this;
        String str = this.c;
        int i = this.d;
        int i2 = this.e;
        new HashMap();
        if (Build.VERSION.SDK_INT >= 28) {
            new z(str, i, i2);
        }
        Objects.requireNonNull(MediaBrowserServiceCompat.this);
        MediaBrowserServiceCompat.this.b(this.c, this.e, this.f);
        Objects.requireNonNull(MediaBrowserServiceCompat.this);
        Log.i("MBServiceCompat", "No root for client " + this.c + " from service " + h.class.getName());
        try {
            ((MediaBrowserServiceCompat.k) this.b).b();
        } catch (RemoteException unused) {
            StringBuilder q = ic.q("Calling onConnectFailed() failed. Ignoring. pkg=");
            q.append(this.c);
            Log.w("MBServiceCompat", q.toString());
        }
    }
}
