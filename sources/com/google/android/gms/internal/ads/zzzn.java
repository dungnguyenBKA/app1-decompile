package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.initialization.AdapterStatus;
import com.google.android.gms.ads.initialization.InitializationStatus;
import com.google.android.gms.ads.initialization.OnInitializationCompleteListener;
import com.google.android.gms.ads.mediation.rtb.RtbAdapter;
import com.google.android.gms.ads.reward.RewardedVideoAd;
import com.google.android.gms.common.internal.n;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import javax.annotation.concurrent.GuardedBy;

public class zzzn {
    @GuardedBy("InternalMobileAds.class")
    private static zzzn zzckt;
    private final Object lock = new Object();
    private ArrayList<OnInitializationCompleteListener> zzcks = new ArrayList<>();
    @GuardedBy("lock")
    private zzyg zzcku;
    private boolean zzckv = false;
    private RewardedVideoAd zzckw;
    private RequestConfiguration zzckx = new RequestConfiguration.Builder().build();
    private InitializationStatus zzcky;
    private boolean zzzl = false;

    private class zza extends zzajn {
        private zza() {
        }

        @Override // com.google.android.gms.internal.ads.zzajk
        public final void zze(List<zzajh> list) {
            int i = 0;
            zzzn.this.zzckv = false;
            zzzn.this.zzzl = true;
            zzzn zzzn = zzzn.this;
            InitializationStatus zzd = zzzn.zzd(list);
            ArrayList arrayList = zzzn.zzrs().zzcks;
            int size = arrayList.size();
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                ((OnInitializationCompleteListener) obj).onInitializationComplete(zzd);
            }
            zzzn.zzrs().zzcks.clear();
        }

        /* synthetic */ zza(zzzn zzzn, zzzr zzzr) {
            this();
        }
    }

    private zzzn() {
    }

    /* access modifiers changed from: private */
    public static InitializationStatus zzd(List<zzajh> list) {
        HashMap hashMap = new HashMap();
        for (zzajh zzajh : list) {
            hashMap.put(zzajh.zzdit, new zzajp(zzajh.zzdiu ? AdapterStatus.State.READY : AdapterStatus.State.NOT_READY, zzajh.description, zzajh.zzdiv));
        }
        return new zzajo(hashMap);
    }

    @GuardedBy("lock")
    private final void zzg(Context context) {
        if (this.zzcku == null) {
            this.zzcku = (zzyg) new zzwo(zzwr.zzqo(), context).zzd(context, false);
        }
    }

    public static zzzn zzrs() {
        zzzn zzzn;
        synchronized (zzzn.class) {
            if (zzckt == null) {
                zzckt = new zzzn();
            }
            zzzn = zzckt;
        }
        return zzzn;
    }

    public final void disableMediationAdapterInitialization(Context context) {
        synchronized (this.lock) {
            zzg(context);
            try {
                this.zzcku.zzrd();
            } catch (RemoteException unused) {
                zzazk.zzev("Unable to disable mediation adapter initialization.");
            }
        }
    }

    public final InitializationStatus getInitializationStatus() {
        synchronized (this.lock) {
            n.k(this.zzcku != null, "MobileAds.initialize() must be called prior to getting initialization status.");
            try {
                InitializationStatus initializationStatus = this.zzcky;
                if (initializationStatus != null) {
                    return initializationStatus;
                }
                return zzd(this.zzcku.zzrc());
            } catch (RemoteException unused) {
                zzazk.zzev("Unable to get Initialization status.");
                return null;
            }
        }
    }

    public final RequestConfiguration getRequestConfiguration() {
        return this.zzckx;
    }

    public final RewardedVideoAd getRewardedVideoAdInstance(Context context) {
        synchronized (this.lock) {
            RewardedVideoAd rewardedVideoAd = this.zzckw;
            if (rewardedVideoAd != null) {
                return rewardedVideoAd;
            }
            zzavc zzavc = new zzavc(context, (zzaur) new zzwp(zzwr.zzqo(), context, new zzanf()).zzd(context, false));
            this.zzckw = zzavc;
            return zzavc;
        }
    }

    public final String getVersionString() {
        String zzhm;
        synchronized (this.lock) {
            n.k(this.zzcku != null, "MobileAds.initialize() must be called prior to getting version string.");
            try {
                zzhm = zzdwt.zzhm(this.zzcku.getVersionString());
            } catch (RemoteException e) {
                zzazk.zzc("Unable to get version string.", e);
                return "";
            }
        }
        return zzhm;
    }

    public final void openDebugMenu(Context context, String str) {
        synchronized (this.lock) {
            n.k(this.zzcku != null, "MobileAds.initialize() must be called prior to opening debug menu.");
            try {
                this.zzcku.zzb(aw.Q(context), str);
            } catch (RemoteException e) {
                zzazk.zzc("Unable to open debug menu.", e);
            }
        }
    }

    public final void registerRtbAdapter(Class<? extends RtbAdapter> cls) {
        synchronized (this.lock) {
            try {
                this.zzcku.zzce(cls.getCanonicalName());
            } catch (RemoteException e) {
                zzazk.zzc("Unable to register RtbAdapter", e);
            }
        }
    }

    public final void setAppMuted(boolean z) {
        synchronized (this.lock) {
            n.k(this.zzcku != null, "MobileAds.initialize() must be called prior to setting app muted state.");
            try {
                this.zzcku.setAppMuted(z);
            } catch (RemoteException e) {
                zzazk.zzc("Unable to set app mute state.", e);
            }
        }
    }

    public final void setAppVolume(float f) {
        boolean z = true;
        n.b(0.0f <= f && f <= 1.0f, "The app volume must be a value between 0 and 1 inclusive.");
        synchronized (this.lock) {
            if (this.zzcku == null) {
                z = false;
            }
            n.k(z, "MobileAds.initialize() must be called prior to setting the app volume.");
            try {
                this.zzcku.setAppVolume(f);
            } catch (RemoteException e) {
                zzazk.zzc("Unable to set app volume.", e);
            }
        }
    }

    public final void setRequestConfiguration(RequestConfiguration requestConfiguration) {
        n.b(requestConfiguration != null, "Null passed to setRequestConfiguration.");
        synchronized (this.lock) {
            RequestConfiguration requestConfiguration2 = this.zzckx;
            this.zzckx = requestConfiguration;
            if (this.zzcku != null) {
                if (!(requestConfiguration2.getTagForChildDirectedTreatment() == requestConfiguration.getTagForChildDirectedTreatment() && requestConfiguration2.getTagForUnderAgeOfConsent() == requestConfiguration.getTagForUnderAgeOfConsent())) {
                    zza(requestConfiguration);
                }
            }
        }
    }

    public final void zza(Context context, String str, OnInitializationCompleteListener onInitializationCompleteListener) {
        synchronized (this.lock) {
            if (this.zzckv) {
                if (onInitializationCompleteListener != null) {
                    zzrs().zzcks.add(onInitializationCompleteListener);
                }
            } else if (this.zzzl) {
                if (onInitializationCompleteListener != null) {
                    onInitializationCompleteListener.onInitializationComplete(getInitializationStatus());
                }
            } else {
                this.zzckv = true;
                if (onInitializationCompleteListener != null) {
                    zzrs().zzcks.add(onInitializationCompleteListener);
                }
                if (context != null) {
                    try {
                        zzamz.zzut().zzc(context, str);
                        zzg(context);
                        if (onInitializationCompleteListener != null) {
                            this.zzcku.zza(new zza(this, null));
                        }
                        this.zzcku.zza(new zzanf());
                        this.zzcku.initialize();
                        this.zzcku.zza(str, aw.Q(new zzzq(this, context)));
                        if (!(this.zzckx.getTagForChildDirectedTreatment() == -1 && this.zzckx.getTagForUnderAgeOfConsent() == -1)) {
                            zza(this.zzckx);
                        }
                        zzabp.initialize(context);
                        if (!((Boolean) zzwr.zzqr().zzd(zzabp.zzcwc)).booleanValue() && !getVersionString().endsWith("0")) {
                            zzazk.zzev("Google Mobile Ads SDK initialization functionality unavailable for this session. Ad requests can be made at any time.");
                            this.zzcky = new zzzs(this);
                            if (onInitializationCompleteListener != null) {
                                zzaza.zzaac.post(new zzzp(this, onInitializationCompleteListener));
                            }
                        }
                    } catch (RemoteException e) {
                        zzazk.zzd("MobileAdsSettingManager initialization failed", e);
                    }
                    return;
                }
                throw new IllegalArgumentException("Context cannot be null.");
            }
        }
    }

    public final float zzra() {
        synchronized (this.lock) {
            zzyg zzyg = this.zzcku;
            float f = 1.0f;
            if (zzyg == null) {
                return 1.0f;
            }
            try {
                f = zzyg.zzra();
            } catch (RemoteException e) {
                zzazk.zzc("Unable to get app volume.", e);
            }
            return f;
        }
    }

    public final boolean zzrb() {
        synchronized (this.lock) {
            zzyg zzyg = this.zzcku;
            boolean z = false;
            if (zzyg == null) {
                return false;
            }
            try {
                z = zzyg.zzrb();
            } catch (RemoteException e) {
                zzazk.zzc("Unable to get app mute state.", e);
            }
            return z;
        }
    }

    @GuardedBy("lock")
    private final void zza(RequestConfiguration requestConfiguration) {
        try {
            this.zzcku.zza(new zzaao(requestConfiguration));
        } catch (RemoteException e) {
            zzazk.zzc("Unable to set request configuration parcel.", e);
        }
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ void zza(OnInitializationCompleteListener onInitializationCompleteListener) {
        onInitializationCompleteListener.onInitializationComplete(this.zzcky);
    }
}
