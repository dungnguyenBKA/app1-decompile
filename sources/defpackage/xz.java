package defpackage;

import java.io.File;
import java.io.FilenameFilter;

/* renamed from: xz  reason: default package */
final /* synthetic */ class xz implements FilenameFilter {
    private static final xz a = new xz();

    private xz() {
    }

    public static FilenameFilter a() {
        return a;
    }

    public boolean accept(File file, String str) {
        FilenameFilter filenameFilter = zz.t;
        return str.startsWith(".ae");
    }
}
