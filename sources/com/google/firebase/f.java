package com.google.firebase;

import android.content.Context;
import android.os.Build;
import defpackage.x50;

final /* synthetic */ class f implements x50.a {
    private static final f a = new f();

    private f() {
    }

    public static x50.a b() {
        return a;
    }

    @Override // defpackage.x50.a
    public String a(Object obj) {
        Context context = (Context) obj;
        int i = Build.VERSION.SDK_INT;
        if (context.getPackageManager().hasSystemFeature("android.hardware.type.television")) {
            return "tv";
        }
        if (i >= 20 && context.getPackageManager().hasSystemFeature("android.hardware.type.watch")) {
            return "watch";
        }
        if (i < 23 || !context.getPackageManager().hasSystemFeature("android.hardware.type.automotive")) {
            return (i < 26 || !context.getPackageManager().hasSystemFeature("android.hardware.type.embedded")) ? "" : "embedded";
        }
        return "auto";
    }
}
