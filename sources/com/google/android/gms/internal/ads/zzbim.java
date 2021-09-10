package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.zzad;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.common.internal.n;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.annotation.concurrent.GuardedBy;
import org.json.JSONObject;

public final class zzbim extends zzyf {
    private final Context context;
    private final zzazn zzbpn;
    private final zzaxc zzbqv;
    private final zzcin zzfqj;
    private final zzcro<zzdog, zzctg> zzfqk;
    private final zzcxj zzfql;
    private final zzclq zzfqm;
    private final zzcip zzfqn;
    @GuardedBy("this")
    private boolean zzzl = false;

    zzbim(Context context2, zzazn zzazn, zzcin zzcin, zzcro<zzdog, zzctg> zzcro, zzcxj zzcxj, zzclq zzclq, zzaxc zzaxc, zzcip zzcip) {
        this.context = context2;
        this.zzbpn = zzazn;
        this.zzfqj = zzcin;
        this.zzfqk = zzcro;
        this.zzfql = zzcxj;
        this.zzfqm = zzclq;
        this.zzbqv = zzaxc;
        this.zzfqn = zzcip;
    }

    @Override // com.google.android.gms.internal.ads.zzyg
    public final String getVersionString() {
        return this.zzbpn.zzbrp;
    }

    @Override // com.google.android.gms.internal.ads.zzyg
    public final synchronized void initialize() {
        if (this.zzzl) {
            zzazk.zzex("Mobile ads is initialized already.");
            return;
        }
        zzabp.initialize(this.context);
        zzr.zzkv().zzd(this.context, this.zzbpn);
        zzr.zzkx().initialize(this.context);
        this.zzzl = true;
        this.zzfqm.zzarb();
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcra)).booleanValue()) {
            this.zzfql.zzapw();
        }
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzctt)).booleanValue()) {
            this.zzfqn.zzapw();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzyg
    public final synchronized void setAppMuted(boolean z) {
        zzr.zzkw().setAppMuted(z);
    }

    @Override // com.google.android.gms.internal.ads.zzyg
    public final synchronized void setAppVolume(float f) {
        zzr.zzkw().setAppVolume(f);
    }

    @Override // com.google.android.gms.internal.ads.zzyg
    public final void zza(String str, zv zvVar) {
        String str2;
        zzabp.initialize(this.context);
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzctv)).booleanValue()) {
            zzr.zzkr();
            str2 = zzj.zzay(this.context);
        } else {
            str2 = "";
        }
        if (!TextUtils.isEmpty(str2)) {
            str = str2;
        }
        if (!TextUtils.isEmpty(str)) {
            boolean booleanValue = ((Boolean) zzwr.zzqr().zzd(zzabp.zzcts)).booleanValue();
            zzaba<Boolean> zzaba = zzabp.zzcph;
            boolean booleanValue2 = booleanValue | ((Boolean) zzwr.zzqr().zzd(zzaba)).booleanValue();
            zzbil zzbil = null;
            if (((Boolean) zzwr.zzqr().zzd(zzaba)).booleanValue()) {
                booleanValue2 = true;
                zzbil = new zzbil(this, (Runnable) aw.P(zvVar));
            }
            if (booleanValue2) {
                zzr.zzkz().zza(this.context, this.zzbpn, str, zzbil);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzyg
    public final void zzb(zv zvVar, String str) {
        if (zvVar == null) {
            zzazk.zzev("Wrapped context is null. Failed to open debug menu.");
            return;
        }
        Context context2 = (Context) aw.P(zvVar);
        if (context2 == null) {
            zzazk.zzev("Context is null. Failed to open debug menu.");
            return;
        }
        zzad zzad = new zzad(context2);
        zzad.setAdUnitId(str);
        zzad.zzu(this.zzbpn.zzbrp);
        zzad.showDialog();
    }

    @Override // com.google.android.gms.internal.ads.zzyg
    public final synchronized void zzcd(String str) {
        zzabp.initialize(this.context);
        if (!TextUtils.isEmpty(str)) {
            if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcts)).booleanValue()) {
                zzr.zzkz().zza(this.context, this.zzbpn, str, (Runnable) null);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzyg
    public final void zzce(String str) {
        this.zzfql.zzgp(str);
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ void zzd(Runnable runnable) {
        n.d("Adapters must be initialized on the main thread.");
        Map<String, zzand> zzya = zzr.zzkv().zzxs().zzyn().zzya();
        if (!(zzya == null || zzya.isEmpty())) {
            if (runnable != null) {
                try {
                    runnable.run();
                } catch (Throwable th) {
                    zzazk.zzd("Could not initialize rewarded ads.", th);
                    return;
                }
            }
            if (this.zzfqj.zzapt()) {
                HashMap hashMap = new HashMap();
                for (zzand zzand : zzya.values()) {
                    for (zzana zzana : zzand.zzdmo) {
                        String str = zzana.zzdmb;
                        for (String str2 : zzana.zzdlt) {
                            if (!hashMap.containsKey(str2)) {
                                hashMap.put(str2, new ArrayList());
                            }
                            if (str != null) {
                                ((Collection) hashMap.get(str2)).add(str);
                            }
                        }
                    }
                }
                JSONObject jSONObject = new JSONObject();
                for (Map.Entry entry : hashMap.entrySet()) {
                    String str3 = (String) entry.getKey();
                    try {
                        zzcrl<zzdog, zzctg> zzf = this.zzfqk.zzf(str3, jSONObject);
                        if (zzf != null) {
                            AdapterT adaptert = zzf.zzdnl;
                            if (!adaptert.isInitialized()) {
                                if (adaptert.zzuz()) {
                                    adaptert.zza(this.context, (zzctg) zzf.zzgsu, (List) entry.getValue());
                                    String valueOf = String.valueOf(str3);
                                    zzazk.zzdy(valueOf.length() != 0 ? "Initialized rewarded video mediation adapter ".concat(valueOf) : new String("Initialized rewarded video mediation adapter "));
                                }
                            }
                        }
                    } catch (zzdnt e) {
                        StringBuilder sb = new StringBuilder(String.valueOf(str3).length() + 56);
                        sb.append("Failed to initialize rewarded video mediation adapter \"");
                        sb.append(str3);
                        sb.append("\"");
                        zzazk.zzd(sb.toString(), e);
                    }
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzyg
    public final synchronized float zzra() {
        return zzr.zzkw().zzra();
    }

    @Override // com.google.android.gms.internal.ads.zzyg
    public final synchronized boolean zzrb() {
        return zzr.zzkw().zzrb();
    }

    @Override // com.google.android.gms.internal.ads.zzyg
    public final List<zzajh> zzrc() {
        return this.zzfqm.zzarc();
    }

    @Override // com.google.android.gms.internal.ads.zzyg
    public final void zzrd() {
        this.zzfqm.disable();
    }

    @Override // com.google.android.gms.internal.ads.zzyg
    public final void zza(zzane zzane) {
        this.zzfqj.zzb(zzane);
    }

    @Override // com.google.android.gms.internal.ads.zzyg
    public final void zza(zzajk zzajk) {
        this.zzfqm.zzb(zzajk);
    }

    @Override // com.google.android.gms.internal.ads.zzyg
    public final void zza(zzaao zzaao) {
        this.zzbqv.zza(this.context, zzaao);
    }
}
