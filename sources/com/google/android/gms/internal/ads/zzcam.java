package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.internal.ads.zzug;
import javax.annotation.ParametersAreNonnullByDefault;

public final class zzcam implements zzbrm, zzbxp {
    private final Context context;
    private final View view;
    private final zzaxc zzbqv;
    private final zzaxd zzfwd;
    private final zzug.zza.EnumC0069zza zzgbp;
    private String zzgbr;

    public zzcam(zzaxd zzaxd, Context context2, zzaxc zzaxc, View view2, zzug.zza.EnumC0069zza zza) {
        this.zzfwd = zzaxd;
        this.context = context2;
        this.zzbqv = zzaxc;
        this.view = view2;
        this.zzgbp = zza;
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final void onAdClosed() {
        this.zzfwd.zzan(false);
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final void onAdLeftApplication() {
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final void onAdOpened() {
        View view2 = this.view;
        if (!(view2 == null || this.zzgbr == null)) {
            this.zzbqv.zzf(view2.getContext(), this.zzgbr);
        }
        this.zzfwd.zzan(true);
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final void onRewardedVideoCompleted() {
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    public final void onRewardedVideoStarted() {
    }

    @Override // com.google.android.gms.internal.ads.zzbxp
    public final void zzald() {
    }

    @Override // com.google.android.gms.internal.ads.zzbxp
    public final void zzalf() {
        String zzaa = this.zzbqv.zzaa(this.context);
        this.zzgbr = zzaa;
        String valueOf = String.valueOf(zzaa);
        String str = this.zzgbp == zzug.zza.EnumC0069zza.REWARD_BASED_VIDEO_AD ? "/Rewarded" : "/Interstitial";
        this.zzgbr = str.length() != 0 ? valueOf.concat(str) : new String(valueOf);
    }

    @Override // com.google.android.gms.internal.ads.zzbrm
    @ParametersAreNonnullByDefault
    public final void zzb(zzauk zzauk, String str, String str2) {
        if (this.zzbqv.zzy(this.context)) {
            try {
                zzaxc zzaxc = this.zzbqv;
                Context context2 = this.context;
                zzaxc.zza(context2, zzaxc.zzad(context2), this.zzfwd.getAdUnitId(), zzauk.getType(), zzauk.getAmount());
            } catch (RemoteException e) {
                zzazk.zzd("Remote Exception to get reward item.", e);
            }
        }
    }
}
