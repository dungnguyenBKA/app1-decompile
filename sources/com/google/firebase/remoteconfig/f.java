package com.google.firebase.remoteconfig;

import android.content.Context;
import android.util.Log;
import com.google.firebase.abt.a;
import com.google.firebase.abt.c;
import com.google.firebase.installations.g;
import com.google.firebase.remoteconfig.internal.e;
import com.google.firebase.remoteconfig.internal.k;
import com.google.firebase.remoteconfig.internal.m;
import com.google.firebase.remoteconfig.internal.n;
import com.google.firebase.remoteconfig.internal.p;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Executor;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class f {
    private final c a;
    private final Executor b;
    private final e c;
    private final e d;
    private final e e;
    private final k f;
    private final m g;
    private final n h;
    private final g i;

    f(Context context, com.google.firebase.c cVar, g gVar, c cVar2, Executor executor, e eVar, e eVar2, e eVar3, k kVar, m mVar, n nVar) {
        this.i = gVar;
        this.a = cVar2;
        this.b = executor;
        this.c = eVar;
        this.d = eVar2;
        this.e = eVar3;
        this.f = kVar;
        this.g = mVar;
        this.h = nVar;
    }

    static boolean a(f fVar, kw kwVar) {
        Objects.requireNonNull(fVar);
        if (!kwVar.m()) {
            return false;
        }
        fVar.c.b();
        if (kwVar.j() != null) {
            JSONArray c2 = ((com.google.firebase.remoteconfig.internal.f) kwVar.j()).c();
            if (fVar.a != null) {
                try {
                    fVar.a.c(l(c2));
                } catch (JSONException e2) {
                    Log.e("FirebaseRemoteConfig", "Could not parse ABT experiments from the JSON response.", e2);
                } catch (a e3) {
                    Log.w("FirebaseRemoteConfig", "Could not update ABT experiments.", e3);
                }
            }
        } else {
            Log.e("FirebaseRemoteConfig", "Activated configs written to disk are null.");
        }
        return true;
    }

    public static f e() {
        return ((n) com.google.firebase.c.h().f(n.class)).c();
    }

    static kw h(f fVar, kw kwVar, kw kwVar2) {
        if (!kwVar.m() || kwVar.j() == null) {
            return nw.d(Boolean.FALSE);
        }
        com.google.firebase.remoteconfig.internal.f fVar2 = (com.google.firebase.remoteconfig.internal.f) kwVar.j();
        if (kwVar2.m()) {
            com.google.firebase.remoteconfig.internal.f fVar3 = (com.google.firebase.remoteconfig.internal.f) kwVar2.j();
            if (!(fVar3 == null || !fVar2.e().equals(fVar3.e()))) {
                return nw.d(Boolean.FALSE);
            }
        }
        return fVar.d.h(fVar2).g(fVar.b, a.a(fVar));
    }

    static List<Map<String, String>> l(JSONArray jSONArray) {
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < jSONArray.length(); i2++) {
            HashMap hashMap = new HashMap();
            JSONObject jSONObject = jSONArray.getJSONObject(i2);
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                hashMap.put(next, jSONObject.getString(next));
            }
            arrayList.add(hashMap);
        }
        return arrayList;
    }

    public kw<Boolean> b() {
        kw<com.google.firebase.remoteconfig.internal.f> c2 = this.c.c();
        kw<com.google.firebase.remoteconfig.internal.f> c3 = this.d.c();
        return nw.f(c2, c3).h(this.b, c.a(this, c2, c3));
    }

    public kw<Void> c() {
        return this.f.a().n(d.b());
    }

    public kw<Boolean> d() {
        return this.f.a().n(d.b()).o(this.b, b.b(this));
    }

    public String f(String str) {
        return this.g.c(str);
    }

    public p g(String str) {
        return this.g.e(str);
    }

    public kw<Void> j(k kVar) {
        return nw.b(this.b, e.a(this, kVar));
    }

    /* access modifiers changed from: package-private */
    public void k() {
        this.d.c();
        this.e.c();
        this.c.c();
    }
}
