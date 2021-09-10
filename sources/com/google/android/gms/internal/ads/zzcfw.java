package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.common.internal.n;
import java.util.Collections;

public final class zzcfw extends zzaju implements ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener, zzaea {
    private boolean zzesz = false;
    private zzzc zzgef;
    private View zzgek;
    private zzcbu zzgfm;
    private boolean zzgiq = false;

    public zzcfw(zzcbu zzcbu, zzccd zzccd) {
        this.zzgek = zzccd.zzany();
        this.zzgef = zzccd.getVideoController();
        this.zzgfm = zzcbu;
        if (zzccd.zzanz() != null) {
            zzccd.zzanz().zza(this);
        }
    }

    private final void zzapk() {
        View view = this.zzgek;
        if (view != null) {
            ViewParent parent = view.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(this.zzgek);
            }
        }
    }

    private final void zzapl() {
        View view;
        zzcbu zzcbu = this.zzgfm;
        if (zzcbu != null && (view = this.zzgek) != null) {
            zzcbu.zzb(view, Collections.emptyMap(), Collections.emptyMap(), zzcbu.zzz(this.zzgek));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzajv
    public final void destroy() {
        n.d("#008 Must be called on the main UI thread.");
        zzapk();
        zzcbu zzcbu = this.zzgfm;
        if (zzcbu != null) {
            zzcbu.destroy();
        }
        this.zzgfm = null;
        this.zzgek = null;
        this.zzgef = null;
        this.zzesz = true;
    }

    @Override // com.google.android.gms.internal.ads.zzajv
    public final zzzc getVideoController() {
        n.d("#008 Must be called on the main UI thread.");
        if (!this.zzesz) {
            return this.zzgef;
        }
        zzazk.zzev("getVideoController: Instream ad should not be used after destroyed");
        return null;
    }

    public final void onGlobalLayout() {
        zzapl();
    }

    public final void onScrollChanged() {
        zzapl();
    }

    @Override // com.google.android.gms.internal.ads.zzajv
    public final void zza(zv zvVar, zzajw zzajw) {
        n.d("#008 Must be called on the main UI thread.");
        if (this.zzesz) {
            zzazk.zzev("Instream ad can not be shown after destroy().");
            zza(zzajw, 2);
            return;
        }
        View view = this.zzgek;
        if (view == null || this.zzgef == null) {
            String str = view == null ? "can not get video view." : "can not get video controller.";
            zzazk.zzev(str.length() != 0 ? "Instream internal error: ".concat(str) : new String("Instream internal error: "));
            zza(zzajw, 0);
        } else if (this.zzgiq) {
            zzazk.zzev("Instream ad should not be used again.");
            zza(zzajw, 1);
        } else {
            this.zzgiq = true;
            zzapk();
            ((ViewGroup) aw.P(zvVar)).addView(this.zzgek, new ViewGroup.LayoutParams(-1, -1));
            zzr.zzlo();
            zzbai.zza(this.zzgek, (ViewTreeObserver.OnGlobalLayoutListener) this);
            zzr.zzlo();
            zzbai.zza(this.zzgek, (ViewTreeObserver.OnScrollChangedListener) this);
            zzapl();
            try {
                zzajw.zzue();
            } catch (RemoteException e) {
                zzazk.zze("#007 Could not call remote method.", e);
            }
        }
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ void zzapm() {
        try {
            destroy();
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzajv
    public final void zzr(zv zvVar) {
        n.d("#008 Must be called on the main UI thread.");
        zza(zvVar, new zzcfy(this));
    }

    @Override // com.google.android.gms.internal.ads.zzaea
    public final void zzth() {
        zzj.zzeen.post(new zzcfv(this));
    }

    @Override // com.google.android.gms.internal.ads.zzajv
    public final zzaem zzty() {
        n.d("#008 Must be called on the main UI thread.");
        if (this.zzesz) {
            zzazk.zzev("getVideoController: Instream ad should not be used after destroyed");
            return null;
        }
        zzcbu zzcbu = this.zzgfm;
        if (zzcbu == null || zzcbu.zzanr() == null) {
            return null;
        }
        return this.zzgfm.zzanr().zzty();
    }

    private static void zza(zzajw zzajw, int i) {
        try {
            zzajw.zzda(i);
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }
}
