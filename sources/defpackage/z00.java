package defpackage;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.zip.GZIPOutputStream;

/* access modifiers changed from: package-private */
/* renamed from: z00  reason: default package */
public class z00 {
    private static void a(InputStream inputStream, File file) {
        Throwable th;
        byte[] bArr = new byte[8192];
        GZIPOutputStream gZIPOutputStream = null;
        try {
            GZIPOutputStream gZIPOutputStream2 = new GZIPOutputStream(new FileOutputStream(file));
            while (true) {
                try {
                    int read = inputStream.read(bArr);
                    if (read > 0) {
                        gZIPOutputStream2.write(bArr, 0, read);
                    } else {
                        gZIPOutputStream2.finish();
                        sz.b(gZIPOutputStream2);
                        return;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    gZIPOutputStream = gZIPOutputStream2;
                    sz.b(gZIPOutputStream);
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            sz.b(gZIPOutputStream);
            throw th;
        }
    }

    static void b(File file, List<y00> list) {
        for (y00 y00 : list) {
            InputStream inputStream = null;
            try {
                inputStream = y00.b();
                if (inputStream != null) {
                    a(inputStream, new File(file, y00.a()));
                }
            } catch (IOException unused) {
            } catch (Throwable th) {
                sz.b(null);
                throw th;
            }
            sz.b(inputStream);
        }
    }
}
