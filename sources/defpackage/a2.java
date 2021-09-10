package defpackage;

import android.os.LocaleList;
import java.util.Locale;

/* renamed from: a2  reason: default package */
final class a2 implements z1 {
    private final LocaleList a;

    a2(LocaleList localeList) {
        this.a = localeList;
    }

    @Override // defpackage.z1
    public Object a() {
        return this.a;
    }

    public boolean equals(Object obj) {
        return this.a.equals(((z1) obj).a());
    }

    @Override // defpackage.z1
    public Locale get(int i) {
        return this.a.get(i);
    }

    public int hashCode() {
        return this.a.hashCode();
    }

    @Override // defpackage.z1
    public boolean isEmpty() {
        return this.a.isEmpty();
    }

    public String toString() {
        return this.a.toString();
    }
}
