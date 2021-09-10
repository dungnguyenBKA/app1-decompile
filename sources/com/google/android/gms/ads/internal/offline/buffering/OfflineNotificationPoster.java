package com.google.android.gms.ads.internal.offline.buffering;

import android.content.Context;
import android.os.RemoteException;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import com.google.android.gms.internal.ads.zzanf;
import com.google.android.gms.internal.ads.zzarf;
import com.google.android.gms.internal.ads.zzwr;

public class OfflineNotificationPoster extends Worker {
    private final zzarf g;

    public OfflineNotificationPoster(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        this.g = zzwr.zzqo().zzb(context, new zzanf());
    }

    @Override // androidx.work.Worker
    public ListenableWorker.a doWork() {
        try {
            this.g.zzc(aw.Q(getApplicationContext()), getInputData().b("uri"), getInputData().b("gws_query_id"));
            return new ListenableWorker.a.c();
        } catch (RemoteException unused) {
            return new ListenableWorker.a.C0022a();
        }
    }
}
