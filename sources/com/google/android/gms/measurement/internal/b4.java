package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import androidx.legacy.content.WakefulBroadcastReceiver;
import com.google.android.gms.measurement.AppMeasurementReceiver;
import java.util.Objects;

public final class b4 {
    private final a4 a;

    public b4(a4 a4Var) {
        this.a = a4Var;
    }

    public static boolean a(Context context) {
        ActivityInfo receiverInfo;
        Objects.requireNonNull(context, "null reference");
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager == null || (receiverInfo = packageManager.getReceiverInfo(new ComponentName(context, "com.google.android.gms.measurement.AppMeasurementReceiver"), 0)) == null || !receiverInfo.enabled) {
                return false;
            }
            return true;
        } catch (PackageManager.NameNotFoundException unused) {
        }
    }

    public final void b(Context context, Intent intent) {
        i3 c = j4.g(context, null, null).c();
        if (intent == null) {
            c.q().a("Receiver called with null intent");
            return;
        }
        String action = intent.getAction();
        c.v().b("Local receiver got", action);
        if ("com.google.android.gms.measurement.UPLOAD".equals(action)) {
            Intent className = new Intent().setClassName(context, "com.google.android.gms.measurement.AppMeasurementService");
            className.setAction("com.google.android.gms.measurement.UPLOAD");
            c.v().a("Starting wakeful intent.");
            Objects.requireNonNull((AppMeasurementReceiver) this.a);
            WakefulBroadcastReceiver.b(context, className);
        } else if ("com.android.vending.INSTALL_REFERRER".equals(action)) {
            c.q().a("Install Referrer Broadcasts are deprecated");
        }
    }
}
