package androidx.media;

import android.content.Context;
import android.media.browse.MediaBrowser;
import android.service.media.MediaBrowserService;

class u extends r {
    u(Context context, v vVar) {
        super(context, vVar);
    }

    @Override // android.service.media.MediaBrowserService
    public void onLoadItem(String str, MediaBrowserService.Result<MediaBrowser.MediaItem> result) {
        ((v) this.b).a(str, new s<>(result));
    }
}
