package defpackage;

import java.io.File;
import java.io.FilenameFilter;

/* renamed from: a30  reason: default package */
final /* synthetic */ class a30 implements FilenameFilter {
    private static final a30 a = new a30();

    private a30() {
    }

    public static FilenameFilter a() {
        return a;
    }

    public boolean accept(File file, String str) {
        int i = b30.l;
        return str.startsWith("event");
    }
}
