package com.google.android.gms.common;

import android.content.Context;
import android.os.RemoteException;
import android.os.StrictMode;
import android.util.Log;
import com.google.android.gms.common.internal.l0;
import com.google.android.gms.common.internal.m0;
import com.google.android.gms.common.util.a;
import com.google.android.gms.common.util.g;
import com.google.android.gms.dynamite.DynamiteModule;
import java.util.Objects;
import javax.annotation.CheckReturnValue;

/* access modifiers changed from: package-private */
@CheckReturnValue
public final class l {
    private static volatile m0 a;
    private static final Object b = new Object();
    private static Context c;

    static t a(String str, m mVar, boolean z, boolean z2) {
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            return d(str, mVar, z, z2);
        } finally {
            StrictMode.setThreadPolicy(allowThreadDiskReads);
        }
    }

    static final String b(boolean z, String str, m mVar) {
        return String.format("%s: pkg=%s, sha1=%s, atk=%s, ver=%s", !z && d(str, mVar, true, false).a ? "debug cert rejected" : "not whitelisted", str, g.a(a.b("SHA-1").digest(mVar.P())), Boolean.valueOf(z), "12451009.false");
    }

    static synchronized void c(Context context) {
        synchronized (l.class) {
            if (c == null) {
                c = context.getApplicationContext();
            } else {
                Log.w("GoogleCertificates", "GoogleCertificates has been initialized already");
            }
        }
    }

    private static t d(String str, m mVar, boolean z, boolean z2) {
        try {
            if (a == null) {
                Objects.requireNonNull(c, "null reference");
                synchronized (b) {
                    if (a == null) {
                        a = l0.O(DynamiteModule.e(c, DynamiteModule.k, "com.google.android.gms.googlecertificates").d("com.google.android.gms.common.GoogleCertificatesImpl"));
                    }
                }
            }
            Objects.requireNonNull(c, "null reference");
            try {
                if (a.I(new zzj(str, mVar, z, z2), aw.Q(c.getPackageManager()))) {
                    return t.a();
                }
                return new v(new n(z, str, mVar), null);
            } catch (RemoteException e) {
                Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e);
                return new t(false, "module call", e);
            }
        } catch (DynamiteModule.a e2) {
            Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e2);
            String valueOf = String.valueOf(e2.getMessage());
            return new t(false, valueOf.length() != 0 ? "module init: ".concat(valueOf) : new String("module init: "), e2);
        }
    }
}
