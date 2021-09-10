package defpackage;

import java.util.Objects;

/* renamed from: wr  reason: default package */
public final class wr {
    private final String a;

    private wr(String str) {
        Objects.requireNonNull(str, "name is null");
        this.a = str;
    }

    public static wr b(String str) {
        return new wr(str);
    }

    public String a() {
        return this.a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof wr)) {
            return false;
        }
        return this.a.equals(((wr) obj).a);
    }

    public int hashCode() {
        return this.a.hashCode() ^ 1000003;
    }

    public String toString() {
        return ic.l(ic.q("Encoding{name=\""), this.a, "\"}");
    }
}
