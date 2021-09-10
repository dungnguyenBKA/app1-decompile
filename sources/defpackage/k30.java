package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.Locale;
import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONObject;

/* renamed from: k30  reason: default package */
public class k30 implements l30 {
    private final Context a;
    private final u30 b;
    private final m30 c;
    private final d10 d;
    private final g30 e;
    private final v30 f;
    private final n00 g;
    private final AtomicReference<s30> h;
    private final AtomicReference<lw<p30>> i = new AtomicReference<>(new lw());

    k30(Context context, u30 u30, d10 d10, m30 m30, g30 g30, v30 v30, n00 n00) {
        AtomicReference<s30> atomicReference = new AtomicReference<>();
        this.h = atomicReference;
        this.a = context;
        this.b = u30;
        this.d = d10;
        this.c = m30;
        this.e = g30;
        this.f = v30;
        this.g = n00;
        atomicReference.set(h30.b(d10));
    }

    static boolean f(k30 k30, String str) {
        SharedPreferences.Editor edit = sz.i(k30.a).edit();
        edit.putString("existing_instance_identifier", str);
        edit.apply();
        return true;
    }

    public static k30 i(Context context, String str, t00 t00, t20 t20, String str2, String str3, n00 n00) {
        String d2 = t00.d();
        d10 d10 = new d10();
        m30 m30 = new m30(d10);
        g30 g30 = new g30(context);
        v30 v30 = new v30(String.format(Locale.US, "https://firebase-settings.crashlytics.com/spi/v2/platforms/android/gmp/%s/settings", str), t20);
        String e2 = t00.e();
        String f2 = t00.f();
        String g2 = t00.g();
        String[] strArr = {sz.g(context), str, str3, str2};
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < 4; i2++) {
            String str4 = strArr[i2];
            if (str4 != null) {
                arrayList.add(str4.replace("-", "").toLowerCase(Locale.US));
            }
        }
        Collections.sort(arrayList);
        StringBuilder sb = new StringBuilder();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            sb.append((String) it.next());
        }
        String sb2 = sb.toString();
        return new k30(context, new u30(str, e2, f2, g2, t00, sb2.length() > 0 ? sz.n(sb2) : null, str3, str2, (d2 != null ? o00.APP_STORE : o00.DEVELOPER).a()), d10, m30, g30, v30, n00);
    }

    private t30 k(i30 i30) {
        Exception e2;
        t30 t30 = null;
        try {
            if (i30.SKIP_CACHE_LOOKUP.equals(i30)) {
                return null;
            }
            JSONObject a2 = this.e.a();
            if (a2 != null) {
                t30 a3 = this.c.a(a2);
                if (a3 != null) {
                    n(a2, "Loaded cached settings: ");
                    Objects.requireNonNull(this.d);
                    long currentTimeMillis = System.currentTimeMillis();
                    if (!i30.IGNORE_CACHE_EXPIRATION.equals(i30)) {
                        if (a3.d < currentTimeMillis) {
                            az.f().h("Cached settings have expired.");
                            return null;
                        }
                    }
                    try {
                        az.f().h("Returning cached settings.");
                        return a3;
                    } catch (Exception e3) {
                        e2 = e3;
                        t30 = a3;
                        az.f().e("Failed to get cached settings", e2);
                        return t30;
                    }
                } else {
                    az.f().e("Failed to parse cached settings data.", null);
                    return null;
                }
            } else {
                az.f().b("No cached settings data found.");
                return null;
            }
        } catch (Exception e4) {
            e2 = e4;
            az.f().e("Failed to get cached settings", e2);
            return t30;
        }
    }

    /* access modifiers changed from: private */
    public void n(JSONObject jSONObject, String str) {
        az f2 = az.f();
        StringBuilder q = ic.q(str);
        q.append(jSONObject.toString());
        f2.b(q.toString());
    }

    public kw<p30> j() {
        return this.i.get().a();
    }

    public s30 l() {
        return this.h.get();
    }

    public kw<Void> m(Executor executor) {
        t30 k;
        i30 i30 = i30.USE_CACHE;
        if ((!sz.i(this.a).getString("existing_instance_identifier", "").equals(this.b.f)) || (k = k(i30)) == null) {
            t30 k2 = k(i30.IGNORE_CACHE_EXPIRATION);
            if (k2 != null) {
                this.h.set(k2);
                this.i.get().e(k2.a);
            }
            return this.g.f().o(executor, new j30(this));
        }
        this.h.set(k);
        this.i.get().e(k.a);
        return nw.d(null);
    }
}
