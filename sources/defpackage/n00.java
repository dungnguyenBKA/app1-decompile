package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import com.google.firebase.c;

/* renamed from: n00  reason: default package */
public class n00 {
    private final SharedPreferences a;
    private final c b;
    private final Object c;
    lw<Void> d = new lw<>();
    boolean e = false;
    private boolean f = false;
    private Boolean g;
    private final lw<Void> h = new lw<>();

    public n00(c cVar) {
        Boolean bool;
        Object obj = new Object();
        this.c = obj;
        Context g2 = cVar.g();
        this.b = cVar;
        SharedPreferences i = sz.i(g2);
        this.a = i;
        if (i.contains("firebase_crashlytics_collection_enabled")) {
            this.f = false;
            bool = Boolean.valueOf(i.getBoolean("firebase_crashlytics_collection_enabled", true));
        } else {
            bool = null;
        }
        this.g = bool == null ? a(g2) : bool;
        synchronized (obj) {
            if (c()) {
                this.d.e(null);
                this.e = true;
            }
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:15:0x0037  */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x003b  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private java.lang.Boolean a(android.content.Context r5) {
        /*
            r4 = this;
            java.lang.String r0 = "firebase_crashlytics_collection_enabled"
            r1 = 0
            android.content.pm.PackageManager r2 = r5.getPackageManager()     // Catch:{ NameNotFoundException -> 0x002a }
            if (r2 == 0) goto L_0x0034
            java.lang.String r5 = r5.getPackageName()     // Catch:{ NameNotFoundException -> 0x002a }
            r3 = 128(0x80, float:1.794E-43)
            android.content.pm.ApplicationInfo r5 = r2.getApplicationInfo(r5, r3)     // Catch:{ NameNotFoundException -> 0x002a }
            if (r5 == 0) goto L_0x0034
            android.os.Bundle r2 = r5.metaData     // Catch:{ NameNotFoundException -> 0x002a }
            if (r2 == 0) goto L_0x0034
            boolean r2 = r2.containsKey(r0)     // Catch:{ NameNotFoundException -> 0x002a }
            if (r2 == 0) goto L_0x0034
            android.os.Bundle r5 = r5.metaData     // Catch:{ NameNotFoundException -> 0x002a }
            boolean r5 = r5.getBoolean(r0)     // Catch:{ NameNotFoundException -> 0x002a }
            java.lang.Boolean r5 = java.lang.Boolean.valueOf(r5)     // Catch:{ NameNotFoundException -> 0x002a }
            goto L_0x0035
        L_0x002a:
            r5 = move-exception
            az r0 = defpackage.az.f()
            java.lang.String r2 = "Could not read data collection permission from manifest"
            r0.e(r2, r5)
        L_0x0034:
            r5 = r1
        L_0x0035:
            if (r5 != 0) goto L_0x003b
            r5 = 0
            r4.f = r5
            return r1
        L_0x003b:
            r0 = 1
            r4.f = r0
            java.lang.Boolean r0 = java.lang.Boolean.TRUE
            boolean r5 = r0.equals(r5)
            java.lang.Boolean r5 = java.lang.Boolean.valueOf(r5)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.n00.a(android.content.Context):java.lang.Boolean");
    }

    public void b(boolean z) {
        if (z) {
            this.h.e(null);
            return;
        }
        throw new IllegalStateException("An invalid data collection token was used.");
    }

    public synchronized boolean c() {
        boolean z;
        String str;
        Boolean bool = this.g;
        if (bool != null) {
            z = bool.booleanValue();
        } else {
            z = this.b.p();
        }
        String str2 = z ? "ENABLED" : "DISABLED";
        if (this.g == null) {
            str = "global Firebase setting";
        } else {
            str = this.f ? "firebase_crashlytics_collection_enabled manifest flag" : "API";
        }
        az.f().b(String.format("Crashlytics automatic data collection %s by %s.", str2, str));
        return z;
    }

    public synchronized void d(Boolean bool) {
        Boolean bool2;
        if (bool != null) {
            try {
                this.f = false;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (bool != null) {
            bool2 = bool;
        } else {
            bool2 = a(this.b.g());
        }
        this.g = bool2;
        SharedPreferences.Editor edit = this.a.edit();
        if (bool != null) {
            edit.putBoolean("firebase_crashlytics_collection_enabled", bool.booleanValue());
        } else {
            edit.remove("firebase_crashlytics_collection_enabled");
        }
        edit.commit();
        synchronized (this.c) {
            if (c()) {
                if (!this.e) {
                    this.d.e(null);
                    this.e = true;
                }
            } else if (this.e) {
                this.d = new lw<>();
                this.e = false;
            }
        }
    }

    public kw<Void> e() {
        kw<Void> a2;
        synchronized (this.c) {
            a2 = this.d.a();
        }
        return a2;
    }

    public kw<Void> f() {
        kw<Void> a2;
        kw<Void> a3 = this.h.a();
        synchronized (this.c) {
            a2 = this.d.a();
        }
        int i = h10.b;
        lw lwVar = new lw();
        g10 g10 = new g10(lwVar);
        a3.f(g10);
        a2.f(g10);
        return lwVar.a();
    }
}
