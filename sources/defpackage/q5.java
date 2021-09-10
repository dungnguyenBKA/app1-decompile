package defpackage;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.os.Build;
import androidx.work.h;

/* renamed from: q5  reason: default package */
public class q5 extends p5<b5> {
    static final String j = h.f("NetworkStateTracker");
    private final ConnectivityManager g = ((ConnectivityManager) this.b.getSystemService("connectivity"));
    private b h;
    private a i;

    /* renamed from: q5$a */
    private class a extends BroadcastReceiver {
        a() {
        }

        public void onReceive(Context context, Intent intent) {
            if (intent != null && intent.getAction() != null && intent.getAction().equals("android.net.conn.CONNECTIVITY_CHANGE")) {
                h.c().a(q5.j, "Network broadcast received", new Throwable[0]);
                q5 q5Var = q5.this;
                q5Var.d(q5Var.g());
            }
        }
    }

    /* renamed from: q5$b */
    private class b extends ConnectivityManager.NetworkCallback {
        b() {
        }

        public void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
            h.c().a(q5.j, String.format("Network capabilities changed: %s", networkCapabilities), new Throwable[0]);
            q5 q5Var = q5.this;
            q5Var.d(q5Var.g());
        }

        public void onLost(Network network) {
            h.c().a(q5.j, "Network connection lost", new Throwable[0]);
            q5 q5Var = q5.this;
            q5Var.d(q5Var.g());
        }
    }

    public q5(Context context, m6 m6Var) {
        super(context, m6Var);
        if (h()) {
            this.h = new b();
        } else {
            this.i = new a();
        }
    }

    private static boolean h() {
        return Build.VERSION.SDK_INT >= 24;
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // defpackage.p5
    public b5 b() {
        return g();
    }

    @Override // defpackage.p5
    public void e() {
        if (h()) {
            h.c().a(j, "Registering network callback", new Throwable[0]);
            this.g.registerDefaultNetworkCallback(this.h);
            return;
        }
        h.c().a(j, "Registering broadcast receiver", new Throwable[0]);
        this.b.registerReceiver(this.i, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
    }

    @Override // defpackage.p5
    public void f() {
        if (h()) {
            try {
                h.c().a(j, "Unregistering network callback", new Throwable[0]);
                this.g.unregisterNetworkCallback(this.h);
            } catch (IllegalArgumentException e) {
                h.c().b(j, "Received exception while unregistering network callback", e);
            }
        } else {
            h.c().a(j, "Unregistering broadcast receiver", new Throwable[0]);
            this.b.unregisterReceiver(this.i);
        }
    }

    /* access modifiers changed from: package-private */
    public b5 g() {
        NetworkCapabilities networkCapabilities;
        NetworkInfo activeNetworkInfo = this.g.getActiveNetworkInfo();
        boolean z = true;
        boolean z2 = activeNetworkInfo != null && activeNetworkInfo.isConnected();
        boolean z3 = Build.VERSION.SDK_INT >= 23 && (networkCapabilities = this.g.getNetworkCapabilities(this.g.getActiveNetwork())) != null && networkCapabilities.hasCapability(16);
        boolean isActiveNetworkMetered = this.g.isActiveNetworkMetered();
        if (activeNetworkInfo == null || activeNetworkInfo.isRoaming()) {
            z = false;
        }
        return new b5(z2, z3, isActiveNetworkMetered, z);
    }
}
