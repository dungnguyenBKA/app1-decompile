package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.RemoteException;
import java.util.Collections;
import javax.annotation.Nonnull;

final class zzczz implements zzdzl<Uri> {
    private final /* synthetic */ zzasj zzgzx;

    zzczz(zzczo zzczo, zzasj zzasj) {
        this.zzgzx = zzasj;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // com.google.android.gms.internal.ads.zzdzl
    public final /* synthetic */ void onSuccess(@Nonnull Uri uri) {
        try {
            this.zzgzx.onSuccess(Collections.singletonList(uri));
        } catch (RemoteException e) {
            zzazk.zzc("", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdzl
    public final void zzb(Throwable th) {
        try {
            zzasj zzasj = this.zzgzx;
            String valueOf = String.valueOf(th.getMessage());
            zzasj.onError(valueOf.length() != 0 ? "Internal error: ".concat(valueOf) : new String("Internal error: "));
        } catch (RemoteException e) {
            zzazk.zzc("", e);
        }
    }
}
