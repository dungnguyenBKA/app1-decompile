package com.google.firebase;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Build;
import defpackage.x50;

final /* synthetic */ class e implements x50.a {
    private static final e a = new e();

    private e() {
    }

    public static x50.a b() {
        return a;
    }

    @Override // defpackage.x50.a
    public String a(Object obj) {
        ApplicationInfo applicationInfo = ((Context) obj).getApplicationInfo();
        return (applicationInfo == null || Build.VERSION.SDK_INT < 24) ? "" : String.valueOf(applicationInfo.minSdkVersion);
    }
}
