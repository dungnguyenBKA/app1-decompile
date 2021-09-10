package com.google.android.gms.common;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.util.Log;
import java.util.Objects;
import javax.annotation.CheckReturnValue;
import javax.annotation.Nullable;

@CheckReturnValue
public class h {
    @Nullable
    private static h b;
    private final Context a;

    private h(Context context) {
        this.a = context.getApplicationContext();
    }

    public static h a(Context context) {
        Objects.requireNonNull(context, "null reference");
        synchronized (h.class) {
            if (b == null) {
                l.c(context);
                b = new h(context);
            }
        }
        return b;
    }

    @Nullable
    private static m d(PackageInfo packageInfo, m... mVarArr) {
        Signature[] signatureArr = packageInfo.signatures;
        if (signatureArr == null) {
            return null;
        }
        if (signatureArr.length != 1) {
            Log.w("GoogleSignatureVerifier", "Package has more than one signature.");
            return null;
        }
        p pVar = new p(packageInfo.signatures[0].toByteArray());
        for (int i = 0; i < mVarArr.length; i++) {
            if (mVarArr[i].equals(pVar)) {
                return mVarArr[i];
            }
        }
        return null;
    }

    public static boolean e(PackageInfo packageInfo, boolean z) {
        m mVar;
        if (!(packageInfo == null || packageInfo.signatures == null)) {
            if (z) {
                mVar = d(packageInfo, r.a);
            } else {
                mVar = d(packageInfo, r.a[0]);
            }
            if (mVar != null) {
                return true;
            }
        }
        return false;
    }

    public boolean b(PackageInfo packageInfo) {
        if (packageInfo == null) {
            return false;
        }
        if (e(packageInfo, false)) {
            return true;
        }
        if (e(packageInfo, true)) {
            if (g.honorsDebugCertificates(this.a)) {
                return true;
            }
            Log.w("GoogleSignatureVerifier", "Test-keys aren't accepted on this build.");
        }
        return false;
    }

    public boolean c(int i) {
        t tVar;
        ApplicationInfo applicationInfo;
        String[] i2 = yv.a(this.a).i(i);
        if (i2 != null && i2.length != 0) {
            tVar = null;
            int length = i2.length;
            int i3 = 0;
            while (true) {
                if (i3 >= length) {
                    Objects.requireNonNull(tVar, "null reference");
                    break;
                }
                String str = i2[i3];
                try {
                    PackageInfo g = yv.a(this.a).g(str);
                    boolean honorsDebugCertificates = g.honorsDebugCertificates(this.a);
                    if (g == null) {
                        tVar = t.b("null pkg");
                    } else {
                        Signature[] signatureArr = g.signatures;
                        if (signatureArr != null) {
                            if (signatureArr.length == 1) {
                                p pVar = new p(g.signatures[0].toByteArray());
                                String str2 = g.packageName;
                                t a2 = l.a(str2, pVar, honorsDebugCertificates, false);
                                tVar = (!a2.a || (applicationInfo = g.applicationInfo) == null || (applicationInfo.flags & 2) == 0 || !l.a(str2, pVar, false, true).a) ? a2 : t.b("debuggable release cert app rejected");
                            }
                        }
                        tVar = t.b("single cert required");
                    }
                } catch (PackageManager.NameNotFoundException unused) {
                    String valueOf = String.valueOf(str);
                    tVar = t.b(valueOf.length() != 0 ? "no pkg ".concat(valueOf) : new String("no pkg "));
                }
                if (tVar.a) {
                    break;
                }
                i3++;
            }
        } else {
            tVar = t.b("no pkgs");
        }
        tVar.d();
        return tVar.a;
    }
}
