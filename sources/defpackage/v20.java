package defpackage;

import java.io.File;
import java.io.FilenameFilter;

/* access modifiers changed from: package-private */
/* renamed from: v20  reason: default package */
public final /* synthetic */ class v20 implements FilenameFilter {
    private final String a;

    private v20(String str) {
        this.a = str;
    }

    public static FilenameFilter a(String str) {
        return new v20(str);
    }

    public boolean accept(File file, String str) {
        String str2 = this.a;
        int i = b30.l;
        return str.startsWith(str2);
    }
}
