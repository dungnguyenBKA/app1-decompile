package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.OnPaidEventListener;
import com.google.android.gms.ads.ResponseInfo;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.VideoOptions;
import com.google.android.gms.ads.admanager.AppEventListener;
import com.google.android.gms.ads.doubleclick.OnCustomRenderedAdLoadedListener;
import java.util.concurrent.atomic.AtomicBoolean;

public final class zzzm {
    private final zzvq zzact;
    private boolean zzbni;
    private VideoOptions zzbnw;
    private AppEventListener zzbsf;
    private String zzbut;
    private zzxl zzbuz;
    private final zzanf zzbvb;
    private zzvc zzchd;
    private AdListener zzchm;
    private AdSize[] zzcis;
    private final AtomicBoolean zzckk;
    private final VideoController zzckl;
    private final zzwu zzckm;
    private com.google.android.gms.ads.doubleclick.AppEventListener zzckn;
    private OnCustomRenderedAdLoadedListener zzcko;
    private ViewGroup zzckp;
    private int zzckq;
    private OnPaidEventListener zzckr;

    public zzzm(ViewGroup viewGroup) {
        this(viewGroup, null, false, zzvq.zzcif, 0);
    }

    private static boolean zzcz(int i) {
        return i == 1;
    }

    public final void destroy() {
        try {
            zzxl zzxl = this.zzbuz;
            if (zzxl != null) {
                zzxl.destroy();
            }
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }

    public final AdListener getAdListener() {
        return this.zzchm;
    }

    public final AdSize getAdSize() {
        zzvs zzkg;
        try {
            zzxl zzxl = this.zzbuz;
            if (!(zzxl == null || (zzkg = zzxl.zzkg()) == null)) {
                return zzkg.zzqi();
            }
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
        AdSize[] adSizeArr = this.zzcis;
        if (adSizeArr != null) {
            return adSizeArr[0];
        }
        return null;
    }

    public final AdSize[] getAdSizes() {
        return this.zzcis;
    }

    public final String getAdUnitId() {
        zzxl zzxl;
        if (this.zzbut == null && (zzxl = this.zzbuz) != null) {
            try {
                this.zzbut = zzxl.getAdUnitId();
            } catch (RemoteException e) {
                zzazk.zze("#007 Could not call remote method.", e);
            }
        }
        return this.zzbut;
    }

    public final AppEventListener getAppEventListener() {
        return this.zzbsf;
    }

    public final String getMediationAdapterClassName() {
        try {
            zzxl zzxl = this.zzbuz;
            if (zzxl != null) {
                return zzxl.zzkh();
            }
            return null;
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
            return null;
        }
    }

    public final OnCustomRenderedAdLoadedListener getOnCustomRenderedAdLoadedListener() {
        return this.zzcko;
    }

    public final ResponseInfo getResponseInfo() {
        zzyx zzyx = null;
        try {
            zzxl zzxl = this.zzbuz;
            if (zzxl != null) {
                zzyx = zzxl.zzki();
            }
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
        return ResponseInfo.zza(zzyx);
    }

    public final VideoController getVideoController() {
        return this.zzckl;
    }

    public final VideoOptions getVideoOptions() {
        return this.zzbnw;
    }

    public final boolean isLoading() {
        try {
            zzxl zzxl = this.zzbuz;
            if (zzxl != null) {
                return zzxl.isLoading();
            }
            return false;
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
            return false;
        }
    }

    public final void pause() {
        try {
            zzxl zzxl = this.zzbuz;
            if (zzxl != null) {
                zzxl.pause();
            }
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }

    public final void recordManualImpression() {
        if (!this.zzckk.getAndSet(true)) {
            try {
                zzxl zzxl = this.zzbuz;
                if (zzxl != null) {
                    zzxl.zzkf();
                }
            } catch (RemoteException e) {
                zzazk.zze("#007 Could not call remote method.", e);
            }
        }
    }

    public final void resume() {
        try {
            zzxl zzxl = this.zzbuz;
            if (zzxl != null) {
                zzxl.resume();
            }
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }

    public final void setAdListener(AdListener adListener) {
        this.zzchm = adListener;
        this.zzckm.zza(adListener);
    }

    public final void setAdSizes(AdSize... adSizeArr) {
        if (this.zzcis == null) {
            zza(adSizeArr);
            return;
        }
        throw new IllegalStateException("The ad size can only be set once on AdView.");
    }

    public final void setAdUnitId(String str) {
        if (this.zzbut == null) {
            this.zzbut = str;
            return;
        }
        throw new IllegalStateException("The ad unit ID can only be set once on AdView.");
    }

    public final void setAppEventListener(AppEventListener appEventListener) {
        try {
            this.zzbsf = appEventListener;
            zzxl zzxl = this.zzbuz;
            if (zzxl != null) {
                zzxl.zza(appEventListener != null ? new zzrg(appEventListener) : null);
            }
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }

    public final void setManualImpressionsEnabled(boolean z) {
        this.zzbni = z;
        try {
            zzxl zzxl = this.zzbuz;
            if (zzxl != null) {
                zzxl.setManualImpressionsEnabled(z);
            }
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }

    public final void setOnCustomRenderedAdLoadedListener(OnCustomRenderedAdLoadedListener onCustomRenderedAdLoadedListener) {
        this.zzcko = onCustomRenderedAdLoadedListener;
        try {
            zzxl zzxl = this.zzbuz;
            if (zzxl != null) {
                zzxl.zza(onCustomRenderedAdLoadedListener != null ? new zzacm(onCustomRenderedAdLoadedListener) : null);
            }
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }

    public final void setOnPaidEventListener(OnPaidEventListener onPaidEventListener) {
        try {
            this.zzckr = onPaidEventListener;
            zzxl zzxl = this.zzbuz;
            if (zzxl != null) {
                zzxl.zza(new zzaap(onPaidEventListener));
            }
        } catch (RemoteException e) {
            zzazk.zze("#008 Must be called on the main UI thread.", e);
        }
    }

    public final void setVideoOptions(VideoOptions videoOptions) {
        zzaau zzaau;
        this.zzbnw = videoOptions;
        try {
            zzxl zzxl = this.zzbuz;
            if (zzxl != null) {
                if (videoOptions == null) {
                    zzaau = null;
                } else {
                    zzaau = new zzaau(videoOptions);
                }
                zzxl.zza(zzaau);
            }
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }

    public final void zza(zzzk zzzk) {
        zzxl zzxl;
        try {
            zzxl zzxl2 = this.zzbuz;
            if (zzxl2 == null) {
                if ((this.zzcis == null || this.zzbut == null) && zzxl2 == null) {
                    throw new IllegalStateException("The ad size and ad unit ID must be set before loadAd is called.");
                }
                Context context = this.zzckp.getContext();
                zzvs zza = zza(context, this.zzcis, this.zzckq);
                if ("search_v2".equals(zza.zzacy)) {
                    zzxl = (zzxl) new zzwj(zzwr.zzqo(), context, zza, this.zzbut).zzd(context, false);
                } else {
                    zzxl = (zzxl) new zzwb(zzwr.zzqo(), context, zza, this.zzbut, this.zzbvb).zzd(context, false);
                }
                this.zzbuz = zzxl;
                zzxl.zza(new zzvi(this.zzckm));
                if (this.zzchd != null) {
                    this.zzbuz.zza(new zzvb(this.zzchd));
                }
                if (this.zzbsf != null) {
                    this.zzbuz.zza(new zzrg(this.zzbsf));
                }
                if (this.zzckn != null) {
                    this.zzbuz.zza(new zzvy(this.zzckn));
                }
                if (this.zzcko != null) {
                    this.zzbuz.zza(new zzacm(this.zzcko));
                }
                if (this.zzbnw != null) {
                    this.zzbuz.zza(new zzaau(this.zzbnw));
                }
                this.zzbuz.zza(new zzaap(this.zzckr));
                this.zzbuz.setManualImpressionsEnabled(this.zzbni);
                try {
                    zv zzke = this.zzbuz.zzke();
                    if (zzke != null) {
                        this.zzckp.addView((View) aw.P(zzke));
                    }
                } catch (RemoteException e) {
                    zzazk.zze("#007 Could not call remote method.", e);
                }
            }
            if (this.zzbuz.zza(zzvq.zza(this.zzckp.getContext(), zzzk))) {
                this.zzbvb.zzf(zzzk.zzrk());
            }
        } catch (RemoteException e2) {
            zzazk.zze("#007 Could not call remote method.", e2);
        }
    }

    public final zzzc zzdw() {
        zzxl zzxl = this.zzbuz;
        if (zzxl == null) {
            return null;
        }
        try {
            return zzxl.getVideoController();
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
            return null;
        }
    }

    public final com.google.android.gms.ads.doubleclick.AppEventListener zzrr() {
        return this.zzckn;
    }

    public zzzm(ViewGroup viewGroup, int i) {
        this(viewGroup, null, false, zzvq.zzcif, i);
    }

    public zzzm(ViewGroup viewGroup, AttributeSet attributeSet, boolean z) {
        this(viewGroup, attributeSet, z, zzvq.zzcif, 0);
    }

    public zzzm(ViewGroup viewGroup, AttributeSet attributeSet, boolean z, int i) {
        this(viewGroup, attributeSet, false, zzvq.zzcif, i);
    }

    private zzzm(ViewGroup viewGroup, AttributeSet attributeSet, boolean z, zzvq zzvq, zzxl zzxl, int i) {
        zzvs zzvs;
        this.zzbvb = new zzanf();
        this.zzckl = new VideoController();
        this.zzckm = new zzzl(this);
        this.zzckp = viewGroup;
        this.zzact = zzvq;
        this.zzbuz = null;
        this.zzckk = new AtomicBoolean(false);
        this.zzckq = i;
        if (attributeSet != null) {
            Context context = viewGroup.getContext();
            try {
                zzvz zzvz = new zzvz(context, attributeSet);
                this.zzcis = zzvz.zzy(z);
                this.zzbut = zzvz.getAdUnitId();
                if (viewGroup.isInEditMode()) {
                    zzaza zzqn = zzwr.zzqn();
                    AdSize adSize = this.zzcis[0];
                    int i2 = this.zzckq;
                    if (adSize.equals(AdSize.INVALID)) {
                        zzvs = zzvs.zzqh();
                    } else {
                        zzvs zzvs2 = new zzvs(context, adSize);
                        zzvs2.zzcij = zzcz(i2);
                        zzvs = zzvs2;
                    }
                    zzqn.zza(viewGroup, zzvs, "Ads by Google");
                }
            } catch (IllegalArgumentException e) {
                zzwr.zzqn().zza(viewGroup, new zzvs(context, AdSize.BANNER), e.getMessage(), e.getMessage());
            }
        }
    }

    private zzzm(ViewGroup viewGroup, AttributeSet attributeSet, boolean z, zzvq zzvq, int i) {
        this(viewGroup, attributeSet, z, zzvq, null, i);
    }

    public final void zza(zzvc zzvc) {
        try {
            this.zzchd = zzvc;
            zzxl zzxl = this.zzbuz;
            if (zzxl != null) {
                zzxl.zza(zzvc != null ? new zzvb(zzvc) : null);
            }
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }

    public final void zza(AdSize... adSizeArr) {
        this.zzcis = adSizeArr;
        try {
            zzxl zzxl = this.zzbuz;
            if (zzxl != null) {
                zzxl.zza(zza(this.zzckp.getContext(), this.zzcis, this.zzckq));
            }
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
        this.zzckp.requestLayout();
    }

    public final void zza(com.google.android.gms.ads.doubleclick.AppEventListener appEventListener) {
        try {
            this.zzckn = appEventListener;
            zzxl zzxl = this.zzbuz;
            if (zzxl != null) {
                zzxl.zza(appEventListener != null ? new zzvy(this.zzckn) : null);
            }
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }

    public final boolean zza(zzxl zzxl) {
        if (zzxl == null) {
            return false;
        }
        try {
            zv zzke = zzxl.zzke();
            if (zzke == null || ((View) aw.P(zzke)).getParent() != null) {
                return false;
            }
            this.zzckp.addView((View) aw.P(zzke));
            this.zzbuz = zzxl;
            return true;
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
            return false;
        }
    }

    private static zzvs zza(Context context, AdSize[] adSizeArr, int i) {
        for (AdSize adSize : adSizeArr) {
            if (adSize.equals(AdSize.INVALID)) {
                return zzvs.zzqh();
            }
        }
        zzvs zzvs = new zzvs(context, adSizeArr);
        zzvs.zzcij = zzcz(i);
        return zzvs;
    }
}
