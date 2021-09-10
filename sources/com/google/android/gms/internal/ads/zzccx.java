package com.google.android.gms.internal.ads;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.formats.NativeAppInstallAd;
import com.google.android.gms.ads.formats.NativeContentAd;
import com.google.android.gms.ads.internal.util.zzbn;
import com.google.android.gms.ads.internal.zzr;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import javax.annotation.concurrent.GuardedBy;
import org.json.JSONObject;

public final class zzccx extends zzaeu implements ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener, zzcdx {
    public static final String[] zzgfi = {NativeAppInstallAd.ASSET_MEDIA_VIDEO, NativeContentAd.ASSET_MEDIA_VIDEO, "3010"};
    private FrameLayout zzbny;
    private zzaem zzclh;
    @GuardedBy("this")
    private Map<String, WeakReference<View>> zzdto = new HashMap();
    private final int zzehz;
    private boolean zzesz = false;
    private final String zzgfh;
    private FrameLayout zzgfj;
    private zzdzv zzgfk;
    private View zzgfl;
    @GuardedBy("this")
    private zzcbu zzgfm;
    private zzqs zzgfn;
    private zv zzgfo = null;
    private boolean zzgfp;

    public zzccx(FrameLayout frameLayout, FrameLayout frameLayout2, int i) {
        String str;
        this.zzgfj = frameLayout;
        this.zzbny = frameLayout2;
        this.zzehz = 204204000;
        String canonicalName = frameLayout.getClass().getCanonicalName();
        if ("com.google.android.gms.ads.formats.NativeContentAdView".equals(canonicalName)) {
            str = NativeContentAd.ASSET_ATTRIBUTION_ICON_IMAGE;
        } else if ("com.google.android.gms.ads.formats.NativeAppInstallAdView".equals(canonicalName)) {
            str = NativeAppInstallAd.ASSET_ATTRIBUTION_ICON_IMAGE;
        } else {
            "com.google.android.gms.ads.formats.UnifiedNativeAdView".equals(canonicalName);
            str = "3012";
        }
        this.zzgfh = str;
        zzr.zzlo();
        zzbai.zza((View) frameLayout, (ViewTreeObserver.OnGlobalLayoutListener) this);
        zzr.zzlo();
        zzbai.zza((View) frameLayout, (ViewTreeObserver.OnScrollChangedListener) this);
        this.zzgfk = zzazp.zzeig;
        this.zzgfn = new zzqs(this.zzgfj.getContext(), this.zzgfj);
        frameLayout.setOnTouchListener(this);
        frameLayout.setOnClickListener(this);
    }

    private final synchronized void zzaou() {
        this.zzgfk.execute(new zzcda(this));
    }

    @Override // com.google.android.gms.internal.ads.zzaev
    public final synchronized void destroy() {
        if (!this.zzesz) {
            zzcbu zzcbu = this.zzgfm;
            if (zzcbu != null) {
                zzcbu.zzc(this);
                this.zzgfm = null;
            }
            this.zzdto.clear();
            this.zzgfj.removeAllViews();
            this.zzbny.removeAllViews();
            this.zzdto = null;
            this.zzgfj = null;
            this.zzbny = null;
            this.zzgfl = null;
            this.zzgfn = null;
            this.zzesz = true;
        }
    }

    public final synchronized void onClick(View view) {
        zzcbu zzcbu = this.zzgfm;
        if (zzcbu != null) {
            zzcbu.cancelUnconfirmedClick();
            this.zzgfm.zza(view, this.zzgfj, zzaov(), zzaow(), false);
        }
    }

    public final synchronized void onGlobalLayout() {
        zzcbu zzcbu = this.zzgfm;
        if (zzcbu != null) {
            zzcbu.zzb(this.zzgfj, zzaov(), zzaow(), zzcbu.zzz(this.zzgfj));
        }
    }

    public final synchronized void onScrollChanged() {
        zzcbu zzcbu = this.zzgfm;
        if (zzcbu != null) {
            zzcbu.zzb(this.zzgfj, zzaov(), zzaow(), zzcbu.zzz(this.zzgfj));
        }
    }

    public final synchronized boolean onTouch(View view, MotionEvent motionEvent) {
        zzcbu zzcbu = this.zzgfm;
        if (zzcbu != null) {
            zzcbu.zza(view, motionEvent, this.zzgfj);
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzcdx
    public final synchronized void zza(String str, View view, boolean z) {
        if (!this.zzesz) {
            if (view == null) {
                this.zzdto.remove(str);
                return;
            }
            this.zzdto.put(str, new WeakReference<>(view));
            if (!NativeAd.ASSET_ADCHOICES_CONTAINER_VIEW.equals(str) && !"3011".equals(str)) {
                if (zzbn.zzdh(this.zzehz)) {
                    view.setOnTouchListener(this);
                }
                view.setClickable(true);
                view.setOnClickListener(this);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcdx
    public final /* synthetic */ View zzajr() {
        return this.zzgfj;
    }

    @Override // com.google.android.gms.internal.ads.zzcdx
    public final synchronized Map<String, WeakReference<View>> zzaov() {
        return this.zzdto;
    }

    @Override // com.google.android.gms.internal.ads.zzcdx
    public final synchronized Map<String, WeakReference<View>> zzaow() {
        return this.zzdto;
    }

    @Override // com.google.android.gms.internal.ads.zzcdx
    public final synchronized Map<String, WeakReference<View>> zzaox() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzcdx
    public final synchronized String zzaoy() {
        return this.zzgfh;
    }

    @Override // com.google.android.gms.internal.ads.zzcdx
    public final FrameLayout zzaoz() {
        return this.zzbny;
    }

    @Override // com.google.android.gms.internal.ads.zzcdx
    public final zzqs zzapa() {
        return this.zzgfn;
    }

    @Override // com.google.android.gms.internal.ads.zzcdx
    public final zv zzapb() {
        return this.zzgfo;
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ void zzapc() {
        if (this.zzgfl == null) {
            View view = new View(this.zzgfj.getContext());
            this.zzgfl = view;
            view.setLayoutParams(new FrameLayout.LayoutParams(-1, 0));
        }
        if (this.zzgfj != this.zzgfl.getParent()) {
            this.zzgfj.addView(this.zzgfl);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaev
    public final synchronized void zzb(String str, zv zvVar) {
        zza(str, (View) aw.P(zvVar), true);
    }

    @Override // com.google.android.gms.internal.ads.zzaev
    public final synchronized void zzc(zv zvVar, int i) {
    }

    @Override // com.google.android.gms.internal.ads.zzaev
    public final synchronized zv zzco(String str) {
        return aw.Q(zzgc(str));
    }

    @Override // com.google.android.gms.internal.ads.zzaev
    public final synchronized void zzf(zv zvVar) {
        this.zzgfm.setClickConfirmingView((View) aw.P(zvVar));
    }

    @Override // com.google.android.gms.internal.ads.zzaev
    public final void zzg(zv zvVar) {
        onTouch(this.zzgfj, (MotionEvent) aw.P(zvVar));
    }

    @Override // com.google.android.gms.internal.ads.zzcdx
    public final synchronized View zzgc(String str) {
        if (this.zzesz) {
            return null;
        }
        WeakReference<View> weakReference = this.zzdto.get(str);
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    @Override // com.google.android.gms.internal.ads.zzaev
    public final synchronized void zzh(zv zvVar) {
        if (!this.zzesz) {
            this.zzgfo = zvVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcdx
    public final synchronized JSONObject zztk() {
        zzcbu zzcbu = this.zzgfm;
        if (zzcbu == null) {
            return null;
        }
        return zzcbu.zza(this.zzgfj, zzaov(), zzaow());
    }

    @Override // com.google.android.gms.internal.ads.zzaev
    public final synchronized void zza(zv zvVar) {
        if (!this.zzesz) {
            Object P = aw.P(zvVar);
            if (!(P instanceof zzcbu)) {
                zzazk.zzex("Not an instance of native engine. This is most likely a transient error");
                return;
            }
            zzcbu zzcbu = this.zzgfm;
            if (zzcbu != null) {
                zzcbu.zzc(this);
            }
            zzaou();
            zzcbu zzcbu2 = (zzcbu) P;
            this.zzgfm = zzcbu2;
            zzcbu2.zza(this);
            this.zzgfm.zzaa(this.zzgfj);
            this.zzgfm.zzab(this.zzbny);
            if (this.zzgfp) {
                this.zzgfm.zzanr().zza(this.zzclh);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaev
    public final synchronized void zza(zzaem zzaem) {
        if (!this.zzesz) {
            this.zzgfp = true;
            this.zzclh = zzaem;
            zzcbu zzcbu = this.zzgfm;
            if (zzcbu != null) {
                zzcbu.zzanr().zza(zzaem);
            }
        }
    }
}
