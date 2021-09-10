package com.google.android.gms.internal.ads;

final class zzbbe implements Runnable {
    private final /* synthetic */ zzbax zzekp;
    private final /* synthetic */ boolean zzeks;

    zzbbe(zzbax zzbax, boolean z) {
        this.zzekp = zzbax;
        this.zzeks = z;
    }

    public final void run() {
        zzbax.zza(this.zzekp, "windowVisibilityChanged", new String[]{"isVisible", String.valueOf(this.zzeks)});
    }
}
