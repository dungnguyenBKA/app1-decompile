package androidx.media;

import androidx.versionedparcelable.a;
import java.util.Objects;

public final class AudioAttributesImplBaseParcelizer {
    public static c read(a aVar) {
        c cVar = new c();
        cVar.a = aVar.n(cVar.a, 1);
        cVar.b = aVar.n(cVar.b, 2);
        cVar.c = aVar.n(cVar.c, 3);
        cVar.d = aVar.n(cVar.d, 4);
        return cVar;
    }

    public static void write(c cVar, a aVar) {
        Objects.requireNonNull(aVar);
        aVar.C(cVar.a, 1);
        aVar.C(cVar.b, 2);
        aVar.C(cVar.c, 3);
        aVar.C(cVar.d, 4);
    }
}
