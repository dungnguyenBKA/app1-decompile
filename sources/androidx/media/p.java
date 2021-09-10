package androidx.media;

import android.os.Bundle;
import android.support.v4.os.ResultReceiver;
import android.util.Log;
import androidx.media.MediaBrowserServiceCompat;

class p implements Runnable {
    final /* synthetic */ MediaBrowserServiceCompat.j b;
    final /* synthetic */ String c;
    final /* synthetic */ Bundle d;
    final /* synthetic */ ResultReceiver e;
    final /* synthetic */ MediaBrowserServiceCompat.i f;

    p(MediaBrowserServiceCompat.i iVar, MediaBrowserServiceCompat.j jVar, String str, Bundle bundle, ResultReceiver resultReceiver) {
        this.f = iVar;
        this.b = jVar;
        this.c = str;
        this.d = bundle;
        this.e = resultReceiver;
    }

    public void run() {
        if (MediaBrowserServiceCompat.this.c.get(((MediaBrowserServiceCompat.k) this.b).a()) == null) {
            StringBuilder q = ic.q("sendCustomAction for callback that isn't registered action=");
            q.append(this.c);
            q.append(", extras=");
            q.append(this.d);
            Log.w("MBServiceCompat", q.toString());
            return;
        }
        MediaBrowserServiceCompat mediaBrowserServiceCompat = MediaBrowserServiceCompat.this;
        String str = this.c;
        Bundle bundle = this.d;
        g gVar = new g(mediaBrowserServiceCompat, str, this.e);
        mediaBrowserServiceCompat.a(gVar);
        if (!gVar.b()) {
            throw new IllegalStateException("onCustomAction must call detach() or sendResult() or sendError() before returning for action=" + str + " extras=" + bundle);
        }
    }
}
