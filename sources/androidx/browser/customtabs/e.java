package androidx.browser.customtabs;

import android.content.ComponentName;
import android.os.IBinder;

public final class e {
    private final b a;
    private final a b;
    private final ComponentName c;

    e(b bVar, a aVar, ComponentName componentName) {
        this.a = bVar;
        this.b = aVar;
        this.c = componentName;
    }

    /* access modifiers changed from: package-private */
    public IBinder a() {
        return this.b.asBinder();
    }

    /* access modifiers changed from: package-private */
    public ComponentName b() {
        return this.c;
    }
}
