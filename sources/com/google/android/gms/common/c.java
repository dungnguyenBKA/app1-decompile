package com.google.android.gms.common;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.util.TypedValue;
import androidx.core.app.f;
import androidx.core.app.g;
import androidx.fragment.app.FragmentActivity;
import com.google.ads.ADRequestList;
import com.google.android.gms.common.api.GoogleApiActivity;
import com.google.android.gms.common.internal.d;
import com.google.android.gms.common.internal.e;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.internal.base.zap;
import java.util.Objects;
import photoeditor.cutout.backgrounderaser.R;

public class c extends d {
    private static final Object c = new Object();
    private static final c d = new c();

    /* access modifiers changed from: private */
    @SuppressLint({"HandlerLeak"})
    public class a extends zap {
        private final Context a;

        /* JADX INFO: super call moved to the top of the method (can break code semantics) */
        public a(Context context) {
            super(Looper.myLooper() == null ? Looper.getMainLooper() : Looper.myLooper());
            this.a = context.getApplicationContext();
        }

        public final void handleMessage(Message message) {
            int i = message.what;
            if (i != 1) {
                StringBuilder sb = new StringBuilder(50);
                sb.append("Don't know how to handle this message: ");
                sb.append(i);
                Log.w("GoogleApiAvailability", sb.toString());
                return;
            }
            int d = c.this.d(this.a);
            Objects.requireNonNull(c.this);
            if (g.isUserRecoverableError(d)) {
                c.this.i(this.a, d);
            }
        }
    }

    public static c g() {
        return d;
    }

    static Dialog j(Context context, int i, e eVar, DialogInterface.OnCancelListener onCancelListener) {
        String str;
        AlertDialog.Builder builder = null;
        if (i == 0) {
            return null;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(16843529, typedValue, true);
        if ("Theme.Dialog.Alert".equals(context.getResources().getResourceEntryName(typedValue.resourceId))) {
            builder = new AlertDialog.Builder(context, 5);
        }
        if (builder == null) {
            builder = new AlertDialog.Builder(context);
        }
        builder.setMessage(d.b(context, i));
        if (onCancelListener != null) {
            builder.setOnCancelListener(onCancelListener);
        }
        Resources resources = context.getResources();
        if (i == 1) {
            str = resources.getString(R.string.b1);
        } else if (i == 2) {
            str = resources.getString(R.string.b8);
        } else if (i != 3) {
            str = resources.getString(17039370);
        } else {
            str = resources.getString(R.string.ay);
        }
        if (str != null) {
            builder.setPositiveButton(str, eVar);
        }
        String e = d.e(context, i);
        if (e != null) {
            builder.setTitle(e);
        }
        return builder.create();
    }

    static void k(Activity activity, Dialog dialog, String str, DialogInterface.OnCancelListener onCancelListener) {
        if (activity instanceof FragmentActivity) {
            i.u1(dialog, onCancelListener).t1(((FragmentActivity) activity).getSupportFragmentManager(), str);
            return;
        }
        b.a(dialog, onCancelListener).show(activity.getFragmentManager(), str);
    }

    @TargetApi(20)
    private final void l(Context context, int i, PendingIntent pendingIntent) {
        int i2;
        if (i == 18) {
            new a(context).sendEmptyMessageDelayed(1, 120000);
        } else if (pendingIntent != null) {
            String d2 = d.d(context, i);
            String c2 = d.c(context, i);
            Resources resources = context.getResources();
            NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
            g gVar = new g(context, null);
            gVar.i(true);
            gVar.c(true);
            gVar.g(d2);
            f fVar = new f();
            fVar.b(c2);
            gVar.l(fVar);
            if (com.google.android.gms.common.util.c.g(context)) {
                n.j(com.google.android.gms.common.util.c.a());
                gVar.k(context.getApplicationInfo().icon);
                gVar.j(2);
                if (com.google.android.gms.common.util.c.h(context)) {
                    gVar.b.add(new androidx.core.app.e(R.drawable.dx, resources.getString(R.string.bc), pendingIntent));
                } else {
                    gVar.e(pendingIntent);
                }
            } else {
                gVar.k(17301642);
                gVar.m(resources.getString(R.string.b5));
                gVar.n(System.currentTimeMillis());
                gVar.e(pendingIntent);
                gVar.f(c2);
            }
            if (com.google.android.gms.common.util.c.c()) {
                n.j(com.google.android.gms.common.util.c.c());
                synchronized (c) {
                }
                NotificationChannel notificationChannel = notificationManager.getNotificationChannel("com.google.android.gms.availability");
                String string = context.getResources().getString(R.string.b4);
                if (notificationChannel == null) {
                    notificationManager.createNotificationChannel(new NotificationChannel("com.google.android.gms.availability", string, 4));
                } else if (!string.contentEquals(notificationChannel.getName())) {
                    notificationChannel.setName(string);
                    notificationManager.createNotificationChannel(notificationChannel);
                }
                gVar.d("com.google.android.gms.availability");
            }
            Notification a2 = gVar.a();
            if (i == 1 || i == 2 || i == 3) {
                i2 = 10436;
                g.sCanceledAvailabilityNotification.set(false);
            } else {
                i2 = 39789;
            }
            notificationManager.notify(i2, a2);
        } else if (i == 6) {
            Log.w("GoogleApiAvailability", "Missing resolution for ConnectionResult.RESOLUTION_REQUIRED. Call GoogleApiAvailability#showErrorNotification(Context, ConnectionResult) instead.");
        }
    }

    @Override // com.google.android.gms.common.d
    public Intent a(Context context, int i, String str) {
        return super.a(context, i, str);
    }

    @Override // com.google.android.gms.common.d
    public PendingIntent b(Context context, int i, int i2) {
        Intent a2 = a(context, i, null);
        if (a2 == null) {
            return null;
        }
        return PendingIntent.getActivity(context, i2, a2, 134217728);
    }

    @Override // com.google.android.gms.common.d
    public int d(Context context) {
        return e(context, d.a);
    }

    @Override // com.google.android.gms.common.d
    public int e(Context context, int i) {
        return super.e(context, i);
    }

    public Dialog f(Activity activity, int i, int i2, DialogInterface.OnCancelListener onCancelListener) {
        return j(activity, i, e.a(activity, super.a(activity, i, "d"), i2), onCancelListener);
    }

    public boolean h(Activity activity, int i, int i2, DialogInterface.OnCancelListener onCancelListener) {
        Dialog j = j(activity, i, e.a(activity, super.a(activity, i, "d"), i2), onCancelListener);
        if (j == null) {
            return false;
        }
        k(activity, j, GooglePlayServicesUtil.GMS_ERROR_DIALOG, onCancelListener);
        return true;
    }

    public void i(Context context, int i) {
        PendingIntent pendingIntent;
        Intent a2 = super.a(context, i, ADRequestList.ORDER_NULL);
        if (a2 == null) {
            pendingIntent = null;
        } else {
            pendingIntent = PendingIntent.getActivity(context, 0, a2, 134217728);
        }
        l(context, i, pendingIntent);
    }

    public final boolean m(Context context, ConnectionResult connectionResult, int i) {
        PendingIntent pendingIntent;
        if (connectionResult.k0()) {
            pendingIntent = connectionResult.j0();
        } else {
            Intent a2 = a(context, connectionResult.o(), null);
            if (a2 == null) {
                pendingIntent = null;
            } else {
                pendingIntent = PendingIntent.getActivity(context, 0, a2, 134217728);
            }
        }
        if (pendingIntent == null) {
            return false;
        }
        int o = connectionResult.o();
        int i2 = GoogleApiActivity.c;
        Intent intent = new Intent(context, GoogleApiActivity.class);
        intent.putExtra("pending_intent", pendingIntent);
        intent.putExtra("failing_client_id", i);
        intent.putExtra("notify_manager", true);
        l(context, o, PendingIntent.getActivity(context, 0, intent, 134217728));
        return true;
    }
}
