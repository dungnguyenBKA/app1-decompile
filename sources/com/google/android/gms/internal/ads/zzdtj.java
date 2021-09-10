package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.HandlerThread;
import com.facebook.ads.AdError;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.b;
import com.google.android.gms.internal.ads.zzbw;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;

/* access modifiers changed from: package-private */
public final class zzdtj implements b.a, b.AbstractC0047b {
    private final long startTime;
    private final HandlerThread zzegn;
    private zzduh zzhsr;
    private final LinkedBlockingQueue<zzduw> zzhst;
    private final String zzhsu;
    private final String zzhsv;
    private final int zzhsw = 1;
    private final zzdsy zzvs;
    private final zzgp zzvu;

    public zzdtj(Context context, int i, zzgp zzgp, String str, String str2, String str3, zzdsy zzdsy) {
        this.zzhsu = str;
        this.zzvu = zzgp;
        this.zzhsv = str2;
        this.zzvs = zzdsy;
        HandlerThread handlerThread = new HandlerThread("GassDGClient");
        this.zzegn = handlerThread;
        handlerThread.start();
        this.startTime = System.currentTimeMillis();
        this.zzhsr = new zzduh(context, handlerThread.getLooper(), this, this, 19621000);
        this.zzhst = new LinkedBlockingQueue<>();
        this.zzhsr.checkAvailabilityAndConnect();
    }

    private final void zzarp() {
        zzduh zzduh = this.zzhsr;
        if (zzduh == null) {
            return;
        }
        if (zzduh.isConnected() || this.zzhsr.isConnecting()) {
            this.zzhsr.disconnect();
        }
    }

    private final zzduo zzaxs() {
        try {
            return this.zzhsr.zzayh();
        } catch (DeadObjectException | IllegalStateException unused) {
            return null;
        }
    }

    private static zzduw zzaxu() {
        return new zzduw(null, 1);
    }

    private final void zzb(int i, long j, Exception exc) {
        zzdsy zzdsy = this.zzvs;
        if (zzdsy != null) {
            zzdsy.zza(i, System.currentTimeMillis() - j, exc);
        }
    }

    @Override // com.google.android.gms.common.internal.b.a
    public final void onConnected(Bundle bundle) {
        zzduo zzaxs = zzaxs();
        if (zzaxs != null) {
            try {
                zzduw zza = zzaxs.zza(new zzduu(this.zzhsw, this.zzvu, this.zzhsu, this.zzhsv));
                zzb(5011, this.startTime, null);
                this.zzhst.put(zza);
            } catch (Throwable th) {
                zzb(2010, this.startTime, new Exception(th));
            } finally {
                zzarp();
                this.zzegn.quit();
            }
        }
    }

    @Override // com.google.android.gms.common.internal.b.AbstractC0047b
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        try {
            zzb(4012, this.startTime, null);
            this.zzhst.put(zzaxu());
        } catch (InterruptedException unused) {
        }
    }

    @Override // com.google.android.gms.common.internal.b.a
    public final void onConnectionSuspended(int i) {
        try {
            zzb(4011, this.startTime, null);
            this.zzhst.put(zzaxu());
        } catch (InterruptedException unused) {
        }
    }

    public final zzduw zzeg(int i) {
        zzduw zzduw;
        try {
            zzduw = this.zzhst.poll(50000, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e) {
            zzb(AdError.INTERSTITIAL_AD_TIMEOUT, this.startTime, e);
            zzduw = null;
        }
        zzb(3004, this.startTime, null);
        if (zzduw != null) {
            if (zzduw.status == 7) {
                zzdsy.zza(zzbw.zza.zzc.DISABLED);
            } else {
                zzdsy.zza(zzbw.zza.zzc.ENABLED);
            }
        }
        return zzduw == null ? zzaxu() : zzduw;
    }
}
