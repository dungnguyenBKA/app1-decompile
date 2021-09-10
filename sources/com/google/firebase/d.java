package com.google.firebase;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import defpackage.x50;

final /* synthetic */ class d implements x50.a {
    private static final d a = new d();

    private d() {
    }

    public static x50.a b() {
        return a;
    }

    @Override // defpackage.x50.a
    public String a(Object obj) {
        ApplicationInfo applicationInfo = ((Context) obj).getApplicationInfo();
        return applicationInfo != null ? String.valueOf(applicationInfo.targetSdkVersion) : "";
    }
}
