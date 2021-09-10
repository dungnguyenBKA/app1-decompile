package androidx.lifecycle;

import java.util.HashMap;

public class u {
    private final HashMap<String, s> a = new HashMap<>();

    public final void a() {
        for (s sVar : this.a.values()) {
            sVar.a();
        }
        this.a.clear();
    }

    /* access modifiers changed from: package-private */
    public final s b(String str) {
        return this.a.get(str);
    }

    /* access modifiers changed from: package-private */
    public final void c(String str, s sVar) {
        s put = this.a.put(str, sVar);
        if (put != null) {
            put.b();
        }
    }
}
