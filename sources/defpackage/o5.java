package defpackage;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import androidx.work.h;

/* renamed from: o5  reason: default package */
public abstract class o5<T> extends p5<T> {
    private static final String h = h.f("BrdcstRcvrCnstrntTrckr");
    private final BroadcastReceiver g = new a();

    /* renamed from: o5$a */
    class a extends BroadcastReceiver {
        a() {
        }

        public void onReceive(Context context, Intent intent) {
            if (intent != null) {
                o5.this.h(context, intent);
            }
        }
    }

    public o5(Context context, m6 m6Var) {
        super(context, m6Var);
    }

    @Override // defpackage.p5
    public void e() {
        h.c().a(h, String.format("%s: registering receiver", getClass().getSimpleName()), new Throwable[0]);
        this.b.registerReceiver(this.g, g());
    }

    @Override // defpackage.p5
    public void f() {
        h.c().a(h, String.format("%s: unregistering receiver", getClass().getSimpleName()), new Throwable[0]);
        this.b.unregisterReceiver(this.g);
    }

    public abstract IntentFilter g();

    public abstract void h(Context context, Intent intent);
}
