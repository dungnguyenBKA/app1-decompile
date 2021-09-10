package androidx.media;

import android.annotation.TargetApi;
import android.media.AudioAttributes;
import com.vungle.warren.error.VungleException;

@TargetApi(VungleException.SERVER_ERROR)
class b implements a {
    AudioAttributes a;
    int b = -1;

    b() {
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof b)) {
            return false;
        }
        return this.a.equals(((b) obj).a);
    }

    public int hashCode() {
        return this.a.hashCode();
    }

    public String toString() {
        StringBuilder q = ic.q("AudioAttributesCompat: audioattributes=");
        q.append(this.a);
        return q.toString();
    }
}
