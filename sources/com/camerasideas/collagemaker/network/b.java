package com.camerasideas.collagemaker.network;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.IntentFilter;

public class b {
    private static b b;
    private NetworkStateReceiver a = new NetworkStateReceiver();

    private b() {
    }

    public static b a() {
        if (b == null) {
            synchronized (b.class) {
                if (b == null) {
                    b = new b();
                }
            }
        }
        return b;
    }

    @SuppressLint({"MissingPermission"})
    public void b(Context context) {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        context.registerReceiver(this.a, intentFilter);
    }

    public void c(a aVar) {
        this.a.a(aVar);
    }
}
