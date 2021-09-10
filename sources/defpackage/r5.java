package defpackage;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import androidx.work.h;

/* renamed from: r5  reason: default package */
public class r5 extends o5<Boolean> {
    private static final String i = h.f("StorageNotLowTracker");

    public r5(Context context, m6 m6Var) {
        super(context, m6Var);
    }

    @Override // defpackage.p5
    public Object b() {
        Context context = this.b;
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.DEVICE_STORAGE_OK");
        intentFilter.addAction("android.intent.action.DEVICE_STORAGE_LOW");
        Intent registerReceiver = context.registerReceiver(null, intentFilter);
        if (registerReceiver == null || registerReceiver.getAction() == null) {
            return Boolean.TRUE;
        }
        String action = registerReceiver.getAction();
        action.hashCode();
        if (action.equals("android.intent.action.DEVICE_STORAGE_LOW")) {
            return Boolean.FALSE;
        }
        if (!action.equals("android.intent.action.DEVICE_STORAGE_OK")) {
            return null;
        }
        return Boolean.TRUE;
    }

    @Override // defpackage.o5
    public IntentFilter g() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.DEVICE_STORAGE_OK");
        intentFilter.addAction("android.intent.action.DEVICE_STORAGE_LOW");
        return intentFilter;
    }

    @Override // defpackage.o5
    public void h(Context context, Intent intent) {
        if (intent.getAction() != null) {
            h.c().a(i, String.format("Received %s", intent.getAction()), new Throwable[0]);
            String action = intent.getAction();
            action.hashCode();
            if (action.equals("android.intent.action.DEVICE_STORAGE_LOW")) {
                d(Boolean.FALSE);
            } else if (action.equals("android.intent.action.DEVICE_STORAGE_OK")) {
                d(Boolean.TRUE);
            }
        }
    }
}
