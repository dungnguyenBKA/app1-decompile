package defpackage;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.util.Log;
import defpackage.aj;
import java.util.Objects;

/* access modifiers changed from: package-private */
/* renamed from: cj  reason: default package */
public final class cj implements aj {
    private final Context b;
    final aj.a c;
    boolean d;
    private boolean e;
    private final BroadcastReceiver f = new a();

    /* renamed from: cj$a */
    class a extends BroadcastReceiver {
        a() {
        }

        public void onReceive(Context context, Intent intent) {
            cj cjVar = cj.this;
            boolean z = cjVar.d;
            cjVar.d = cjVar.i(context);
            if (z != cj.this.d) {
                if (Log.isLoggable("ConnectivityMonitor", 3)) {
                    boolean z2 = cj.this.d;
                }
                cj cjVar2 = cj.this;
                cjVar2.c.a(cjVar2.d);
            }
        }
    }

    cj(Context context, aj.a aVar) {
        this.b = context.getApplicationContext();
        this.c = aVar;
    }

    /* access modifiers changed from: package-private */
    @SuppressLint({"MissingPermission"})
    public boolean i(Context context) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        Objects.requireNonNull(connectivityManager, "Argument must not be null");
        try {
            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
                return false;
            }
            return true;
        } catch (RuntimeException e2) {
            if (Log.isLoggable("ConnectivityMonitor", 5)) {
                Log.w("ConnectivityMonitor", "Failed to determine connectivity status when connectivity changed", e2);
            }
            return true;
        }
    }

    @Override // defpackage.gj
    public void onDestroy() {
    }

    @Override // defpackage.gj
    public void onStart() {
        if (!this.e) {
            this.d = i(this.b);
            try {
                this.b.registerReceiver(this.f, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
                this.e = true;
            } catch (SecurityException e2) {
                if (Log.isLoggable("ConnectivityMonitor", 5)) {
                    Log.w("ConnectivityMonitor", "Failed to register", e2);
                }
            }
        }
    }

    @Override // defpackage.gj
    public void onStop() {
        if (this.e) {
            this.b.unregisterReceiver(this.f);
            this.e = false;
        }
    }
}
