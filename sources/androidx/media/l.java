package androidx.media;

import android.support.v4.os.ResultReceiver;
import android.util.Log;
import androidx.media.MediaBrowserServiceCompat;

class l implements Runnable {
    final /* synthetic */ MediaBrowserServiceCompat.j b;
    final /* synthetic */ String c;
    final /* synthetic */ ResultReceiver d;
    final /* synthetic */ MediaBrowserServiceCompat.i e;

    l(MediaBrowserServiceCompat.i iVar, MediaBrowserServiceCompat.j jVar, String str, ResultReceiver resultReceiver) {
        this.e = iVar;
        this.b = jVar;
        this.c = str;
        this.d = resultReceiver;
    }

    public void run() {
        if (MediaBrowserServiceCompat.this.c.get(((MediaBrowserServiceCompat.k) this.b).a()) == null) {
            StringBuilder q = ic.q("getMediaItem for callback that isn't registered id=");
            q.append(this.c);
            Log.w("MBServiceCompat", q.toString());
            return;
        }
        MediaBrowserServiceCompat mediaBrowserServiceCompat = MediaBrowserServiceCompat.this;
        String str = this.c;
        e eVar = new e(mediaBrowserServiceCompat, str, this.d);
        mediaBrowserServiceCompat.e(eVar);
        if (!eVar.b()) {
            throw new IllegalStateException(ic.i("onLoadItem must call detach() or sendResult() before returning for id=", str));
        }
    }
}
