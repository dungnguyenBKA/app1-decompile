package defpackage;

import java.io.File;
import java.io.FileFilter;

/* renamed from: kn  reason: default package */
public final /* synthetic */ class kn implements FileFilter {
    public static final /* synthetic */ kn a = new kn();

    private /* synthetic */ kn() {
    }

    public final boolean accept(File file) {
        return file.isFile() && file.getName().endsWith(".svg");
    }
}
