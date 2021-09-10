package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import com.google.android.gms.ads.internal.zzr;
import java.util.concurrent.Future;
import javax.annotation.concurrent.GuardedBy;

public final class zztn {
    private final Context context;
    private final Object lock = new Object();
    @GuardedBy("lock")
    private zzte zzbve;
    @GuardedBy("lock")
    private boolean zzbvv;

    zztn(Context context2) {
        this.context = context2;
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private final void disconnect() {
        synchronized (this.lock) {
            zzte zzte = this.zzbve;
            if (zzte != null) {
                zzte.disconnect();
                this.zzbve = null;
                Binder.flushPendingCommands();
            }
        }
    }

    /* access modifiers changed from: package-private */
    public final Future<zztv> zzd(zzth zzth) {
        zztm zztm = new zztm(this);
        zztp zztp = new zztp(this, zzth, zztm);
        zztt zztt = new zztt(this, zztm);
        synchronized (this.lock) {
            zzte zzte = new zzte(this.context, zzr.zzlf().zzzp(), zztp, zztt);
            this.zzbve = zzte;
            zzte.checkAvailabilityAndConnect();
        }
        return zztm;
    }
}
