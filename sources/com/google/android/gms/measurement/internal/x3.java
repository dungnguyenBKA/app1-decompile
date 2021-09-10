package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.google.android.gms.internal.measurement.zze;
import com.google.android.gms.internal.measurement.zzf;

public final class x3 implements ServiceConnection {
    private final String a;
    final /* synthetic */ z3 b;

    x3(z3 z3Var, String str) {
        this.b = z3Var;
        this.a = str;
    }

    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        if (iBinder != null) {
            try {
                zzf zzb = zze.zzb(iBinder);
                if (zzb == null) {
                    this.b.a.c().q().a("Install Referrer Service implementation was not found");
                    return;
                }
                this.b.a.c().v().a("Install Referrer Service connected");
                this.b.a.e().q(new w3(this, zzb, this));
            } catch (Exception e) {
                this.b.a.c().q().b("Exception occurred while calling Install Referrer API", e);
            }
        } else {
            this.b.a.c().q().a("Install Referrer connection returned with null binder");
        }
    }

    public final void onServiceDisconnected(ComponentName componentName) {
        this.b.a.c().v().a("Install Referrer Service disconnected");
    }
}
