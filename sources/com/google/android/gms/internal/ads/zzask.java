package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.query.QueryInfoGenerationCallback;
import javax.annotation.concurrent.GuardedBy;

public class zzask {
    @GuardedBy("InternalQueryInfoGenerator.class")
    private static zzaxy zzdtn;
    private final Context context;
    private final zzzk zzacw;
    private final AdFormat zzdtm;

    public zzask(Context context2, AdFormat adFormat, zzzk zzzk) {
        this.context = context2;
        this.zzdtm = adFormat;
        this.zzacw = zzzk;
    }

    public static zzaxy zzp(Context context2) {
        zzaxy zzaxy;
        synchronized (zzask.class) {
            if (zzdtn == null) {
                zzdtn = zzwr.zzqo().zza(context2, new zzanf());
            }
            zzaxy = zzdtn;
        }
        return zzaxy;
    }

    public final void zza(QueryInfoGenerationCallback queryInfoGenerationCallback) {
        zzvl zzvl;
        zzaxy zzp = zzp(this.context);
        if (zzp == null) {
            queryInfoGenerationCallback.onFailure("Internal Error, query info generator is null.");
            return;
        }
        zv Q = aw.Q(this.context);
        zzzk zzzk = this.zzacw;
        if (zzzk == null) {
            zzvl = new zzvo().zzqd();
        } else {
            zzvl = zzvq.zza(this.context, zzzk);
        }
        try {
            zzp.zza(Q, new zzaye(null, this.zzdtm.name(), null, zzvl), new zzasn(this, queryInfoGenerationCallback));
        } catch (RemoteException unused) {
            queryInfoGenerationCallback.onFailure("Internal Error.");
        }
    }
}
