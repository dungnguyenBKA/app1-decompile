package defpackage;

import defpackage.i20;
import java.util.Comparator;

/* access modifiers changed from: package-private */
/* renamed from: b10  reason: default package */
public final /* synthetic */ class b10 implements Comparator {
    private static final b10 b = new b10();

    private b10() {
    }

    public static Comparator a() {
        return b;
    }

    @Override // java.util.Comparator
    public int compare(Object obj, Object obj2) {
        return ((i20.b) obj).b().compareTo(((i20.b) obj2).b());
    }
}
