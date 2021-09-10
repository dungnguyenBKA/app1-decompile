package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.RemoteException;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.ads.query.UpdateClickUrlCallback;
import com.google.android.gms.ads.query.UpdateImpressionUrlsCallback;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import javax.annotation.Nonnull;

public final class zzasm {
    @Nonnull
    private final View zzaat;
    private final Map<String, WeakReference<View>> zzdto;
    private final zzaxy zzdtp;

    public zzasm(zzasr zzasr) {
        View zza = zzasr.zza(zzasr);
        this.zzaat = zza;
        Map<String, WeakReference<View>> zzb = zzasr.zzb(zzasr);
        this.zzdto = zzb;
        zzaxy zzp = zzask.zzp(zzasr.zza(zzasr).getContext());
        this.zzdtp = zzp;
        if (zzp != null && zzb != null && !zzb.isEmpty()) {
            try {
                zzp.zza(new zzasq(aw.Q(zza).asBinder(), aw.Q(zzb).asBinder()));
            } catch (RemoteException unused) {
                zzazk.zzev("Failed to call remote method.");
            }
        }
    }

    public final void reportTouchEvent(MotionEvent motionEvent) {
        zzaxy zzaxy = this.zzdtp;
        if (zzaxy == null) {
            zzazk.zzdy("Failed to get internal reporting info generator.");
            return;
        }
        try {
            zzaxy.zzan(aw.Q(motionEvent));
        } catch (RemoteException unused) {
            zzazk.zzev("Failed to call remote method.");
        }
    }

    public final void updateClickUrl(Uri uri, UpdateClickUrlCallback updateClickUrlCallback) {
        if (this.zzdtp == null) {
            updateClickUrlCallback.onFailure("Failed to get internal reporting info generator.");
        }
        try {
            this.zzdtp.zzb(new ArrayList(Arrays.asList(uri)), aw.Q(this.zzaat), new zzaso(this, updateClickUrlCallback));
        } catch (RemoteException e) {
            String valueOf = String.valueOf(e);
            StringBuilder sb = new StringBuilder(valueOf.length() + 16);
            sb.append("Internal error: ");
            sb.append(valueOf);
            updateClickUrlCallback.onFailure(sb.toString());
        }
    }

    public final void updateImpressionUrls(List<Uri> list, UpdateImpressionUrlsCallback updateImpressionUrlsCallback) {
        if (this.zzdtp == null) {
            updateImpressionUrlsCallback.onFailure("Failed to get internal reporting info generator.");
        }
        try {
            this.zzdtp.zza(list, aw.Q(this.zzaat), new zzasp(this, updateImpressionUrlsCallback));
        } catch (RemoteException e) {
            String valueOf = String.valueOf(e);
            StringBuilder sb = new StringBuilder(valueOf.length() + 16);
            sb.append("Internal error: ");
            sb.append(valueOf);
            updateImpressionUrlsCallback.onFailure(sb.toString());
        }
    }
}
