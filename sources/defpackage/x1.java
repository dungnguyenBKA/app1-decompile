package defpackage;

import android.os.Build;
import android.os.LocaleList;
import java.util.Locale;

/* renamed from: x1  reason: default package */
public final class x1 {
    public static final /* synthetic */ int b = 0;
    private z1 a;

    static {
        a(new Locale[0]);
    }

    private x1(z1 z1Var) {
        this.a = z1Var;
    }

    public static x1 a(Locale... localeArr) {
        if (Build.VERSION.SDK_INT >= 24) {
            return new x1(new a2(new LocaleList(localeArr)));
        }
        return new x1(new y1(localeArr));
    }

    public static x1 d(LocaleList localeList) {
        return new x1(new a2(localeList));
    }

    public Locale b(int i) {
        return this.a.get(i);
    }

    public boolean c() {
        return this.a.isEmpty();
    }

    public boolean equals(Object obj) {
        return (obj instanceof x1) && this.a.equals(((x1) obj).a);
    }

    public int hashCode() {
        return this.a.hashCode();
    }

    public String toString() {
        return this.a.toString();
    }
}
