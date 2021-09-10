package androidx.lifecycle;

import java.io.Closeable;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

public abstract class s {
    private final Map<String, Object> a = new HashMap();

    /* access modifiers changed from: package-private */
    public final void a() {
        Map<String, Object> map = this.a;
        if (map != null) {
            synchronized (map) {
                for (Object obj : this.a.values()) {
                    if (obj instanceof Closeable) {
                        try {
                            ((Closeable) obj).close();
                        } catch (IOException e) {
                            throw new RuntimeException(e);
                        }
                    }
                }
            }
        }
        b();
    }

    /* access modifiers changed from: protected */
    public void b() {
    }
}
