package androidx.media;

import android.media.AudioAttributes;
import androidx.versionedparcelable.a;
import java.util.Objects;

public final class AudioAttributesImplApi21Parcelizer {
    public static b read(a aVar) {
        b bVar = new b();
        bVar.a = (AudioAttributes) aVar.p(bVar.a, 1);
        bVar.b = aVar.n(bVar.b, 2);
        return bVar;
    }

    public static void write(b bVar, a aVar) {
        Objects.requireNonNull(aVar);
        aVar.E(bVar.a, 1);
        aVar.C(bVar.b, 2);
    }
}
