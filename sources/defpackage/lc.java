package defpackage;

import java.io.File;
import java.io.IOException;
import java.nio.charset.Charset;
import org.apache.http.protocol.HTTP;

/* access modifiers changed from: package-private */
/* renamed from: lc  reason: default package */
public final class lc {
    static final Charset a = Charset.forName("US-ASCII");

    static {
        Charset.forName(HTTP.UTF_8);
    }

    static void a(File file) {
        File[] listFiles = file.listFiles();
        if (listFiles != null) {
            for (File file2 : listFiles) {
                if (file2.isDirectory()) {
                    a(file2);
                }
                if (!file2.delete()) {
                    throw new IOException("failed to delete file: " + file2);
                }
            }
            return;
        }
        throw new IOException("not a readable directory: " + file);
    }
}
