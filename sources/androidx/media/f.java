package androidx.media;

import android.os.Bundle;
import android.os.Parcelable;
import android.support.v4.media.MediaBrowserCompat;
import android.support.v4.os.ResultReceiver;
import androidx.media.MediaBrowserServiceCompat;
import java.util.List;

class f extends MediaBrowserServiceCompat.h<List<MediaBrowserCompat.MediaItem>> {
    final /* synthetic */ ResultReceiver e;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    f(MediaBrowserServiceCompat mediaBrowserServiceCompat, Object obj, ResultReceiver resultReceiver) {
        super(obj);
        this.e = resultReceiver;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    /* access modifiers changed from: package-private */
    @Override // androidx.media.MediaBrowserServiceCompat.h
    public void d(List<MediaBrowserCompat.MediaItem> list) {
        List<MediaBrowserCompat.MediaItem> list2 = list;
        if ((a() & 4) != 0 || list2 == null) {
            this.e.send(-1, null);
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putParcelableArray("search_results", (Parcelable[]) list2.toArray(new MediaBrowserCompat.MediaItem[0]));
        this.e.send(0, bundle);
    }
}
