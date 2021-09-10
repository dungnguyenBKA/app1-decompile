package androidx.browser.customtabs;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import defpackage.b;

public abstract class d implements ServiceConnection {

    class a extends b {
        a(d dVar, b bVar, ComponentName componentName) {
            super(bVar, componentName);
        }
    }

    public abstract void onCustomTabsServiceConnected(ComponentName componentName, b bVar);

    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        onCustomTabsServiceConnected(componentName, new a(this, b.a.O(iBinder), componentName));
    }
}
