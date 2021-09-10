package com.google.firebase.remoteconfig.internal;

import android.util.Log;
import com.google.android.gms.common.util.b;
import java.nio.charset.Charset;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.regex.Pattern;
import org.apache.http.protocol.HTTP;
import org.json.JSONException;

public class m {
    public static final /* synthetic */ int e = 0;
    private final Set<b<String, f>> a = new HashSet();
    private final Executor b;
    private final e c;
    private final e d;

    static {
        Charset.forName(HTTP.UTF_8);
        Pattern.compile("^(1|true|t|yes|y|on)$", 2);
        Pattern.compile("^(0|false|f|no|n|off|)$", 2);
    }

    public m(Executor executor, e eVar, e eVar2) {
        this.b = executor;
        this.c = eVar;
        this.d = eVar2;
    }

    private void b(String str, f fVar) {
        if (fVar != null) {
            synchronized (this.a) {
                for (b<String, f> bVar : this.a) {
                    this.b.execute(l.a(bVar, str, fVar));
                }
            }
        }
    }

    private static String d(e eVar, String str) {
        f d2 = eVar.d();
        if (d2 == null) {
            return null;
        }
        try {
            return d2.d().getString(str);
        } catch (JSONException unused) {
            return null;
        }
    }

    private static void f(String str, String str2) {
        Log.w("FirebaseRemoteConfig", String.format("No value of type '%s' exists for parameter key '%s'.", str2, str));
    }

    public void a(b<String, f> bVar) {
        synchronized (this.a) {
            this.a.add(bVar);
        }
    }

    public String c(String str) {
        String d2 = d(this.c, str);
        if (d2 != null) {
            b(str, this.c.d());
            return d2;
        }
        String d3 = d(this.d, str);
        if (d3 != null) {
            return d3;
        }
        f(str, "String");
        return "";
    }

    public p e(String str) {
        String d2 = d(this.c, str);
        if (d2 != null) {
            b(str, this.c.d());
            return new p(d2, 2);
        }
        String d3 = d(this.d, str);
        if (d3 != null) {
            return new p(d3, 1);
        }
        f(str, "FirebaseRemoteConfigValue");
        return new p("", 0);
    }
}
