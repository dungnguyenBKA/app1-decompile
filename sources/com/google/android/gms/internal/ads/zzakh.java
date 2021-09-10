package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.doubleclick.PublisherAdRequest;

public final class zzakh {
    private final Context context;
    private final zzvq zzact;
    private final zzxd zzacu;

    zzakh(Context context2, zzxd zzxd) {
        this(context2, zzxd, zzvq.zzcif);
    }

    private final void zza(zzzk zzzk) {
        try {
            this.zzacu.zzb(zzvq.zza(this.context, zzzk));
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }

    public final void loadAd(AdRequest adRequest) {
        zza(adRequest.zzds());
    }

    public final void loadAd(PublisherAdRequest publisherAdRequest) {
        zza(publisherAdRequest.zzds());
    }

    private zzakh(Context context2, zzxd zzxd, zzvq zzvq) {
        this.context = context2;
        this.zzacu = zzxd;
        this.zzact = zzvq;
    }
}
