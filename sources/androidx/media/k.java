package androidx.media;

import android.os.Bundle;
import android.os.IBinder;
import android.util.Log;
import androidx.media.MediaBrowserServiceCompat;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

class k implements Runnable {
    final /* synthetic */ MediaBrowserServiceCompat.j b;
    final /* synthetic */ String c;
    final /* synthetic */ IBinder d;
    final /* synthetic */ MediaBrowserServiceCompat.i e;

    k(MediaBrowserServiceCompat.i iVar, MediaBrowserServiceCompat.j jVar, String str, IBinder iBinder) {
        this.e = iVar;
        this.b = jVar;
        this.c = str;
        this.d = iBinder;
    }

    public void run() {
        MediaBrowserServiceCompat.a aVar = MediaBrowserServiceCompat.this.c.get(((MediaBrowserServiceCompat.k) this.b).a());
        if (aVar == null) {
            StringBuilder q = ic.q("removeSubscription for callback that isn't registered id=");
            q.append(this.c);
            Log.w("MBServiceCompat", q.toString());
            return;
        }
        MediaBrowserServiceCompat mediaBrowserServiceCompat = MediaBrowserServiceCompat.this;
        String str = this.c;
        IBinder iBinder = this.d;
        Objects.requireNonNull(mediaBrowserServiceCompat);
        boolean z = false;
        if (iBinder == null) {
            try {
                if (aVar.c.remove(str) != null) {
                    z = true;
                }
            } catch (Throwable th) {
                mediaBrowserServiceCompat.h();
                throw th;
            }
        } else {
            List<j2<IBinder, Bundle>> list = aVar.c.get(str);
            if (list != null) {
                Iterator<j2<IBinder, Bundle>> it = list.iterator();
                while (it.hasNext()) {
                    if (iBinder == it.next().a) {
                        it.remove();
                        z = true;
                    }
                }
                if (list.size() == 0) {
                    aVar.c.remove(str);
                }
            }
        }
        mediaBrowserServiceCompat.h();
        if (!z) {
            StringBuilder q2 = ic.q("removeSubscription called for ");
            q2.append(this.c);
            q2.append(" which is not subscribed");
            Log.w("MBServiceCompat", q2.toString());
        }
    }
}
