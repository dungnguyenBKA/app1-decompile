package androidx.media;

import android.os.Bundle;
import android.support.v4.os.ResultReceiver;
import androidx.media.MediaBrowserServiceCompat;

class g extends MediaBrowserServiceCompat.h<Bundle> {
    final /* synthetic */ ResultReceiver e;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    g(MediaBrowserServiceCompat mediaBrowserServiceCompat, Object obj, ResultReceiver resultReceiver) {
        super(obj);
        this.e = resultReceiver;
    }

    /* access modifiers changed from: package-private */
    @Override // androidx.media.MediaBrowserServiceCompat.h
    public void c(Bundle bundle) {
        this.e.send(-1, bundle);
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    /* access modifiers changed from: package-private */
    @Override // androidx.media.MediaBrowserServiceCompat.h
    public void d(Bundle bundle) {
        this.e.send(0, bundle);
    }
}
