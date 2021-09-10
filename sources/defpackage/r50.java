package defpackage;

import java.util.Objects;
import javax.annotation.Nonnull;

/* access modifiers changed from: package-private */
/* renamed from: r50  reason: default package */
public final class r50 extends v50 {
    private final String a;
    private final String b;

    r50(String str, String str2) {
        Objects.requireNonNull(str, "Null libraryName");
        this.a = str;
        Objects.requireNonNull(str2, "Null version");
        this.b = str2;
    }

    @Override // defpackage.v50
    @Nonnull
    public String a() {
        return this.a;
    }

    @Override // defpackage.v50
    @Nonnull
    public String b() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof v50)) {
            return false;
        }
        v50 v50 = (v50) obj;
        if (!this.a.equals(v50.a()) || !this.b.equals(v50.b())) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        return ((this.a.hashCode() ^ 1000003) * 1000003) ^ this.b.hashCode();
    }

    public String toString() {
        StringBuilder q = ic.q("LibraryVersion{libraryName=");
        q.append(this.a);
        q.append(", version=");
        return ic.l(q, this.b, "}");
    }
}
