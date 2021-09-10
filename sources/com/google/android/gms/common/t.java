package com.google.android.gms.common;

import android.util.Log;
import javax.annotation.CheckReturnValue;
import javax.annotation.Nullable;

/* access modifiers changed from: package-private */
@CheckReturnValue
public class t {
    private static final t d = new t(true, null, null);
    final boolean a;
    @Nullable
    private final String b;
    @Nullable
    private final Throwable c;

    t(boolean z, @Nullable String str, @Nullable Throwable th) {
        this.a = z;
        this.b = str;
        this.c = th;
    }

    static t a() {
        return d;
    }

    static t b(String str) {
        return new t(false, str, null);
    }

    /* access modifiers changed from: package-private */
    @Nullable
    public String c() {
        return this.b;
    }

    /* access modifiers changed from: package-private */
    public final void d() {
        if (!this.a && Log.isLoggable("GoogleCertificatesRslt", 3)) {
            if (this.c != null) {
                c();
            } else {
                c();
            }
        }
    }
}
