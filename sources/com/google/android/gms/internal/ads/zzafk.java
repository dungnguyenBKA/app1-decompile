package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.formats.NativeContentAd;
import java.util.ArrayList;
import java.util.List;

public final class zzafk extends NativeContentAd {
    private final VideoController zzckl = new VideoController();
    private final List<NativeAd.Image> zzdga = new ArrayList();
    private final NativeAd.AdChoicesInfo zzdgc;
    private final zzafj zzdgd;
    private final zzaes zzdge;

    /* JADX WARNING: Removed duplicated region for block: B:31:0x0074 A[Catch:{ RemoteException -> 0x0081 }] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public zzafk(com.google.android.gms.internal.ads.zzafj r6) {
        /*
        // Method dump skipped, instructions count: 136
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzafk.<init>(com.google.android.gms.internal.ads.zzafj):void");
    }

    /* access modifiers changed from: private */
    /* renamed from: zztm */
    public final zv zzjs() {
        try {
            return this.zzdgd.zztm();
        } catch (RemoteException e) {
            zzazk.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeContentAd
    public final void destroy() {
        try {
            this.zzdgd.destroy();
        } catch (RemoteException e) {
            zzazk.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeContentAd
    public final NativeAd.AdChoicesInfo getAdChoicesInfo() {
        return this.zzdgc;
    }

    @Override // com.google.android.gms.ads.formats.NativeContentAd
    public final CharSequence getAdvertiser() {
        try {
            return this.zzdgd.getAdvertiser();
        } catch (RemoteException e) {
            zzazk.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeContentAd
    public final CharSequence getBody() {
        try {
            return this.zzdgd.getBody();
        } catch (RemoteException e) {
            zzazk.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeContentAd
    public final CharSequence getCallToAction() {
        try {
            return this.zzdgd.getCallToAction();
        } catch (RemoteException e) {
            zzazk.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeContentAd
    public final Bundle getExtras() {
        try {
            return this.zzdgd.getExtras();
        } catch (RemoteException e) {
            zzazk.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeContentAd
    public final CharSequence getHeadline() {
        try {
            return this.zzdgd.getHeadline();
        } catch (RemoteException e) {
            zzazk.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeContentAd
    public final List<NativeAd.Image> getImages() {
        return this.zzdga;
    }

    @Override // com.google.android.gms.ads.formats.NativeContentAd
    public final NativeAd.Image getLogo() {
        return this.zzdge;
    }

    @Override // com.google.android.gms.ads.formats.NativeContentAd
    public final CharSequence getMediationAdapterClassName() {
        try {
            return this.zzdgd.getMediationAdapterClassName();
        } catch (RemoteException e) {
            zzazk.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeContentAd
    public final VideoController getVideoController() {
        try {
            if (this.zzdgd.getVideoController() != null) {
                this.zzckl.zza(this.zzdgd.getVideoController());
            }
        } catch (RemoteException e) {
            zzazk.zzc("Exception occurred while getting video controller", e);
        }
        return this.zzckl;
    }

    @Override // com.google.android.gms.ads.formats.NativeAd
    public final void performClick(Bundle bundle) {
        try {
            this.zzdgd.performClick(bundle);
        } catch (RemoteException e) {
            zzazk.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeAd
    public final boolean recordImpression(Bundle bundle) {
        try {
            return this.zzdgd.recordImpression(bundle);
        } catch (RemoteException e) {
            zzazk.zzc("", e);
            return false;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeAd
    public final void reportTouchEvent(Bundle bundle) {
        try {
            this.zzdgd.reportTouchEvent(bundle);
        } catch (RemoteException e) {
            zzazk.zzc("", e);
        }
    }
}
