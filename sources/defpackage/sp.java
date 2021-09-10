package defpackage;

import java.io.File;
import java.io.FileFilter;

/* renamed from: sp  reason: default package */
public final /* synthetic */ class sp implements FileFilter {
    public static final /* synthetic */ sp a = new sp();

    private /* synthetic */ sp() {
    }

    public final boolean accept(File file) {
        return file.isFile() && !file.getName().endsWith(".zip");
    }
}
