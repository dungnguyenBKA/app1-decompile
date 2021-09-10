package defpackage;

import java.util.Map;
import java.util.Set;

/* renamed from: s60  reason: default package */
public final class s60 extends p60 {
    private final v70<String, p60> a = new v70<>();

    public boolean equals(Object obj) {
        return obj == this || ((obj instanceof s60) && ((s60) obj).a.equals(this.a));
    }

    public int hashCode() {
        return this.a.hashCode();
    }

    public void i(String str, p60 p60) {
        v70<String, p60> v70 = this.a;
        if (p60 == null) {
            p60 = r60.a;
        }
        v70.put(str, p60);
    }

    public void j(String str, Boolean bool) {
        this.a.put(str, bool == null ? r60.a : new u60(bool));
    }

    public void k(String str, Number number) {
        this.a.put(str, number == null ? r60.a : new u60(number));
    }

    public void l(String str, String str2) {
        this.a.put(str, str2 == null ? r60.a : new u60(str2));
    }

    public Set<Map.Entry<String, p60>> m() {
        return this.a.entrySet();
    }

    public p60 n(String str) {
        return this.a.get(str);
    }

    public m60 o(String str) {
        return (m60) this.a.get(str);
    }

    public s60 p(String str) {
        return (s60) this.a.get(str);
    }

    public boolean q(String str) {
        return this.a.containsKey(str);
    }
}
