package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.b;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.common.stats.a;
import java.util.Objects;

public final class y7 implements ServiceConnection, b.a, b.AbstractC0047b {
    private volatile boolean a;
    private volatile e3 b;
    final /* synthetic */ z7 c;

    protected y7(z7 z7Var) {
        this.c = z7Var;
    }

    public final void a(Intent intent) {
        this.c.g();
        Context b2 = this.c.a.b();
        a b3 = a.b();
        synchronized (this) {
            if (this.a) {
                this.c.a.c().v().a("Connection attempt already in progress");
                return;
            }
            this.c.a.c().v().a("Using local app measurement service");
            this.a = true;
            b3.a(b2, intent, this.c.c, 129);
        }
    }

    public final void b() {
        if (this.b != null && (this.b.isConnected() || this.b.isConnecting())) {
            this.b.disconnect();
        }
        this.b = null;
    }

    public final void c() {
        this.c.g();
        Context b2 = this.c.a.b();
        synchronized (this) {
            if (this.a) {
                this.c.a.c().v().a("Connection attempt already in progress");
            } else if (this.b == null || (!this.b.isConnecting() && !this.b.isConnected())) {
                this.b = new e3(b2, Looper.getMainLooper(), this, this);
                this.c.a.c().v().a("Connecting to remote service");
                this.a = true;
                Objects.requireNonNull(this.b, "null reference");
                this.b.checkAvailabilityAndConnect();
            } else {
                this.c.a.c().v().a("Already awaiting connection attempt");
            }
        }
    }

    @Override // com.google.android.gms.common.internal.b.a
    public final void onConnected(Bundle bundle) {
        n.d("MeasurementServiceConnection.onConnected");
        synchronized (this) {
            try {
                Objects.requireNonNull(this.b, "null reference");
                this.c.a.e().q(new u7(this, (y2) this.b.getService()));
            } catch (DeadObjectException | IllegalStateException unused) {
                this.b = null;
                this.a = false;
            }
        }
    }

    @Override // com.google.android.gms.common.internal.b.AbstractC0047b
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        n.d("MeasurementServiceConnection.onConnectionFailed");
        i3 z = this.c.a.z();
        if (z != null) {
            z.q().b("Service connection failed", connectionResult);
        }
        synchronized (this) {
            this.a = false;
            this.b = null;
        }
        this.c.a.e().q(new w7(this));
    }

    @Override // com.google.android.gms.common.internal.b.a
    public final void onConnectionSuspended(int i) {
        n.d("MeasurementServiceConnection.onConnectionSuspended");
        this.c.a.c().u().a("Service connection suspended");
        this.c.a.e().q(new v7(this));
    }

    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        y2 w2Var;
        n.d("MeasurementServiceConnection.onServiceConnected");
        synchronized (this) {
            if (iBinder == null) {
                this.a = false;
                this.c.a.c().n().a("Service connected with null binder");
                return;
            }
            y2 y2Var = null;
            try {
                String interfaceDescriptor = iBinder.getInterfaceDescriptor();
                if ("com.google.android.gms.measurement.internal.IMeasurementService".equals(interfaceDescriptor)) {
                    IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.measurement.internal.IMeasurementService");
                    if (queryLocalInterface instanceof y2) {
                        w2Var = (y2) queryLocalInterface;
                    } else {
                        w2Var = new w2(iBinder);
                    }
                    y2Var = w2Var;
                    this.c.a.c().v().a("Bound to IMeasurementService interface");
                } else {
                    this.c.a.c().n().b("Got binder with a wrong descriptor", interfaceDescriptor);
                }
            } catch (RemoteException unused) {
                this.c.a.c().n().a("Service connect failed to get IMeasurementService");
            }
            if (y2Var == null) {
                this.a = false;
                try {
                    a.b().c(this.c.a.b(), this.c.c);
                } catch (IllegalArgumentException unused2) {
                }
            } else {
                this.c.a.e().q(new s7(this, y2Var));
            }
        }
    }

    public final void onServiceDisconnected(ComponentName componentName) {
        n.d("MeasurementServiceConnection.onServiceDisconnected");
        this.c.a.c().u().a("Service disconnected");
        this.c.a.e().q(new t7(this, componentName));
    }
}
