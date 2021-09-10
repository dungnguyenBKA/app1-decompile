package com.google.firebase.components;

import android.app.Service;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.os.Bundle;
import android.util.Log;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class g<T> {
    private final T a;
    private final c<T> b;

    /* access modifiers changed from: private */
    public static class b implements c<Context> {
        private final Class<? extends Service> a;

        b(Class cls, a aVar) {
            this.a = cls;
        }

        public List a(Object obj) {
            Context context = (Context) obj;
            Bundle bundle = null;
            try {
                PackageManager packageManager = context.getPackageManager();
                if (packageManager == null) {
                    Log.w("ComponentDiscovery", "Context has no PackageManager.");
                } else {
                    ServiceInfo serviceInfo = packageManager.getServiceInfo(new ComponentName(context, this.a), 128);
                    if (serviceInfo == null) {
                        Log.w("ComponentDiscovery", this.a + " has no service info.");
                    } else {
                        bundle = serviceInfo.metaData;
                    }
                }
            } catch (PackageManager.NameNotFoundException unused) {
                Log.w("ComponentDiscovery", "Application info not found.");
            }
            if (bundle == null) {
                Log.w("ComponentDiscovery", "Could not retrieve metadata, returning empty list of registrars.");
                return Collections.emptyList();
            }
            ArrayList arrayList = new ArrayList();
            for (String str : bundle.keySet()) {
                if ("com.google.firebase.components.ComponentRegistrar".equals(bundle.get(str)) && str.startsWith("com.google.firebase.components:")) {
                    arrayList.add(str.substring(31));
                }
            }
            return arrayList;
        }
    }

    /* access modifiers changed from: package-private */
    public interface c<T> {
    }

    g(T t, c<T> cVar) {
        this.a = t;
        this.b = cVar;
    }

    public static g<Context> b(Context context, Class<? extends Service> cls) {
        return new g<>(context, new b(cls, null));
    }

    public List<d50<i>> a() {
        ArrayList arrayList = new ArrayList();
        for (String str : ((b) this.b).a(this.a)) {
            arrayList.add(f.a(str));
        }
        return arrayList;
    }
}
