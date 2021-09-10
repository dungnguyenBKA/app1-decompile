package com.google.android.gms.measurement.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;

/* access modifiers changed from: package-private */
public final class p3 extends BroadcastReceiver {
    private final b9 a;
    private boolean b;
    private boolean c;

    p3(b9 b9Var) {
        this.a = b9Var;
    }

    public final void a() {
        this.a.f0();
        this.a.e().g();
        if (!this.b) {
            this.a.b().registerReceiver(this, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
            this.c = this.a.W().l();
            this.a.c().v().b("Registering connectivity change receiver. Network connected", Boolean.valueOf(this.c));
            this.b = true;
        }
    }

    public final void b() {
        this.a.f0();
        this.a.e().g();
        this.a.e().g();
        if (this.b) {
            this.a.c().v().a("Unregistering connectivity change receiver");
            this.b = false;
            this.c = false;
            try {
                this.a.b().unregisterReceiver(this);
            } catch (IllegalArgumentException e) {
                this.a.c().n().b("Failed to unregister the network broadcast receiver", e);
            }
        }
    }

    public final void onReceive(Context context, Intent intent) {
        this.a.f0();
        String action = intent.getAction();
        this.a.c().v().b("NetworkBroadcastReceiver received action", action);
        if ("android.net.conn.CONNECTIVITY_CHANGE".equals(action)) {
            boolean l = this.a.W().l();
            if (this.c != l) {
                this.c = l;
                this.a.e().q(new o3(this, l));
                return;
            }
            return;
        }
        this.a.c().q().b("NetworkBroadcastReceiver received unknown action", action);
    }
}
