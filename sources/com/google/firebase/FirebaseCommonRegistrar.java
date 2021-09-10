package com.google.firebase;

import android.content.Context;
import android.os.Build;
import com.google.firebase.components.d;
import com.google.firebase.components.i;
import java.util.ArrayList;
import java.util.List;

public class FirebaseCommonRegistrar implements i {
    static /* synthetic */ String a(Context context) {
        String installerPackageName = context.getPackageManager().getInstallerPackageName(context.getPackageName());
        return installerPackageName != null ? b(installerPackageName) : "";
    }

    private static String b(String str) {
        return str.replace(' ', '_').replace('/', '_');
    }

    @Override // com.google.firebase.components.i
    public List<d<?>> getComponents() {
        String str;
        ArrayList arrayList = new ArrayList();
        arrayList.add(t50.b());
        arrayList.add(y40.b());
        arrayList.add(x50.a("fire-android", String.valueOf(Build.VERSION.SDK_INT)));
        arrayList.add(x50.a("fire-core", "19.5.0"));
        arrayList.add(x50.a("device-name", b(Build.PRODUCT)));
        arrayList.add(x50.a("device-model", b(Build.DEVICE)));
        arrayList.add(x50.a("device-brand", b(Build.BRAND)));
        arrayList.add(x50.b("android-target-sdk", d.b()));
        arrayList.add(x50.b("android-min-sdk", e.b()));
        arrayList.add(x50.b("android-platform", f.b()));
        arrayList.add(x50.b("android-installer", g.b()));
        try {
            str = tf0.f.toString();
        } catch (NoClassDefFoundError unused) {
            str = null;
        }
        if (str != null) {
            arrayList.add(x50.a("kotlin", str));
        }
        return arrayList;
    }
}
