package com.google.android.gms.ads.internal.offline.buffering;

import android.content.Context;
import android.os.RemoteException;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import com.google.android.gms.internal.ads.zzanf;
import com.google.android.gms.internal.ads.zzarf;
import com.google.android.gms.internal.ads.zzwr;

public class OfflinePingSender extends Worker {
    private final zzarf g;

    public OfflinePingSender(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        this.g = zzwr.zzqo().zzb(context, new zzanf());
    }

    @Override // androidx.work.Worker
    public ListenableWorker.a doWork() {
        try {
            this.g.zzvt();
            return new ListenableWorker.a.c();
        } catch (RemoteException unused) {
            return new ListenableWorker.a.C0022a();
        }
    }
}
