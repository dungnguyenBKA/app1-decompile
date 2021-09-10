package androidx.media;

import androidx.versionedparcelable.a;
import java.util.Objects;

public final class AudioAttributesCompatParcelizer {
    public static AudioAttributesCompat read(a aVar) {
        AudioAttributesCompat audioAttributesCompat = new AudioAttributesCompat();
        audioAttributesCompat.a = (a) aVar.t(audioAttributesCompat.a, 1);
        return audioAttributesCompat;
    }

    public static void write(AudioAttributesCompat audioAttributesCompat, a aVar) {
        Objects.requireNonNull(aVar);
        aVar.I(audioAttributesCompat.a, 1);
    }
}
