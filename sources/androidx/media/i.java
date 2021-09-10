package androidx.media;

import androidx.media.MediaBrowserServiceCompat;

class i implements Runnable {
    final /* synthetic */ MediaBrowserServiceCompat.j b;
    final /* synthetic */ MediaBrowserServiceCompat.i c;

    i(MediaBrowserServiceCompat.i iVar, MediaBrowserServiceCompat.j jVar) {
        this.c = iVar;
        this.b = jVar;
    }

    public void run() {
        MediaBrowserServiceCompat.a remove = MediaBrowserServiceCompat.this.c.remove(((MediaBrowserServiceCompat.k) this.b).a());
        if (remove != null) {
            ((MediaBrowserServiceCompat.k) remove.b).a().unlinkToDeath(remove, 0);
        }
    }
}
