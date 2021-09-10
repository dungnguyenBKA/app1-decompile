package androidx.media;

import android.content.Context;
import android.media.browse.MediaBrowser;
import android.os.Bundle;
import android.service.media.MediaBrowserService;
import android.support.v4.media.session.MediaSessionCompat;
import java.util.List;

class r extends MediaBrowserService {
    final t b;

    r(Context context, t tVar) {
        attachBaseContext(context);
        this.b = tVar;
    }

    public MediaBrowserService.BrowserRoot onGetRoot(String str, int i, Bundle bundle) {
        MediaSessionCompat.ensureClassLoader(bundle);
        if (this.b.f(str, i, bundle == null ? null : new Bundle(bundle)) == null) {
            return null;
        }
        throw null;
    }

    @Override // android.service.media.MediaBrowserService
    public void onLoadChildren(String str, MediaBrowserService.Result<List<MediaBrowser.MediaItem>> result) {
        this.b.c(str, new s<>(result));
    }
}
