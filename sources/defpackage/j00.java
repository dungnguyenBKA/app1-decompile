package defpackage;

import java.io.File;
import java.io.IOException;

/* access modifiers changed from: package-private */
/* renamed from: j00  reason: default package */
public class j00 {
    private final String a;
    private final c30 b;

    public j00(String str, c30 c30) {
        this.a = str;
        this.b = c30;
    }

    private File b() {
        return new File(this.b.a(), this.a);
    }

    public boolean a() {
        try {
            return b().createNewFile();
        } catch (IOException e) {
            az f = az.f();
            StringBuilder q = ic.q("Error creating marker: ");
            q.append(this.a);
            f.e(q.toString(), e);
            return false;
        }
    }

    public boolean c() {
        return b().exists();
    }

    public boolean d() {
        return b().delete();
    }
}
