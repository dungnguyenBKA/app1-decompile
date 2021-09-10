package defpackage;

import java.io.File;
import java.io.FileFilter;

/* access modifiers changed from: package-private */
/* renamed from: w20  reason: default package */
public final /* synthetic */ class w20 implements FileFilter {
    private final String a;

    private w20(String str) {
        this.a = str;
    }

    public static FileFilter a(String str) {
        return new w20(str);
    }

    public boolean accept(File file) {
        String str = this.a;
        int i = b30.l;
        return file.isDirectory() && !file.getName().equals(str);
    }
}
