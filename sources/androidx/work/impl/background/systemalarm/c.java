package androidx.work.impl.background.systemalarm;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import androidx.work.h;
import androidx.work.i;
import androidx.work.impl.background.systemalarm.e;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* access modifiers changed from: package-private */
public class c {
    private static final String e = h.f("ConstraintsCmdHandler");
    private final Context a;
    private final int b;
    private final e c;
    private final d5 d;

    c(Context context, int i, e eVar) {
        this.a = context;
        this.b = i;
        this.c = eVar;
        this.d = new d5(context, eVar.f(), null);
    }

    /* access modifiers changed from: package-private */
    public void a() {
        List<c6> f = ((e6) this.c.g().i().t()).f();
        Context context = this.a;
        int i = ConstraintProxy.b;
        ArrayList arrayList = (ArrayList) f;
        Iterator it = arrayList.iterator();
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        boolean z4 = false;
        while (it.hasNext()) {
            androidx.work.c cVar = ((c6) it.next()).j;
            z |= cVar.f();
            z2 |= cVar.g();
            z3 |= cVar.i();
            z4 |= cVar.b() != i.NOT_REQUIRED;
            if (z && z2 && z3 && z4) {
                break;
            }
        }
        String str = ConstraintProxyUpdateReceiver.a;
        Intent intent = new Intent("androidx.work.impl.background.systemalarm.UpdateProxies");
        intent.setComponent(new ComponentName(context, ConstraintProxyUpdateReceiver.class));
        intent.putExtra("KEY_BATTERY_NOT_LOW_PROXY_ENABLED", z).putExtra("KEY_BATTERY_CHARGING_PROXY_ENABLED", z2).putExtra("KEY_STORAGE_NOT_LOW_PROXY_ENABLED", z3).putExtra("KEY_NETWORK_STATE_PROXY_ENABLED", z4);
        context.sendBroadcast(intent);
        this.d.d(f);
        ArrayList arrayList2 = new ArrayList(arrayList.size());
        long currentTimeMillis = System.currentTimeMillis();
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            c6 c6Var = (c6) it2.next();
            String str2 = c6Var.a;
            if (currentTimeMillis >= c6Var.a() && (!c6Var.b() || this.d.a(str2))) {
                arrayList2.add(c6Var);
            }
        }
        Iterator it3 = arrayList2.iterator();
        while (it3.hasNext()) {
            String str3 = ((c6) it3.next()).a;
            Intent b2 = b.b(this.a, str3);
            h.c().a(e, String.format("Creating a delay_met command for workSpec with id (%s)", str3), new Throwable[0]);
            e eVar = this.c;
            eVar.j(new e.b(eVar, b2, this.b));
        }
        this.d.e();
    }
}
