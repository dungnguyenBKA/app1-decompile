package androidx.media;

import android.os.Bundle;
import android.support.v4.media.MediaBrowserCompat;
import android.support.v4.os.ResultReceiver;
import androidx.media.MediaBrowserServiceCompat;

class e extends MediaBrowserServiceCompat.h<MediaBrowserCompat.MediaItem> {
    final /* synthetic */ ResultReceiver e;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    e(MediaBrowserServiceCompat mediaBrowserServiceCompat, Object obj, ResultReceiver resultReceiver) {
        super(obj);
        this.e = resultReceiver;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    /* access modifiers changed from: package-private */
    @Override // androidx.media.MediaBrowserServiceCompat.h
    public void d(MediaBrowserCompat.MediaItem mediaItem) {
        MediaBrowserCompat.MediaItem mediaItem2 = mediaItem;
        if ((a() & 2) != 0) {
            this.e.send(-1, null);
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putParcelable("media_item", mediaItem2);
        this.e.send(0, bundle);
    }
}
