package com.google.android.gms.internal.ads;

import android.graphics.drawable.Drawable;
import android.os.RemoteException;

public final class zzcbs extends zzaep {
    private final zzccd zzgch;
    private zv zzgdf;

    public zzcbs(zzccd zzccd) {
        this.zzgch = zzccd;
    }

    private final float zzano() {
        try {
            return this.zzgch.getVideoController().getAspectRatio();
        } catch (RemoteException e) {
            zzazk.zzc("Remote exception getting video controller aspect ratio.", e);
            return 0.0f;
        }
    }

    private static float zzas(zv zvVar) {
        Drawable drawable;
        if (zvVar == null || (drawable = (Drawable) aw.P(zvVar)) == null || drawable.getIntrinsicWidth() == -1 || drawable.getIntrinsicHeight() == -1) {
            return 0.0f;
        }
        return ((float) drawable.getIntrinsicWidth()) / ((float) drawable.getIntrinsicHeight());
    }

    @Override // com.google.android.gms.internal.ads.zzaem
    public final float getAspectRatio() {
        if (!((Boolean) zzwr.zzqr().zzd(zzabp.zzcyb)).booleanValue()) {
            return 0.0f;
        }
        if (this.zzgch.getMediaContentAspectRatio() != 0.0f) {
            return this.zzgch.getMediaContentAspectRatio();
        }
        if (this.zzgch.getVideoController() != null) {
            return zzano();
        }
        zv zvVar = this.zzgdf;
        if (zvVar != null) {
            return zzas(zvVar);
        }
        zzaer zzanw = this.zzgch.zzanw();
        if (zzanw == null) {
            return 0.0f;
        }
        float width = (zzanw.getWidth() == -1 || zzanw.getHeight() == -1) ? 0.0f : ((float) zzanw.getWidth()) / ((float) zzanw.getHeight());
        if (width != 0.0f) {
            return width;
        }
        return zzas(zzanw.zzti());
    }

    @Override // com.google.android.gms.internal.ads.zzaem
    public final float getCurrentTime() {
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcyc)).booleanValue() && this.zzgch.getVideoController() != null) {
            return this.zzgch.getVideoController().getCurrentTime();
        }
        return 0.0f;
    }

    @Override // com.google.android.gms.internal.ads.zzaem
    public final float getDuration() {
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcyc)).booleanValue() && this.zzgch.getVideoController() != null) {
            return this.zzgch.getVideoController().getDuration();
        }
        return 0.0f;
    }

    @Override // com.google.android.gms.internal.ads.zzaem
    public final zzzc getVideoController() {
        if (!((Boolean) zzwr.zzqr().zzd(zzabp.zzcyc)).booleanValue()) {
            return null;
        }
        return this.zzgch.getVideoController();
    }

    @Override // com.google.android.gms.internal.ads.zzaem
    public final boolean hasVideoContent() {
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcyc)).booleanValue() && this.zzgch.getVideoController() != null) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzaem
    public final void zza(zzagd zzagd) {
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcyc)).booleanValue() && (this.zzgch.getVideoController() instanceof zzbev)) {
            ((zzbev) this.zzgch.getVideoController()).zza(zzagd);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaem
    public final void zzo(zv zvVar) {
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcte)).booleanValue()) {
            this.zzgdf = zvVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaem
    public final zv zztl() {
        zv zvVar = this.zzgdf;
        if (zvVar != null) {
            return zvVar;
        }
        zzaer zzanw = this.zzgch.zzanw();
        if (zzanw == null) {
            return null;
        }
        return zzanw.zzti();
    }
}
