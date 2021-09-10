package defpackage;

import java.io.File;
import java.util.Comparator;

/* access modifiers changed from: package-private */
/* renamed from: y20  reason: default package */
public final /* synthetic */ class y20 implements Comparator {
    private static final y20 b = new y20();

    private y20() {
    }

    public static Comparator a() {
        return b;
    }

    @Override // java.util.Comparator
    public int compare(Object obj, Object obj2) {
        return b30.a((File) obj, (File) obj2);
    }
}
