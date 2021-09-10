package androidx.media;

import android.media.session.MediaSessionManager;
import android.os.Build;

public final class x {
    y a;

    public x(String str, int i, int i2) {
        if (Build.VERSION.SDK_INT >= 28) {
            this.a = new z(str, i, i2);
        } else {
            this.a = new a0(str, i, i2);
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof x)) {
            return false;
        }
        return this.a.equals(((x) obj).a);
    }

    public int hashCode() {
        return this.a.hashCode();
    }

    public x(MediaSessionManager.RemoteUserInfo remoteUserInfo) {
        this.a = new z(remoteUserInfo);
    }
}
