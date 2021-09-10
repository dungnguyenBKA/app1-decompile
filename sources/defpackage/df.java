package defpackage;

import defpackage.af;
import java.io.File;

/* renamed from: df  reason: default package */
public class df implements af.a {
    private final long a;
    private final a b;

    /* renamed from: df$a */
    public interface a {
    }

    public df(a aVar, long j) {
        this.a = j;
        this.b = aVar;
    }

    public af a() {
        ff ffVar = (ff) this.b;
        File cacheDir = ffVar.a.getCacheDir();
        if (cacheDir == null) {
            cacheDir = null;
        } else if (ffVar.b != null) {
            cacheDir = new File(cacheDir, ffVar.b);
        }
        if (cacheDir == null) {
            return null;
        }
        if (cacheDir.mkdirs() || (cacheDir.exists() && cacheDir.isDirectory())) {
            return new ef(cacheDir, this.a);
        }
        return null;
    }
}
