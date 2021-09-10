package android.support.v4.media;

import android.media.MediaDescription;
import android.net.Uri;

/* access modifiers changed from: package-private */
public class MediaDescriptionCompatApi23 {

    /* access modifiers changed from: package-private */
    public static class Builder {
        private Builder() {
        }

        public static void setMediaUri(Object obj, Uri uri) {
            ((MediaDescription.Builder) obj).setMediaUri(uri);
        }
    }

    private MediaDescriptionCompatApi23() {
    }

    public static Uri getMediaUri(Object obj) {
        return ((MediaDescription) obj).getMediaUri();
    }
}
