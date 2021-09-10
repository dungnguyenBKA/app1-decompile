package com.google.android.gms.ads.internal.util;

import com.google.android.gms.internal.ads.zzazp;
import com.google.android.gms.internal.ads.zzdzw;

public abstract class zza {
    private volatile Thread thread;
    private final Runnable zzedk = new r(this);
    private boolean zzedl = false;

    public abstract void zzwe();

    public final zzdzw<?> zzye() {
        return zzazp.zzeid.zzg(this.zzedk);
    }
}
