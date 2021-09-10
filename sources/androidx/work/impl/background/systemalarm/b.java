package androidx.work.impl.background.systemalarm;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.work.h;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.a;
import androidx.work.impl.background.systemalarm.e;
import java.util.HashMap;
import java.util.Map;

public class b implements a {
    private static final String e = h.f("CommandHandler");
    public static final /* synthetic */ int f = 0;
    private final Context b;
    private final Map<String, a> c = new HashMap();
    private final Object d = new Object();

    b(Context context) {
        this.b = context;
    }

    static Intent a(Context context) {
        Intent intent = new Intent(context, SystemAlarmService.class);
        intent.setAction("ACTION_CONSTRAINTS_CHANGED");
        return intent;
    }

    static Intent b(Context context, String str) {
        Intent intent = new Intent(context, SystemAlarmService.class);
        intent.setAction("ACTION_DELAY_MET");
        intent.putExtra("KEY_WORKSPEC_ID", str);
        return intent;
    }

    static Intent d(Context context, String str) {
        Intent intent = new Intent(context, SystemAlarmService.class);
        intent.setAction("ACTION_SCHEDULE_WORK");
        intent.putExtra("KEY_WORKSPEC_ID", str);
        return intent;
    }

    @Override // androidx.work.impl.a
    public void c(String str, boolean z) {
        synchronized (this.d) {
            a remove = this.c.remove(str);
            if (remove != null) {
                remove.c(str, z);
            }
        }
    }

    /* access modifiers changed from: package-private */
    public boolean e() {
        boolean z;
        synchronized (this.d) {
            z = !this.c.isEmpty();
        }
        return z;
    }

    /* access modifiers changed from: package-private */
    public void f(Intent intent, int i, e eVar) {
        boolean z;
        String action = intent.getAction();
        if ("ACTION_CONSTRAINTS_CHANGED".equals(action)) {
            h.c().a(e, String.format("Handling constraints changed %s", intent), new Throwable[0]);
            new c(this.b, i, eVar).a();
        } else if ("ACTION_RESCHEDULE".equals(action)) {
            h.c().a(e, String.format("Handling reschedule %s, %s", intent, Integer.valueOf(i)), new Throwable[0]);
            eVar.g().m();
        } else {
            Bundle extras = intent.getExtras();
            String[] strArr = {"KEY_WORKSPEC_ID"};
            if (extras != null && !extras.isEmpty()) {
                int i2 = 0;
                while (true) {
                    if (i2 >= 1) {
                        z = true;
                        break;
                    } else if (extras.get(strArr[i2]) == null) {
                        break;
                    } else {
                        i2++;
                    }
                }
            }
            z = false;
            if (!z) {
                h.c().b(e, String.format("Invalid request for %s, requires %s.", action, "KEY_WORKSPEC_ID"), new Throwable[0]);
            } else if ("ACTION_SCHEDULE_WORK".equals(action)) {
                String string = intent.getExtras().getString("KEY_WORKSPEC_ID");
                h c2 = h.c();
                String str = e;
                c2.a(str, String.format("Handling schedule work for %s", string), new Throwable[0]);
                WorkDatabase i3 = eVar.g().i();
                i3.c();
                try {
                    c6 j = ((e6) i3.t()).j(string);
                    if (j == null) {
                        h c3 = h.c();
                        c3.h(str, "Skipping scheduling " + string + " because it's no longer in the DB", new Throwable[0]);
                    } else if (j.b.a()) {
                        h c4 = h.c();
                        c4.h(str, "Skipping scheduling " + string + "because it is finished.", new Throwable[0]);
                    } else {
                        long a = j.a();
                        if (!j.b()) {
                            h.c().a(str, String.format("Setting up Alarms for %s at %s", string, Long.valueOf(a)), new Throwable[0]);
                            a.c(this.b, eVar.g(), string, a);
                        } else {
                            h.c().a(str, String.format("Opportunistically setting an alarm for %s at %s", string, Long.valueOf(a)), new Throwable[0]);
                            a.c(this.b, eVar.g(), string, a);
                            eVar.j(new e.b(eVar, a(this.b), i));
                        }
                        i3.o();
                    }
                } finally {
                    i3.g();
                }
            } else if ("ACTION_DELAY_MET".equals(action)) {
                Bundle extras2 = intent.getExtras();
                synchronized (this.d) {
                    String string2 = extras2.getString("KEY_WORKSPEC_ID");
                    h c5 = h.c();
                    String str2 = e;
                    c5.a(str2, String.format("Handing delay met for %s", string2), new Throwable[0]);
                    if (!this.c.containsKey(string2)) {
                        d dVar = new d(this.b, i, string2, eVar);
                        this.c.put(string2, dVar);
                        dVar.f();
                    } else {
                        h.c().a(str2, String.format("WorkSpec %s is already being handled for ACTION_DELAY_MET", string2), new Throwable[0]);
                    }
                }
            } else if ("ACTION_STOP_WORK".equals(action)) {
                String string3 = intent.getExtras().getString("KEY_WORKSPEC_ID");
                h.c().a(e, String.format("Handing stopWork work for %s", string3), new Throwable[0]);
                eVar.g().q(string3);
                a.a(this.b, eVar.g(), string3);
                eVar.c(string3, false);
            } else if ("ACTION_EXECUTION_COMPLETED".equals(action)) {
                Bundle extras3 = intent.getExtras();
                String string4 = extras3.getString("KEY_WORKSPEC_ID");
                boolean z2 = extras3.getBoolean("KEY_NEEDS_RESCHEDULE");
                h.c().a(e, String.format("Handling onExecutionCompleted %s, %s", intent, Integer.valueOf(i)), new Throwable[0]);
                c(string4, z2);
            } else {
                h.c().h(e, String.format("Ignoring intent %s", intent), new Throwable[0]);
            }
        }
    }
}
