package defpackage;

import java.io.File;
import java.util.Comparator;

/* renamed from: z20  reason: default package */
final /* synthetic */ class z20 implements Comparator {
    private static final z20 b = new z20();

    private z20() {
    }

    public static Comparator a() {
        return b;
    }

    @Override // java.util.Comparator
    public int compare(Object obj, Object obj2) {
        int i = b30.l;
        return ((File) obj2).getName().compareTo(((File) obj).getName());
    }
}
