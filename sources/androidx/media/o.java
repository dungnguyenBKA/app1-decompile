package androidx.media;

import android.os.Bundle;
import android.support.v4.os.ResultReceiver;
import android.util.Log;
import androidx.media.MediaBrowserServiceCompat;

class o implements Runnable {
    final /* synthetic */ MediaBrowserServiceCompat.j b;
    final /* synthetic */ String c;
    final /* synthetic */ Bundle d;
    final /* synthetic */ ResultReceiver e;
    final /* synthetic */ MediaBrowserServiceCompat.i f;

    o(MediaBrowserServiceCompat.i iVar, MediaBrowserServiceCompat.j jVar, String str, Bundle bundle, ResultReceiver resultReceiver) {
        this.f = iVar;
        this.b = jVar;
        this.c = str;
        this.d = bundle;
        this.e = resultReceiver;
    }

    public void run() {
        if (MediaBrowserServiceCompat.this.c.get(((MediaBrowserServiceCompat.k) this.b).a()) == null) {
            StringBuilder q = ic.q("search for callback that isn't registered query=");
            q.append(this.c);
            Log.w("MBServiceCompat", q.toString());
            return;
        }
        MediaBrowserServiceCompat mediaBrowserServiceCompat = MediaBrowserServiceCompat.this;
        String str = this.c;
        f fVar = new f(mediaBrowserServiceCompat, str, this.e);
        mediaBrowserServiceCompat.f(fVar);
        if (!fVar.b()) {
            throw new IllegalStateException(ic.i("onSearch must call detach() or sendResult() before returning for query=", str));
        }
    }
}
