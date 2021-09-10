package defpackage;

import android.content.Context;
import android.os.Bundle;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.internal.measurement.zzbr;
import com.google.firebase.analytics.connector.internal.b;
import com.google.firebase.analytics.connector.internal.d;
import com.google.firebase.analytics.connector.internal.f;
import com.google.firebase.c;
import defpackage.vy;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;

/* renamed from: wy  reason: default package */
public class wy implements vy {
    private static volatile vy c;
    final cw a;
    final Map<String, Object> b = new ConcurrentHashMap();

    /* renamed from: wy$a */
    class a implements vy.a {
        a(wy wyVar, String str) {
        }
    }

    wy(cw cwVar) {
        Objects.requireNonNull(cwVar, "null reference");
        this.a = cwVar;
    }

    @RecentlyNonNull
    public static vy d(@RecentlyNonNull c cVar, @RecentlyNonNull Context context, @RecentlyNonNull u40 u40) {
        Objects.requireNonNull(cVar, "null reference");
        Objects.requireNonNull(context, "null reference");
        Objects.requireNonNull(u40, "null reference");
        Objects.requireNonNull(context.getApplicationContext(), "null reference");
        if (c == null) {
            synchronized (wy.class) {
                if (c == null) {
                    Bundle bundle = new Bundle(1);
                    if (cVar.q()) {
                        u40.a(com.google.firebase.a.class, xy.b, yy.a);
                        bundle.putBoolean("dataCollectionDefaultEnabled", cVar.p());
                    }
                    c = new wy(zzbr.zza(context, null, null, null, bundle).zzb());
                }
            }
        }
        return c;
    }

    @Override // defpackage.vy
    @RecentlyNonNull
    public Map<String, Object> a(boolean z) {
        return this.a.l(null, null, z);
    }

    @Override // defpackage.vy
    public void b(@RecentlyNonNull vy.c cVar) {
        if (b.d(cVar)) {
            cw cwVar = this.a;
            Bundle bundle = new Bundle();
            String str = cVar.a;
            if (str != null) {
                bundle.putString("origin", str);
            }
            String str2 = cVar.b;
            if (str2 != null) {
                bundle.putString("name", str2);
            }
            Object obj = cVar.c;
            if (obj != null) {
                androidx.core.app.b.T0(bundle, obj);
            }
            String str3 = cVar.d;
            if (str3 != null) {
                bundle.putString("trigger_event_name", str3);
            }
            bundle.putLong("trigger_timeout", cVar.e);
            String str4 = cVar.f;
            if (str4 != null) {
                bundle.putString("timed_out_event_name", str4);
            }
            Bundle bundle2 = cVar.g;
            if (bundle2 != null) {
                bundle.putBundle("timed_out_event_params", bundle2);
            }
            String str5 = cVar.h;
            if (str5 != null) {
                bundle.putString("triggered_event_name", str5);
            }
            Bundle bundle3 = cVar.i;
            if (bundle3 != null) {
                bundle.putBundle("triggered_event_params", bundle3);
            }
            bundle.putLong("time_to_live", cVar.j);
            String str6 = cVar.k;
            if (str6 != null) {
                bundle.putString("expired_event_name", str6);
            }
            Bundle bundle4 = cVar.l;
            if (bundle4 != null) {
                bundle.putBundle("expired_event_params", bundle4);
            }
            bundle.putLong("creation_timestamp", cVar.m);
            bundle.putBoolean("active", cVar.n);
            bundle.putLong("triggered_timestamp", cVar.o);
            cwVar.q(bundle);
        }
    }

    @Override // defpackage.vy
    @RecentlyNonNull
    public vy.a c(@RecentlyNonNull String str, @RecentlyNonNull vy.b bVar) {
        Object obj;
        Objects.requireNonNull(bVar, "null reference");
        if (!b.a(str)) {
            return null;
        }
        if (!str.isEmpty() && this.b.containsKey(str) && this.b.get(str) != null) {
            return null;
        }
        cw cwVar = this.a;
        if ("fiam".equals(str)) {
            obj = new d(cwVar, bVar);
        } else if ("crash".equals(str) || "clx".equals(str)) {
            obj = new f(cwVar, bVar);
        } else {
            obj = null;
        }
        if (obj == null) {
            return null;
        }
        this.b.put(str, obj);
        return new a(this, str);
    }

    @Override // defpackage.vy
    public void clearConditionalUserProperty(@RecentlyNonNull String str, @RecentlyNonNull String str2, @RecentlyNonNull Bundle bundle) {
        this.a.b(str, null, null);
    }

    @Override // defpackage.vy
    @RecentlyNonNull
    public List<vy.c> getConditionalUserProperties(@RecentlyNonNull String str, @RecentlyNonNull String str2) {
        ArrayList arrayList = new ArrayList();
        for (Bundle bundle : this.a.g(str, str2)) {
            int i = b.g;
            Objects.requireNonNull(bundle, "null reference");
            vy.c cVar = new vy.c();
            String str3 = (String) androidx.core.app.b.U0(bundle, "origin", String.class, null);
            Objects.requireNonNull(str3, "null reference");
            cVar.a = str3;
            String str4 = (String) androidx.core.app.b.U0(bundle, "name", String.class, null);
            Objects.requireNonNull(str4, "null reference");
            cVar.b = str4;
            cVar.c = androidx.core.app.b.U0(bundle, "value", Object.class, null);
            cVar.d = (String) androidx.core.app.b.U0(bundle, "trigger_event_name", String.class, null);
            cVar.e = ((Long) androidx.core.app.b.U0(bundle, "trigger_timeout", Long.class, 0L)).longValue();
            cVar.f = (String) androidx.core.app.b.U0(bundle, "timed_out_event_name", String.class, null);
            cVar.g = (Bundle) androidx.core.app.b.U0(bundle, "timed_out_event_params", Bundle.class, null);
            cVar.h = (String) androidx.core.app.b.U0(bundle, "triggered_event_name", String.class, null);
            cVar.i = (Bundle) androidx.core.app.b.U0(bundle, "triggered_event_params", Bundle.class, null);
            cVar.j = ((Long) androidx.core.app.b.U0(bundle, "time_to_live", Long.class, 0L)).longValue();
            cVar.k = (String) androidx.core.app.b.U0(bundle, "expired_event_name", String.class, null);
            cVar.l = (Bundle) androidx.core.app.b.U0(bundle, "expired_event_params", Bundle.class, null);
            cVar.n = ((Boolean) androidx.core.app.b.U0(bundle, "active", Boolean.class, Boolean.FALSE)).booleanValue();
            cVar.m = ((Long) androidx.core.app.b.U0(bundle, "creation_timestamp", Long.class, 0L)).longValue();
            cVar.o = ((Long) androidx.core.app.b.U0(bundle, "triggered_timestamp", Long.class, 0L)).longValue();
            arrayList.add(cVar);
        }
        return arrayList;
    }

    @Override // defpackage.vy
    public int getMaxUserProperties(@RecentlyNonNull String str) {
        return this.a.k(str);
    }

    @Override // defpackage.vy
    public void logEvent(@RecentlyNonNull String str, @RecentlyNonNull String str2, @RecentlyNonNull Bundle bundle) {
        if (bundle == null) {
            bundle = new Bundle();
        }
        if (b.a(str) && b.b(str2, bundle) && b.e(str, str2, bundle)) {
            if ("clx".equals(str) && "_ae".equals(str2)) {
                bundle.putLong("_r", 1);
            }
            this.a.m(str, str2, bundle);
        }
    }
}
