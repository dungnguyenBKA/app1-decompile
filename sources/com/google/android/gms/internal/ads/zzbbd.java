package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.ViewGroup;
import com.google.android.gms.common.internal.n;

public final class zzbbd {
    private final Context zzcmf;
    private final zzbbo zzeix;
    private final ViewGroup zzekq;
    private zzbax zzekr;

    public zzbbd(Context context, ViewGroup viewGroup, zzbeb zzbeb) {
        this(context, viewGroup, zzbeb, null);
    }

    public final void onDestroy() {
        n.d("onDestroy must be called from the UI thread.");
        zzbax zzbax = this.zzekr;
        if (zzbax != null) {
            zzbax.destroy();
            this.zzekq.removeView(this.zzekr);
            this.zzekr = null;
        }
    }

    public final void onPause() {
        n.d("onPause must be called from the UI thread.");
        zzbax zzbax = this.zzekr;
        if (zzbax != null) {
            zzbax.pause();
        }
    }

    public final void zza(int i, int i2, int i3, int i4, int i5, boolean z, zzbbl zzbbl) {
        if (this.zzekr == null) {
            zzabx.zza(this.zzeix.zzabi().zzsp(), this.zzeix.zzabd(), "vpr2");
            Context context = this.zzcmf;
            zzbbo zzbbo = this.zzeix;
            zzbax zzbax = new zzbax(context, zzbbo, i5, z, zzbbo.zzabi().zzsp(), zzbbl);
            this.zzekr = zzbax;
            this.zzekq.addView(zzbax, 0, new ViewGroup.LayoutParams(-1, -1));
            this.zzekr.zzd(i, i2, i3, i4);
            this.zzeix.zzaw(false);
        }
    }

    public final zzbax zzaav() {
        n.d("getAdVideoUnderlay must be called from the UI thread.");
        return this.zzekr;
    }

    public final void zze(int i, int i2, int i3, int i4) {
        n.d("The underlay may only be modified from the UI thread.");
        zzbax zzbax = this.zzekr;
        if (zzbax != null) {
            zzbax.zzd(i, i2, i3, i4);
        }
    }

    private zzbbd(Context context, ViewGroup viewGroup, zzbbo zzbbo, zzbax zzbax) {
        this.zzcmf = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        this.zzekq = viewGroup;
        this.zzeix = zzbbo;
        this.zzekr = null;
    }
}
