package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.google.android.gms.ads.internal.util.zzbn;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.util.zzf;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.concurrent.Executor;

public final class zzccz {
    private final Executor executor;
    private final zzaeh zzdoe;
    private final zzf zzedg;
    private final Executor zzfsj;
    private final zzdnp zzfwy;
    private final zzccd zzgch;
    private final zzcch zzgdj;
    private final zzccc zzgds;
    private final zzcdh zzgfu;
    private final zzcdp zzgfv;

    public zzccz(zzf zzf, zzdnp zzdnp, zzcch zzcch, zzccd zzccd, zzcdh zzcdh, zzcdp zzcdp, Executor executor2, Executor executor3, zzccc zzccc) {
        this.zzedg = zzf;
        this.zzfwy = zzdnp;
        this.zzdoe = zzdnp.zzdoe;
        this.zzgdj = zzcch;
        this.zzgch = zzccd;
        this.zzgfu = zzcdh;
        this.zzgfv = zzcdp;
        this.zzfsj = executor2;
        this.executor = executor3;
        this.zzgds = zzccc;
    }

    public final void zza(zzcdx zzcdx) {
        this.zzfsj.execute(new zzcdc(this, zzcdx));
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ void zzb(ViewGroup viewGroup) {
        boolean z = viewGroup != null;
        if (this.zzgch.zzany() == null) {
            return;
        }
        if (2 == this.zzgch.zzanu() || 1 == this.zzgch.zzanu()) {
            this.zzedg.zza(this.zzfwy.zzhkx, String.valueOf(this.zzgch.zzanu()), z);
        } else if (6 == this.zzgch.zzanu()) {
            this.zzedg.zza(this.zzfwy.zzhkx, "2", z);
            this.zzedg.zza(this.zzfwy.zzhkx, "1", z);
        }
    }

    public final void zzg(zzcdx zzcdx) {
        if (zzcdx != null && this.zzgfu != null && zzcdx.zzaoz() != null && this.zzgdj.zzaog()) {
            try {
                zzcdx.zzaoz().addView(this.zzgfu.zzapf());
            } catch (zzben e) {
                zzd.zza("web view can not be obtained", e);
            }
        }
    }

    public final void zzh(zzcdx zzcdx) {
        if (zzcdx != null) {
            Context context = zzcdx.zzajr().getContext();
            if (zzbn.zza(context, this.zzgdj.zzgeu)) {
                if (!(context instanceof Activity)) {
                    zzazk.zzdy("Activity context is needed for policy validator.");
                } else if (this.zzgfv != null && zzcdx.zzaoz() != null) {
                    try {
                        WindowManager windowManager = (WindowManager) context.getSystemService("window");
                        windowManager.addView(this.zzgfv.zza(zzcdx.zzaoz(), windowManager), zzbn.zzzq());
                    } catch (zzben e) {
                        zzd.zza("web view can not be obtained", e);
                    }
                }
            }
        }
    }

    /* access modifiers changed from: package-private */
    /* JADX WARNING: Removed duplicated region for block: B:19:0x003a  */
    /* JADX WARNING: Removed duplicated region for block: B:20:0x003c  */
    /* JADX WARNING: Removed duplicated region for block: B:23:0x0053  */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x0069  */
    /* JADX WARNING: Removed duplicated region for block: B:36:0x009e  */
    /* JADX WARNING: Removed duplicated region for block: B:47:0x00e5  */
    /* JADX WARNING: Removed duplicated region for block: B:54:0x0102  */
    /* JADX WARNING: Removed duplicated region for block: B:93:0x00f5 A[SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:96:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final /* synthetic */ void zzi(com.google.android.gms.internal.ads.zzcdx r10) {
        /*
        // Method dump skipped, instructions count: 427
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzccz.zzi(com.google.android.gms.internal.ads.zzcdx):void");
    }

    private static void zza(RelativeLayout.LayoutParams layoutParams, int i) {
        if (i == 0) {
            layoutParams.addRule(10);
            layoutParams.addRule(9);
        } else if (i == 2) {
            layoutParams.addRule(12);
            layoutParams.addRule(11);
        } else if (i != 3) {
            layoutParams.addRule(10);
            layoutParams.addRule(11);
        } else {
            layoutParams.addRule(12);
            layoutParams.addRule(9);
        }
    }

    /* access modifiers changed from: private */
    public static boolean zza(zzcdx zzcdx, String[] strArr) {
        Map<String, WeakReference<View>> zzaow = zzcdx.zzaow();
        if (zzaow == null) {
            return false;
        }
        for (String str : strArr) {
            if (zzaow.get(str) != null) {
                return true;
            }
        }
        return false;
    }

    public final boolean zza(ViewGroup viewGroup) {
        FrameLayout.LayoutParams layoutParams;
        View zzany = this.zzgch.zzany();
        if (zzany == null) {
            return false;
        }
        viewGroup.removeAllViews();
        if (zzany.getParent() instanceof ViewGroup) {
            ((ViewGroup) zzany.getParent()).removeView(zzany);
        }
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcti)).booleanValue()) {
            layoutParams = new FrameLayout.LayoutParams(-1, -1, 17);
        } else {
            layoutParams = new FrameLayout.LayoutParams(-2, -2, 17);
        }
        viewGroup.addView(zzany, layoutParams);
        return true;
    }
}
