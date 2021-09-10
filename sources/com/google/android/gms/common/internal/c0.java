package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.ServiceConnection;
import android.os.Handler;
import com.google.android.gms.common.internal.b;
import com.google.android.gms.common.internal.f;
import com.google.android.gms.common.stats.a;
import com.google.android.gms.internal.common.zzi;
import java.util.HashMap;
import javax.annotation.concurrent.GuardedBy;

/* access modifiers changed from: package-private */
public final class c0 extends f {
    @GuardedBy("connectionStatus")
    private final HashMap<f.a, e0> d = new HashMap<>();
    private final Context e;
    private final Handler f;
    private final a g;
    private final long h;
    private final long i;

    c0(Context context) {
        this.e = context.getApplicationContext();
        this.f = new zzi(context.getMainLooper(), new d0(this, null));
        this.g = a.b();
        this.h = 5000;
        this.i = 300000;
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.f
    public final boolean b(f.a aVar, ServiceConnection serviceConnection, String str) {
        boolean d2;
        n.i(serviceConnection, "ServiceConnection must not be null");
        synchronized (this.d) {
            e0 e0Var = this.d.get(aVar);
            if (e0Var == null) {
                e0Var = new e0(this, aVar);
                e0Var.b(serviceConnection, serviceConnection);
                e0Var.c(str);
                this.d.put(aVar, e0Var);
            } else {
                this.f.removeMessages(0, aVar);
                if (!e0Var.e(serviceConnection)) {
                    e0Var.b(serviceConnection, serviceConnection);
                    int f2 = e0Var.f();
                    if (f2 == 1) {
                        ((b.i) serviceConnection).onServiceConnected(e0Var.j(), e0Var.i());
                    } else if (f2 == 2) {
                        e0Var.c(str);
                    }
                } else {
                    String valueOf = String.valueOf(aVar);
                    StringBuilder sb = new StringBuilder(valueOf.length() + 81);
                    sb.append("Trying to bind a GmsServiceConnection that was already connected before.  config=");
                    sb.append(valueOf);
                    throw new IllegalStateException(sb.toString());
                }
            }
            d2 = e0Var.d();
        }
        return d2;
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.f
    public final void c(f.a aVar, ServiceConnection serviceConnection, String str) {
        n.i(serviceConnection, "ServiceConnection must not be null");
        synchronized (this.d) {
            e0 e0Var = this.d.get(aVar);
            if (e0Var == null) {
                String valueOf = String.valueOf(aVar);
                StringBuilder sb = new StringBuilder(valueOf.length() + 50);
                sb.append("Nonexistent connection status for service config: ");
                sb.append(valueOf);
                throw new IllegalStateException(sb.toString());
            } else if (e0Var.e(serviceConnection)) {
                e0Var.a(serviceConnection);
                if (e0Var.h()) {
                    this.f.sendMessageDelayed(this.f.obtainMessage(0, aVar), this.h);
                }
            } else {
                String valueOf2 = String.valueOf(aVar);
                StringBuilder sb2 = new StringBuilder(valueOf2.length() + 76);
                sb2.append("Trying to unbind a GmsServiceConnection  that was not bound before.  config=");
                sb2.append(valueOf2);
                throw new IllegalStateException(sb2.toString());
            }
        }
    }
}
