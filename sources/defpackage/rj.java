package defpackage;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.List;

@Deprecated
/* renamed from: rj  reason: default package */
public final class rj {
    private final Context a;

    public rj(Context context) {
        this.a = context;
    }

    private static pj b(String str) {
        Class cls;
        Class cls2;
        Class cls3;
        Class cls4;
        try {
            try {
                Object newInstance = Class.forName(str).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                if (newInstance instanceof pj) {
                    return (pj) newInstance;
                }
                throw new RuntimeException("Expected instanceof GlideModule, but found: " + newInstance);
            } catch (InstantiationException e) {
                c(cls, e);
                throw null;
            } catch (IllegalAccessException e2) {
                c(cls2, e2);
                throw null;
            } catch (NoSuchMethodException e3) {
                c(cls3, e3);
                throw null;
            } catch (InvocationTargetException e4) {
                c(cls4, e4);
                throw null;
            }
        } catch (ClassNotFoundException e5) {
            throw new IllegalArgumentException("Unable to find GlideModule implementation", e5);
        }
    }

    private static void c(Class<?> cls, Exception exc) {
        throw new RuntimeException("Unable to instantiate GlideModule implementation for " + cls, exc);
    }

    public List<pj> a() {
        Log.isLoggable("ManifestParser", 3);
        ArrayList arrayList = new ArrayList();
        try {
            ApplicationInfo applicationInfo = this.a.getPackageManager().getApplicationInfo(this.a.getPackageName(), 128);
            if (applicationInfo.metaData == null) {
                Log.isLoggable("ManifestParser", 3);
                return arrayList;
            }
            if (Log.isLoggable("ManifestParser", 2)) {
                String str = "Got app info metadata: " + applicationInfo.metaData;
            }
            for (String str2 : applicationInfo.metaData.keySet()) {
                if ("GlideModule".equals(applicationInfo.metaData.get(str2))) {
                    arrayList.add(b(str2));
                    Log.isLoggable("ManifestParser", 3);
                }
            }
            Log.isLoggable("ManifestParser", 3);
            return arrayList;
        } catch (PackageManager.NameNotFoundException e) {
            throw new RuntimeException("Unable to find metadata to parse GlideModules", e);
        }
    }
}
