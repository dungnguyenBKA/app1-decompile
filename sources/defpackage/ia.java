package defpackage;

import android.content.Context;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.Objects;

/* renamed from: ia  reason: default package */
public class ia {
    private final Context a;

    public ia(Context context) {
        this.a = context.getApplicationContext();
    }

    private static String b(String str, ha haVar, boolean z) {
        String str2;
        StringBuilder q = ic.q("lottie_cache_");
        q.append(str.replaceAll("\\W+", ""));
        if (z) {
            Objects.requireNonNull(haVar);
            str2 = ".temp" + haVar.b;
        } else {
            str2 = haVar.b;
        }
        q.append(str2);
        return q.toString();
    }

    private File c() {
        File file = new File(this.a.getCacheDir(), "lottie_network_cache");
        if (file.isFile()) {
            file.delete();
        }
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    /* access modifiers changed from: package-private */
    public j2<ha, InputStream> a(String str) {
        ha haVar = ha.ZIP;
        try {
            File c = c();
            ha haVar2 = ha.JSON;
            File file = new File(c, b(str, haVar2, false));
            if (!file.exists()) {
                file = new File(c(), b(str, haVar, false));
                if (!file.exists()) {
                    file = null;
                }
            }
            if (file == null) {
                return null;
            }
            FileInputStream fileInputStream = new FileInputStream(file);
            if (!file.getAbsolutePath().endsWith(".zip")) {
                haVar = haVar2;
            }
            zb.a("Cache hit for " + str + " at " + file.getAbsolutePath());
            return new j2<>(haVar, fileInputStream);
        } catch (FileNotFoundException unused) {
            return null;
        }
    }

    /* access modifiers changed from: package-private */
    public void d(String str, ha haVar) {
        File file = new File(c(), b(str, haVar, true));
        File file2 = new File(file.getAbsolutePath().replace(".temp", ""));
        boolean renameTo = file.renameTo(file2);
        zb.a("Copying temp file to real file (" + file2 + ")");
        if (!renameTo) {
            StringBuilder q = ic.q("Unable to rename cache file ");
            q.append(file.getAbsolutePath());
            q.append(" to ");
            q.append(file2.getAbsolutePath());
            q.append(".");
            zb.b(q.toString());
        }
    }

    /* JADX INFO: finally extract failed */
    /* access modifiers changed from: package-private */
    public File e(String str, InputStream inputStream, ha haVar) {
        File file = new File(c(), b(str, haVar, true));
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            try {
                byte[] bArr = new byte[1024];
                while (true) {
                    int read = inputStream.read(bArr);
                    if (read != -1) {
                        fileOutputStream.write(bArr, 0, read);
                    } else {
                        fileOutputStream.flush();
                        fileOutputStream.close();
                        return file;
                    }
                }
            } catch (Throwable th) {
                fileOutputStream.close();
                throw th;
            }
        } finally {
            inputStream.close();
        }
    }
}
