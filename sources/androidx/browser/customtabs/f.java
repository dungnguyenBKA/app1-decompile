package androidx.browser.customtabs;

import android.os.IBinder;

public class f {
    final a a;

    f(a aVar) {
        this.a = aVar;
    }

    /* access modifiers changed from: package-private */
    public IBinder a() {
        return this.a.asBinder();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof f)) {
            return false;
        }
        return ((f) obj).a().equals(this.a.asBinder());
    }

    public int hashCode() {
        return a().hashCode();
    }
}
