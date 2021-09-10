package defpackage;

import java.io.File;
import java.io.FilenameFilter;

/* access modifiers changed from: package-private */
/* renamed from: x20  reason: default package */
public final /* synthetic */ class x20 implements FilenameFilter {
    private static final x20 a = new x20();

    private x20() {
    }

    public static FilenameFilter a() {
        return a;
    }

    public boolean accept(File file, String str) {
        int i = b30.l;
        return str.startsWith("event") && !str.endsWith("_");
    }
}
