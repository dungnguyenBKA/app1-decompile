package defpackage;

import java.util.Set;

/* access modifiers changed from: package-private */
/* renamed from: jt  reason: default package */
public final class jt implements bs {
    private final Set<wr> a;
    private final it b;
    private final lt c;

    jt(Set<wr> set, it itVar, lt ltVar) {
        this.a = set;
        this.b = itVar;
        this.c = ltVar;
    }

    @Override // defpackage.bs
    public <T> as<T> a(String str, Class<T> cls, wr wrVar, zr<T, byte[]> zrVar) {
        if (this.a.contains(wrVar)) {
            return new kt(this.b, str, wrVar, zrVar, this.c);
        }
        throw new IllegalArgumentException(String.format("%s is not supported byt this factory. Supported encodings are: %s.", wrVar, this.a));
    }
}
