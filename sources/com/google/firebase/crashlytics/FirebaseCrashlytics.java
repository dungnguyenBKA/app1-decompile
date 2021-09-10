package com.google.firebase.crashlytics;

import com.google.firebase.c;
import defpackage.vy;
import java.util.Objects;
import java.util.concurrent.Callable;

public class FirebaseCrashlytics {
    private final i00 a;

    class a implements dw<Void, Object> {
        a() {
        }

        @Override // defpackage.dw
        public Object then(kw<Void> kwVar) {
            if (kwVar.m()) {
                return null;
            }
            az.f().e("Error fetching settings.", kwVar.i());
            return null;
        }
    }

    class b implements Callable<Void> {
        final /* synthetic */ boolean b;
        final /* synthetic */ i00 c;
        final /* synthetic */ k30 d;

        b(boolean z, i00 i00, k30 k30) {
            this.b = z;
            this.c = i00;
            this.d = k30;
        }

        /* Return type fixed from 'java.lang.Object' to match base method */
        @Override // java.util.concurrent.Callable
        public Void call() {
            if (!this.b) {
                return null;
            }
            this.c.j(this.d);
            return null;
        }
    }

    private FirebaseCrashlytics(i00 i00) {
        this.a = i00;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v7, types: [hz] */
    /* JADX WARN: Type inference failed for: r0v9, types: [com.google.firebase.crashlytics.a] */
    /* JADX WARN: Type inference failed for: r3v3, types: [fz, ez] */
    /* JADX WARNING: Unknown variable types count: 3 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    static com.google.firebase.crashlytics.FirebaseCrashlytics a(com.google.firebase.c r11, com.google.firebase.installations.g r12, defpackage.zy r13, defpackage.vy r14) {
        /*
        // Method dump skipped, instructions count: 267
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.crashlytics.FirebaseCrashlytics.a(com.google.firebase.c, com.google.firebase.installations.g, zy, vy):com.google.firebase.crashlytics.FirebaseCrashlytics");
    }

    private static vy.a b(vy vyVar, a aVar) {
        vy.a c = vyVar.c("clx", aVar);
        if (c == null) {
            az.f().b("Could not register AnalyticsConnectorListener with Crashlytics origin.");
            c = vyVar.c("crash", aVar);
            if (c != null) {
                az.f().i("A new version of the Google Analytics for Firebase SDK is now available. For improved performance and compatibility with Crashlytics, please update to the latest version.");
            }
        }
        return c;
    }

    public static FirebaseCrashlytics getInstance() {
        FirebaseCrashlytics firebaseCrashlytics = (FirebaseCrashlytics) c.h().f(FirebaseCrashlytics.class);
        Objects.requireNonNull(firebaseCrashlytics, "FirebaseCrashlytics component is not present.");
        return firebaseCrashlytics;
    }

    public kw<Boolean> checkForUnsentReports() {
        return this.a.e();
    }

    public void deleteUnsentReports() {
        this.a.f();
    }

    public boolean didCrashOnPreviousExecution() {
        return this.a.g();
    }

    public void log(String str) {
        this.a.m(str);
    }

    public void recordException(Throwable th) {
        if (th == null) {
            az.f().i("A null value was passed to recordException. Ignoring.");
        } else {
            this.a.n(th);
        }
    }

    public void sendUnsentReports() {
        this.a.r();
    }

    public void setCrashlyticsCollectionEnabled(boolean z) {
        this.a.s(Boolean.valueOf(z));
    }

    public void setCustomKey(String str, boolean z) {
        this.a.t(str, Boolean.toString(z));
    }

    public void setCustomKeys(c cVar) {
        throw null;
    }

    public void setUserId(String str) {
        this.a.u(str);
    }

    public void setCrashlyticsCollectionEnabled(Boolean bool) {
        this.a.s(bool);
    }

    public void setCustomKey(String str, double d) {
        this.a.t(str, Double.toString(d));
    }

    public void setCustomKey(String str, float f) {
        this.a.t(str, Float.toString(f));
    }

    public void setCustomKey(String str, int i) {
        this.a.t(str, Integer.toString(i));
    }

    public void setCustomKey(String str, long j) {
        this.a.t(str, Long.toString(j));
    }

    public void setCustomKey(String str, String str2) {
        this.a.t(str, str2);
    }
}
