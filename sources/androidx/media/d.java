package androidx.media;

import android.os.Bundle;
import android.os.RemoteException;
import android.support.v4.media.MediaBrowserCompat;
import android.util.Log;
import androidx.media.MediaBrowserServiceCompat;
import java.util.Collections;
import java.util.List;
import java.util.Objects;

class d extends MediaBrowserServiceCompat.h<List<MediaBrowserCompat.MediaItem>> {
    final /* synthetic */ MediaBrowserServiceCompat.a e;
    final /* synthetic */ String f;
    final /* synthetic */ Bundle g;
    final /* synthetic */ Bundle h;
    final /* synthetic */ MediaBrowserServiceCompat i;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    d(MediaBrowserServiceCompat mediaBrowserServiceCompat, Object obj, MediaBrowserServiceCompat.a aVar, String str, Bundle bundle, Bundle bundle2) {
        super(obj);
        this.i = mediaBrowserServiceCompat;
        this.e = aVar;
        this.f = str;
        this.g = bundle;
        this.h = bundle2;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    /* access modifiers changed from: package-private */
    @Override // androidx.media.MediaBrowserServiceCompat.h
    public void d(List<MediaBrowserCompat.MediaItem> list) {
        List<MediaBrowserCompat.MediaItem> list2 = list;
        MediaBrowserServiceCompat.a aVar = this.i.c.get(((MediaBrowserServiceCompat.k) this.e.b).a());
        MediaBrowserServiceCompat.a aVar2 = this.e;
        if (aVar == aVar2) {
            if ((a() & 1) != 0) {
                MediaBrowserServiceCompat mediaBrowserServiceCompat = this.i;
                Bundle bundle = this.g;
                Objects.requireNonNull(mediaBrowserServiceCompat);
                if (list2 == null) {
                    list2 = null;
                } else {
                    int i2 = bundle.getInt(MediaBrowserCompat.EXTRA_PAGE, -1);
                    int i3 = bundle.getInt(MediaBrowserCompat.EXTRA_PAGE_SIZE, -1);
                    if (!(i2 == -1 && i3 == -1)) {
                        int i4 = i3 * i2;
                        int i5 = i4 + i3;
                        if (i2 < 0 || i3 < 1 || i4 >= list2.size()) {
                            list2 = Collections.emptyList();
                        } else {
                            if (i5 > list2.size()) {
                                i5 = list2.size();
                            }
                            list2 = list2.subList(i4, i5);
                        }
                    }
                }
            }
            try {
                ((MediaBrowserServiceCompat.k) this.e.b).c(this.f, list2, this.g, this.h);
            } catch (RemoteException unused) {
                StringBuilder q = ic.q("Calling onLoadChildren() failed for id=");
                q.append(this.f);
                q.append(" package=");
                q.append(this.e.a);
                Log.w("MBServiceCompat", q.toString());
            }
        } else if (MediaBrowserServiceCompat.e) {
            String str = aVar2.a;
        }
    }
}
