package com.google.firebase.crashlytics.ndk;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.AssetManager;
import android.os.Build;
import android.text.TextUtils;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;

class JniNativeApi implements d {
    private static final boolean b;
    private Context a;

    static {
        boolean z;
        try {
            System.loadLibrary("crashlytics");
            z = true;
        } catch (UnsatisfiedLinkError e) {
            az f = az.f();
            StringBuilder q = ic.q("libcrashlytics could not be loaded. This APK may not have been compiled for this device's architecture. NDK crashes will not be reported to Crashlytics:\n");
            q.append(e.getLocalizedMessage());
            f.d(q.toString());
            z = false;
        }
        b = z;
    }

    public JniNativeApi(Context context) {
        this.a = context;
    }

    private native boolean nativeInit(String[] strArr, Object obj);

    public boolean a(String str, AssetManager assetManager) {
        String[] strArr;
        String str2 = Build.CPU_ABI;
        try {
            PackageInfo packageInfo = this.a.getPackageManager().getPackageInfo(this.a.getPackageName(), 9216);
            ArrayList arrayList = new ArrayList(10);
            arrayList.add(packageInfo.applicationInfo.sourceDir);
            if ((Build.VERSION.SDK_INT >= 21) && (strArr = packageInfo.applicationInfo.splitSourceDirs) != null) {
                Collections.addAll(arrayList, strArr);
            }
            String[] strArr2 = packageInfo.applicationInfo.sharedLibraryFiles;
            if (strArr2 != null) {
                Collections.addAll(arrayList, strArr2);
            }
            ArrayList arrayList2 = new ArrayList(10);
            File parentFile = new File(packageInfo.applicationInfo.nativeLibraryDir).getParentFile();
            if (parentFile != null) {
                arrayList2.add(new File(parentFile, str2).getPath());
                if (str2.startsWith("arm64")) {
                    arrayList2.add(new File(parentFile, "arm64").getPath());
                } else if (str2.startsWith("arm")) {
                    arrayList2.add(new File(parentFile, "arm").getPath());
                }
            }
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                String str3 = (String) it.next();
                if (str3.endsWith(".apk")) {
                    arrayList2.add(str3 + "!/lib/" + str2);
                }
            }
            arrayList2.add(System.getProperty("java.library.path"));
            arrayList2.add(packageInfo.applicationInfo.nativeLibraryDir);
            String str4 = File.pathSeparator;
            String[] strArr3 = {TextUtils.join(str4, arrayList), TextUtils.join(str4, arrayList2)};
            String str5 = strArr3[0];
            String str6 = strArr3[1];
            if (!b) {
                return false;
            }
            if (nativeInit(new String[]{str5, str6, str}, assetManager)) {
                return true;
            }
            return false;
        } catch (PackageManager.NameNotFoundException e) {
            az.f().e("Unable to compose package paths", e);
            throw new RuntimeException(e);
        }
    }
}
