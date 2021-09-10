package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.DeadObjectException;
import android.os.HandlerThread;
import android.support.v4.media.session.PlaybackStateCompat;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.b;
import com.google.android.gms.internal.ads.zzcf;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;

final class zzdth implements b.a, b.AbstractC0047b {
    private final String packageName;
    private final HandlerThread zzegn;
    private zzduh zzhsr;
    private final String zzhss;
    private final LinkedBlockingQueue<zzcf.zza> zzhst = new LinkedBlockingQueue<>();

    public zzdth(Context context, String str, String str2) {
        this.packageName = str;
        this.zzhss = str2;
        HandlerThread handlerThread = new HandlerThread("GassClient");
        this.zzegn = handlerThread;
        handlerThread.start();
        this.zzhsr = new zzduh(context, handlerThread.getLooper(), this, this, 9200000);
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

    private static zzcf.zza zzaxt() {
        return (zzcf.zza) ((zzelb) zzcf.zza.zzap().zzau(PlaybackStateCompat.ACTION_PREPARE_FROM_MEDIA_ID).zzbiw());
    }

    /* JADX WARNING: Can't wrap try/catch for region: R(4:6|7|11|13) */
    /* JADX WARNING: Code restructure failed: missing block: B:10:0x0038, code lost:
        throw r4;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:11:0x0039, code lost:
        zzarp();
        r3.zzegn.quit();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:13:?, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:7:?, code lost:
        r3.zzhst.put(zzaxt());
     */
    /* JADX WARNING: Code restructure failed: missing block: B:8:0x002f, code lost:
        r4 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:9:0x0030, code lost:
        zzarp();
        r3.zzegn.quit();
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing exception handler attribute for start block: B:6:0x0025 */
    @Override // com.google.android.gms.common.internal.b.a
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void onConnected(android.os.Bundle r4) {
        /*
            r3 = this;
            com.google.android.gms.internal.ads.zzduo r4 = r3.zzaxs()
            if (r4 == 0) goto L_0x0041
            com.google.android.gms.internal.ads.zzduk r0 = new com.google.android.gms.internal.ads.zzduk     // Catch:{ all -> 0x0025 }
            java.lang.String r1 = r3.packageName     // Catch:{ all -> 0x0025 }
            java.lang.String r2 = r3.zzhss     // Catch:{ all -> 0x0025 }
            r0.<init>(r1, r2)     // Catch:{ all -> 0x0025 }
            com.google.android.gms.internal.ads.zzdum r4 = r4.zza(r0)     // Catch:{ all -> 0x0025 }
            com.google.android.gms.internal.ads.zzcf$zza r4 = r4.zzayi()     // Catch:{ all -> 0x0025 }
            java.util.concurrent.LinkedBlockingQueue<com.google.android.gms.internal.ads.zzcf$zza> r0 = r3.zzhst     // Catch:{ all -> 0x0025 }
            r0.put(r4)     // Catch:{ all -> 0x0025 }
            r3.zzarp()
            android.os.HandlerThread r4 = r3.zzegn
            r4.quit()
            return
        L_0x0025:
            java.util.concurrent.LinkedBlockingQueue<com.google.android.gms.internal.ads.zzcf$zza> r4 = r3.zzhst     // Catch:{ InterruptedException -> 0x0039, all -> 0x002f }
            com.google.android.gms.internal.ads.zzcf$zza r0 = zzaxt()     // Catch:{ InterruptedException -> 0x0039, all -> 0x002f }
            r4.put(r0)     // Catch:{ InterruptedException -> 0x0039, all -> 0x002f }
            goto L_0x0039
        L_0x002f:
            r4 = move-exception
            r3.zzarp()
            android.os.HandlerThread r0 = r3.zzegn
            r0.quit()
            throw r4
        L_0x0039:
            r3.zzarp()
            android.os.HandlerThread r4 = r3.zzegn
            r4.quit()
        L_0x0041:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdth.onConnected(android.os.Bundle):void");
    }

    @Override // com.google.android.gms.common.internal.b.AbstractC0047b
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        try {
            this.zzhst.put(zzaxt());
        } catch (InterruptedException unused) {
        }
    }

    @Override // com.google.android.gms.common.internal.b.a
    public final void onConnectionSuspended(int i) {
        try {
            this.zzhst.put(zzaxt());
        } catch (InterruptedException unused) {
        }
    }

    public final zzcf.zza zzef(int i) {
        zzcf.zza zza;
        try {
            zza = this.zzhst.poll(5000, TimeUnit.MILLISECONDS);
        } catch (InterruptedException unused) {
            zza = null;
        }
        return zza == null ? zzaxt() : zza;
    }
}
