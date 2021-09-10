package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.concurrent.Executor;
import org.json.JSONObject;

public final class zzcbu extends zzbnt {
    private final Context context;
    private final zzazn zzbpn;
    private final zzei zzesm;
    private final Executor zzfsj;
    private final zzcco zzfup;
    private final zzaxd zzfwd;
    private final zzccd zzgch;
    private final zzccl zzgdh;
    private final zzccz zzgdi;
    private final zzcch zzgdj;
    private final zzepv<zzcgc> zzgdk;
    private final zzepv<zzcga> zzgdl;
    private final zzepv<zzcgf> zzgdm;
    private final zzepv<zzcfw> zzgdn;
    private final zzepv<zzcge> zzgdo;
    private zzcdx zzgdp;
    private boolean zzgdq;
    private boolean zzgdr = false;
    private final zzccc zzgds;
    private final zzcyq zzgdt;

    public zzcbu(zzbnw zzbnw, Executor executor, zzccd zzccd, zzccl zzccl, zzccz zzccz, zzcch zzcch, zzcco zzcco, zzepv<zzcgc> zzepv, zzepv<zzcga> zzepv2, zzepv<zzcgf> zzepv3, zzepv<zzcfw> zzepv4, zzepv<zzcge> zzepv5, zzaxd zzaxd, zzei zzei, zzazn zzazn, Context context2, zzccc zzccc, zzcyq zzcyq) {
        super(zzbnw);
        this.zzfsj = executor;
        this.zzgch = zzccd;
        this.zzgdh = zzccl;
        this.zzgdi = zzccz;
        this.zzgdj = zzcch;
        this.zzfup = zzcco;
        this.zzgdk = zzepv;
        this.zzgdl = zzepv2;
        this.zzgdm = zzepv3;
        this.zzgdn = zzepv4;
        this.zzgdo = zzepv5;
        this.zzfwd = zzaxd;
        this.zzesm = zzei;
        this.zzbpn = zzazn;
        this.context = context2;
        this.zzgds = zzccc;
        this.zzgdt = zzcyq;
    }

    /* access modifiers changed from: private */
    /* renamed from: zzb */
    public final void zzf(zzcdx zzcdx) {
        zzdy zzca;
        this.zzgdp = zzcdx;
        this.zzgdi.zza(zzcdx);
        this.zzgdh.zza(zzcdx.zzajr(), zzcdx.zzaow(), zzcdx.zzaox(), zzcdx, zzcdx);
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcsb)).booleanValue() && (zzca = this.zzesm.zzca()) != null) {
            zzca.zzb(zzcdx.zzajr());
        }
        if (zzcdx.zzapa() != null) {
            zzcdx.zzapa().zza(this.zzfwd);
        }
    }

    /* access modifiers changed from: private */
    /* renamed from: zzd */
    public final void zze(zzcdx zzcdx) {
        this.zzgdh.zza(zzcdx.zzajr(), zzcdx.zzaov());
        if (zzcdx.zzaoz() != null) {
            zzcdx.zzaoz().setClickable(false);
            zzcdx.zzaoz().removeAllViews();
        }
        if (zzcdx.zzapa() != null) {
            zzcdx.zzapa().zzb(this.zzfwd);
        }
        this.zzgdp = null;
    }

    public static boolean zzz(View view) {
        return view.isShown() && view.getGlobalVisibleRect(new Rect(), null);
    }

    public final synchronized void cancelUnconfirmedClick() {
        this.zzgdh.cancelUnconfirmedClick();
    }

    @Override // com.google.android.gms.internal.ads.zzbnt
    public final synchronized void destroy() {
        this.zzfsj.execute(new zzcbv(this));
        super.destroy();
    }

    public final synchronized boolean isCustomClickGestureEnabled() {
        return this.zzgdh.isCustomClickGestureEnabled();
    }

    public final synchronized void recordCustomClickGesture() {
        zzcdx zzcdx = this.zzgdp;
        if (zzcdx == null) {
            zzazk.zzdy("Ad should be associated with an ad view before calling recordCustomClickGesture()");
        } else {
            this.zzfsj.execute(new zzcca(this, zzcdx instanceof zzccy));
        }
    }

    public final synchronized void setClickConfirmingView(View view) {
        this.zzgdh.setClickConfirmingView(view);
    }

    public final synchronized void zza(zzcdx zzcdx) {
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcrh)).booleanValue()) {
            zzj.zzeen.post(new zzcby(this, zzcdx));
        } else {
            zzf(zzcdx);
        }
    }

    public final void zzaa(View view) {
        zv zzaob = this.zzgch.zzaob();
        boolean z = this.zzgch.zzaoa() != null;
        if (this.zzgdj.zzanq() && zzaob != null && z && view != null) {
            zzr.zzlg().zza(zzaob, view);
        }
    }

    public final void zzab(View view) {
        zv zzaob = this.zzgch.zzaob();
        if (this.zzgdj.zzanq() && zzaob != null && view != null) {
            zzr.zzlg().zzb(zzaob, view);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbnt
    public final void zzakb() {
        this.zzfsj.execute(new zzcbt(this));
        if (this.zzgch.zzanu() != 7) {
            Executor executor = this.zzfsj;
            zzccl zzccl = this.zzgdh;
            zzccl.getClass();
            executor.execute(zzcbw.zza(zzccl));
        }
        super.zzakb();
    }

    public final synchronized void zzanj() {
        if (!this.zzgdq) {
            this.zzgdh.zzanj();
        }
    }

    public final boolean zzanp() {
        return this.zzgdj.zzaoh();
    }

    public final boolean zzanq() {
        return this.zzgdj.zzanq();
    }

    public final zzccc zzanr() {
        return this.zzgds;
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ void zzans() {
        this.zzgdh.destroy();
        this.zzgch.destroy();
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ void zzant() {
        try {
            int zzanu = this.zzgch.zzanu();
            if (zzanu != 1) {
                if (zzanu != 2) {
                    if (zzanu != 3) {
                        if (zzanu != 6) {
                            if (zzanu != 7) {
                                zzazk.zzev("Wrong native template id!");
                            } else if (this.zzfup.zzaon() != null) {
                                this.zzfup.zzaon().zza(this.zzgdn.get());
                            }
                        } else if (this.zzfup.zzaol() != null) {
                            zzi("Google", true);
                            this.zzfup.zzaol().zza(this.zzgdm.get());
                        }
                    } else if (this.zzfup.zzga(this.zzgch.getCustomTemplateId()) != null) {
                        if (this.zzgch.zzanz() != null) {
                            zzi("Google", true);
                        }
                        this.zzfup.zzga(this.zzgch.getCustomTemplateId()).zza(this.zzgdo.get());
                    }
                } else if (this.zzfup.zzaok() != null) {
                    zzi("Google", true);
                    this.zzfup.zzaok().zza(this.zzgdl.get());
                }
            } else if (this.zzfup.zzaoj() != null) {
                zzi("Google", true);
                this.zzfup.zzaoj().zza(this.zzgdk.get());
            }
        } catch (RemoteException e) {
            zzazk.zzc("RemoteException when notifyAdLoad is called", e);
        }
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ void zzbi(boolean z) {
        this.zzgdh.zza(this.zzgdp.zzajr(), this.zzgdp.zzaov(), this.zzgdp.zzaow(), z);
    }

    public final synchronized void zzc(zzcdx zzcdx) {
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcrh)).booleanValue()) {
            zzj.zzeen.post(new zzcbx(this, zzcdx));
        } else {
            zze(zzcdx);
        }
    }

    public final synchronized void zzf(Bundle bundle) {
        this.zzgdh.zzf(bundle);
    }

    public final synchronized void zzfw(String str) {
        this.zzgdh.zzfw(str);
    }

    public final synchronized void zzg(Bundle bundle) {
        this.zzgdh.zzg(bundle);
    }

    public final synchronized boolean zzh(Bundle bundle) {
        if (this.zzgdq) {
            return true;
        }
        boolean zzh = this.zzgdh.zzh(bundle);
        this.zzgdq = zzh;
        return zzh;
    }

    /* JADX WARNING: Removed duplicated region for block: B:21:0x0038  */
    /* JADX WARNING: Removed duplicated region for block: B:23:0x003e  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void zzi(java.lang.String r16, boolean r17) {
        /*
        // Method dump skipped, instructions count: 264
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcbu.zzi(java.lang.String, boolean):void");
    }

    public final synchronized void zztx() {
        this.zzgdh.zztx();
    }

    public final synchronized void zza(View view, View view2, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, boolean z) {
        this.zzgdi.zzg(this.zzgdp);
        this.zzgdh.zza(view, view2, map, map2, z);
        if (this.zzgdr) {
            if (((Boolean) zzwr.zzqr().zzd(zzabp.zzctc)).booleanValue()) {
                if (this.zzgch.zzanz() != null) {
                    this.zzgch.zzanz().zza("onSdkAdUserInteractionClick", new x());
                }
            }
        }
    }

    public final synchronized void zzb(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, boolean z) {
        if (!this.zzgdq) {
            if (z) {
                this.zzgdi.zzh(this.zzgdp);
                this.zzgdh.zzb(view, map, map2);
                this.zzgdq = true;
                return;
            }
            if (!z) {
                if (((Boolean) zzwr.zzqr().zzd(zzabp.zzctj)).booleanValue() && map != null) {
                    for (Map.Entry<String, WeakReference<View>> entry : map.entrySet()) {
                        View view2 = entry.getValue().get();
                        if (view2 != null && zzz(view2)) {
                            this.zzgdi.zzh(this.zzgdp);
                            this.zzgdh.zzb(view, map, map2);
                            this.zzgdq = true;
                            return;
                        }
                    }
                }
            }
        }
    }

    public final synchronized void zza(View view, MotionEvent motionEvent, View view2) {
        this.zzgdh.zza(view, motionEvent, view2);
    }

    public final synchronized JSONObject zza(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2) {
        return this.zzgdh.zza(view, map, map2);
    }

    public final synchronized void zza(zzagm zzagm) {
        this.zzgdh.zza(zzagm);
    }

    public final synchronized void zza(zzyn zzyn) {
        this.zzgdh.zza(zzyn);
    }

    public final synchronized void zza(zzyj zzyj) {
        this.zzgdh.zza(zzyj);
    }

    public final synchronized void zza(zzyw zzyw) {
        this.zzgdt.zzc(zzyw);
    }
}
