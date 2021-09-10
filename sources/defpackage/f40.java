package defpackage;

import java.util.Collections;
import java.util.Map;

/* renamed from: f40  reason: default package */
public final class f40 {
    private final String a;
    private final Map<Class<?>, Object> b;

    private f40(String str, Map<Class<?>, Object> map) {
        this.a = str;
        this.b = map;
    }

    public static f40 b(String str) {
        return new f40(str, Collections.emptyMap());
    }

    public String a() {
        return this.a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f40)) {
            return false;
        }
        f40 f40 = (f40) obj;
        if (!this.a.equals(f40.a) || !this.b.equals(f40.b)) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public String toString() {
        StringBuilder q = ic.q("FieldDescriptor{name=");
        q.append(this.a);
        q.append(", properties=");
        q.append(this.b.values());
        q.append("}");
        return q.toString();
    }
}
