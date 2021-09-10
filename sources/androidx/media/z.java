package androidx.media;

import android.media.session.MediaSessionManager;
import java.util.Objects;

/* access modifiers changed from: package-private */
public final class z implements y {
    final MediaSessionManager.RemoteUserInfo a;

    z(String str, int i, int i2) {
        this.a = new MediaSessionManager.RemoteUserInfo(str, i, i2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof z)) {
            return false;
        }
        return this.a.equals(((z) obj).a);
    }

    public int hashCode() {
        return Objects.hash(this.a);
    }

    z(MediaSessionManager.RemoteUserInfo remoteUserInfo) {
        this.a = remoteUserInfo;
    }
}
