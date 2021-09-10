package com.google.android.gms.ads.internal.util;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.google.android.gms.internal.ads.zzabp;
import com.google.android.gms.internal.ads.zzwr;
import java.util.ArrayList;
import java.util.Map;
import java.util.WeakHashMap;
import javax.annotation.concurrent.GuardedBy;

public final class zzbv {
    @GuardedBy("this")
    private final BroadcastReceiver a = new q(this);
    @GuardedBy("this")
    private final Map<BroadcastReceiver, IntentFilter> b = new WeakHashMap();
    private boolean c = false;
    private boolean d;
    private Context e;

    static void a(zzbv zzbv, Context context, Intent intent) {
        synchronized (zzbv) {
            ArrayList arrayList = new ArrayList();
            for (Map.Entry<BroadcastReceiver, IntentFilter> entry : zzbv.b.entrySet()) {
                if (entry.getValue().hasAction(intent.getAction())) {
                    arrayList.add(entry.getKey());
                }
            }
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                ((BroadcastReceiver) obj).onReceive(context, intent);
            }
        }
    }

    public final synchronized void initialize(Context context) {
        if (!this.c) {
            Context applicationContext = context.getApplicationContext();
            this.e = applicationContext;
            if (applicationContext == null) {
                this.e = context;
            }
            zzabp.initialize(this.e);
            this.d = ((Boolean) zzwr.zzqr().zzd(zzabp.zzcth)).booleanValue();
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.SCREEN_ON");
            intentFilter.addAction("android.intent.action.SCREEN_OFF");
            intentFilter.addAction("android.intent.action.USER_PRESENT");
            this.e.registerReceiver(this.a, intentFilter);
            this.c = true;
        }
    }

    public final synchronized void zza(Context context, BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) {
        if (this.d) {
            this.b.put(broadcastReceiver, intentFilter);
        } else {
            context.registerReceiver(broadcastReceiver, intentFilter);
        }
    }

    public final synchronized void zza(Context context, BroadcastReceiver broadcastReceiver) {
        if (this.d) {
            this.b.remove(broadcastReceiver);
        } else {
            context.unregisterReceiver(broadcastReceiver);
        }
    }
}
