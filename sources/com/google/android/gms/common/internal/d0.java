package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.internal.f;
import com.vungle.warren.VungleApiClient;
import java.util.Objects;

final class d0 implements Handler.Callback {
    private final /* synthetic */ c0 b;

    d0(c0 c0Var, b0 b0Var) {
        this.b = c0Var;
    }

    public final boolean handleMessage(Message message) {
        int i = message.what;
        if (i == 0) {
            synchronized (c0.d(this.b)) {
                f.a aVar = (f.a) message.obj;
                e0 e0Var = (e0) c0.d(this.b).get(aVar);
                if (e0Var != null && e0Var.h()) {
                    if (e0Var.d()) {
                        e0Var.g();
                    }
                    c0.d(this.b).remove(aVar);
                }
            }
            return true;
        } else if (i != 1) {
            return false;
        } else {
            synchronized (c0.d(this.b)) {
                f.a aVar2 = (f.a) message.obj;
                e0 e0Var2 = (e0) c0.d(this.b).get(aVar2);
                if (e0Var2 != null && e0Var2.f() == 3) {
                    String valueOf = String.valueOf(aVar2);
                    StringBuilder sb = new StringBuilder(valueOf.length() + 47);
                    sb.append("Timeout waiting for ServiceConnection callback ");
                    sb.append(valueOf);
                    Log.e("GmsClientSupervisor", sb.toString(), new Exception());
                    ComponentName j = e0Var2.j();
                    if (j == null) {
                        Objects.requireNonNull(aVar2);
                        j = null;
                    }
                    if (j == null) {
                        String b2 = aVar2.b();
                        Objects.requireNonNull(b2, "null reference");
                        j = new ComponentName(b2, VungleApiClient.ConnectionTypeDetail.UNKNOWN);
                    }
                    e0Var2.onServiceDisconnected(j);
                }
            }
            return true;
        }
    }
}
