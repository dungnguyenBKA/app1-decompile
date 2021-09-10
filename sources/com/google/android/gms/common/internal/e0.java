package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.google.android.gms.common.internal.f;
import java.util.HashMap;
import java.util.Map;

/* access modifiers changed from: package-private */
public final class e0 implements ServiceConnection, g0 {
    private final Map<ServiceConnection, ServiceConnection> a = new HashMap();
    private int b = 2;
    private boolean c;
    private IBinder d;
    private final f.a e;
    private ComponentName f;
    private final /* synthetic */ c0 g;

    public e0(c0 c0Var, f.a aVar) {
        this.g = c0Var;
        this.e = aVar;
    }

    public final void a(ServiceConnection serviceConnection) {
        this.a.remove(serviceConnection);
    }

    public final void b(ServiceConnection serviceConnection, ServiceConnection serviceConnection2) {
        this.a.put(serviceConnection, serviceConnection2);
    }

    public final void c(String str) {
        this.b = 3;
        boolean d2 = c0.g(this.g).d(c0.f(this.g), str, this.e.a(c0.f(this.g)), this, this.e.c());
        this.c = d2;
        if (d2) {
            c0.e(this.g).sendMessageDelayed(c0.e(this.g).obtainMessage(1, this.e), c0.h(this.g));
            return;
        }
        this.b = 2;
        try {
            c0.g(this.g).c(c0.f(this.g), this);
        } catch (IllegalArgumentException unused) {
        }
    }

    public final boolean d() {
        return this.c;
    }

    public final boolean e(ServiceConnection serviceConnection) {
        return this.a.containsKey(serviceConnection);
    }

    public final int f() {
        return this.b;
    }

    public final void g() {
        c0.e(this.g).removeMessages(1, this.e);
        c0.g(this.g).c(c0.f(this.g), this);
        this.c = false;
        this.b = 2;
    }

    public final boolean h() {
        return this.a.isEmpty();
    }

    public final IBinder i() {
        return this.d;
    }

    public final ComponentName j() {
        return this.f;
    }

    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        synchronized (c0.d(this.g)) {
            c0.e(this.g).removeMessages(1, this.e);
            this.d = iBinder;
            this.f = componentName;
            for (ServiceConnection serviceConnection : this.a.values()) {
                serviceConnection.onServiceConnected(componentName, iBinder);
            }
            this.b = 1;
        }
    }

    public final void onServiceDisconnected(ComponentName componentName) {
        synchronized (c0.d(this.g)) {
            c0.e(this.g).removeMessages(1, this.e);
            this.d = null;
            this.f = componentName;
            for (ServiceConnection serviceConnection : this.a.values()) {
                serviceConnection.onServiceDisconnected(componentName);
            }
            this.b = 2;
        }
    }
}
