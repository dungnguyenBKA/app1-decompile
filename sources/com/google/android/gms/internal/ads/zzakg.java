package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.instream.InstreamAd;
import com.google.android.gms.common.internal.n;

public final class zzakg {
    private final Context context;
    private final zzxi zzacs;

    /* JADX INFO: this call moved to the top of the method (can break code semantics) */
    public zzakg(Context context2, String str) {
        this(context2, zzwr.zzqo().zzb(context2, str, new zzanf()));
        n.i(context2, "context cannot be null");
    }

    public final zzakg zza(InstreamAd.InstreamAdLoadCallback instreamAdLoadCallback) {
        try {
            this.zzacs.zza(new zzake(instreamAdLoadCallback));
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
        return this;
    }

    public final zzakh zzui() {
        try {
            return new zzakh(this.context, this.zzacs.zzqz());
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
            return null;
        }
    }

    public final zzakg zza(zzakf zzakf) {
        try {
            this.zzacs.zza(new zzajt(zzakf));
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
        return this;
    }

    private zzakg(Context context2, zzxi zzxi) {
        this.context = context2;
        this.zzacs = zzxi;
    }
}
