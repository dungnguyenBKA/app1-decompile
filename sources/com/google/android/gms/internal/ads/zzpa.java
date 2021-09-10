package com.google.android.gms.internal.ads;

import android.os.Looper;
import android.os.SystemClock;
import java.io.IOException;
import java.util.concurrent.ExecutorService;

public final class zzpa {
    private final ExecutorService zzbji;
    private zzpc<? extends zzpb> zzbjj;
    private IOException zzbjk;

    public zzpa(String str) {
        this.zzbji = zzpt.zzbf(str);
    }

    public final boolean isLoading() {
        return this.zzbjj != null;
    }

    public final <T extends zzpb> long zza(T t, zzoz<T> zzoz, int i) {
        Looper myLooper = Looper.myLooper();
        zzpg.checkState(myLooper != null);
        long elapsedRealtime = SystemClock.elapsedRealtime();
        new zzpc(this, myLooper, t, zzoz, i, elapsedRealtime).zzek(0);
        return elapsedRealtime;
    }

    public final void zzbg(int i) {
        IOException iOException = this.zzbjk;
        if (iOException == null) {
            zzpc<? extends zzpb> zzpc = this.zzbjj;
            if (zzpc != null) {
                zzpc.zzbg(zzpc.zzbjn);
                return;
            }
            return;
        }
        throw iOException;
    }

    public final void zzit() {
        this.zzbjj.zzl(false);
    }

    public final void zza(Runnable runnable) {
        zzpc<? extends zzpb> zzpc = this.zzbjj;
        if (zzpc != null) {
            zzpc.zzl(true);
        }
        this.zzbji.execute(runnable);
        this.zzbji.shutdown();
    }
}
