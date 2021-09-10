package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.vungle.warren.analytics.AnalyticsEvent;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import javax.annotation.concurrent.GuardedBy;

public final class zzbev extends zzzb {
    private final Object lock = new Object();
    @GuardedBy("lock")
    private boolean zzady;
    @GuardedBy("lock")
    private boolean zzadz;
    @GuardedBy("lock")
    private int zzafa;
    @GuardedBy("lock")
    private zzzd zzdnk;
    private final zzbbo zzeix;
    private final boolean zzety;
    private final boolean zzetz;
    @GuardedBy("lock")
    private boolean zzeua;
    @GuardedBy("lock")
    private boolean zzeub = true;
    @GuardedBy("lock")
    private float zzeuc;
    @GuardedBy("lock")
    private float zzeud;
    @GuardedBy("lock")
    private float zzeue;
    @GuardedBy("lock")
    private zzagd zzeuf;

    public zzbev(zzbbo zzbbo, float f, boolean z, boolean z2) {
        this.zzeix = zzbbo;
        this.zzeuc = f;
        this.zzety = z;
        this.zzetz = z2;
    }

    private final void zze(String str, Map<String, String> map) {
        HashMap hashMap = map == null ? new HashMap() : new HashMap(map);
        hashMap.put("action", str);
        zzazp.zzeig.execute(new zzbey(this, hashMap));
    }

    @Override // com.google.android.gms.internal.ads.zzzc
    public final float getAspectRatio() {
        float f;
        synchronized (this.lock) {
            f = this.zzeue;
        }
        return f;
    }

    @Override // com.google.android.gms.internal.ads.zzzc
    public final float getCurrentTime() {
        float f;
        synchronized (this.lock) {
            f = this.zzeud;
        }
        return f;
    }

    @Override // com.google.android.gms.internal.ads.zzzc
    public final float getDuration() {
        float f;
        synchronized (this.lock) {
            f = this.zzeuc;
        }
        return f;
    }

    @Override // com.google.android.gms.internal.ads.zzzc
    public final int getPlaybackState() {
        int i;
        synchronized (this.lock) {
            i = this.zzafa;
        }
        return i;
    }

    @Override // com.google.android.gms.internal.ads.zzzc
    public final boolean isClickToExpandEnabled() {
        boolean z;
        boolean isCustomControlsEnabled = isCustomControlsEnabled();
        synchronized (this.lock) {
            if (!isCustomControlsEnabled) {
                try {
                    if (this.zzadz && this.zzetz) {
                        z = true;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            z = false;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzzc
    public final boolean isCustomControlsEnabled() {
        boolean z;
        synchronized (this.lock) {
            z = this.zzety && this.zzady;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzzc
    public final boolean isMuted() {
        boolean z;
        synchronized (this.lock) {
            z = this.zzeub;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzzc
    public final void mute(boolean z) {
        zze(z ? AnalyticsEvent.Ad.mute : AnalyticsEvent.Ad.unmute, null);
    }

    @Override // com.google.android.gms.internal.ads.zzzc
    public final void pause() {
        zze("pause", null);
    }

    @Override // com.google.android.gms.internal.ads.zzzc
    public final void play() {
        zze("play", null);
    }

    @Override // com.google.android.gms.internal.ads.zzzc
    public final void stop() {
        zze("stop", null);
    }

    @Override // com.google.android.gms.internal.ads.zzzc
    public final void zza(zzzd zzzd) {
        synchronized (this.lock) {
            this.zzdnk = zzzd;
        }
    }

    public final void zzaej() {
        boolean z;
        int i;
        synchronized (this.lock) {
            z = this.zzeub;
            i = this.zzafa;
            this.zzafa = 3;
        }
        zza(i, 3, z, z);
    }

    public final void zzb(zzaau zzaau) {
        boolean z = zzaau.zzadx;
        boolean z2 = zzaau.zzady;
        boolean z3 = zzaau.zzadz;
        synchronized (this.lock) {
            this.zzady = z2;
            this.zzadz = z3;
        }
        String str = z ? "1" : "0";
        String str2 = z2 ? "1" : "0";
        String str3 = z3 ? "1" : "0";
        x xVar = new x(3);
        xVar.put("muteStart", str);
        xVar.put("customControlsRequested", str2);
        xVar.put("clickToExpandRequested", str3);
        zze("initialState", Collections.unmodifiableMap(xVar));
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ void zzl(Map map) {
        this.zzeix.zza("pubVideoCmd", map);
    }

    @Override // com.google.android.gms.internal.ads.zzzc
    public final zzzd zzrg() {
        zzzd zzzd;
        synchronized (this.lock) {
            zzzd = this.zzdnk;
        }
        return zzzd;
    }

    /* JADX WARNING: Removed duplicated region for block: B:12:0x002f  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void zza(float r4, float r5, int r6, boolean r7, float r8) {
        /*
            r3 = this;
            java.lang.Object r0 = r3.lock
            monitor-enter(r0)
            float r1 = r3.zzeuc     // Catch:{ all -> 0x004d }
            int r1 = (r5 > r1 ? 1 : (r5 == r1 ? 0 : -1))
            if (r1 != 0) goto L_0x0012
            float r1 = r3.zzeue     // Catch:{ all -> 0x004d }
            int r1 = (r8 > r1 ? 1 : (r8 == r1 ? 0 : -1))
            if (r1 == 0) goto L_0x0010
            goto L_0x0012
        L_0x0010:
            r1 = 0
            goto L_0x0013
        L_0x0012:
            r1 = 1
        L_0x0013:
            r3.zzeuc = r5     // Catch:{ all -> 0x004d }
            r3.zzeud = r4     // Catch:{ all -> 0x004d }
            boolean r4 = r3.zzeub     // Catch:{ all -> 0x004d }
            r3.zzeub = r7     // Catch:{ all -> 0x004d }
            int r5 = r3.zzafa     // Catch:{ all -> 0x004d }
            r3.zzafa = r6     // Catch:{ all -> 0x004d }
            float r2 = r3.zzeue     // Catch:{ all -> 0x004d }
            r3.zzeue = r8     // Catch:{ all -> 0x004d }
            float r8 = r8 - r2
            float r8 = java.lang.Math.abs(r8)     // Catch:{ all -> 0x004d }
            r2 = 953267991(0x38d1b717, float:1.0E-4)
            int r8 = (r8 > r2 ? 1 : (r8 == r2 ? 0 : -1))
            if (r8 <= 0) goto L_0x0038
            com.google.android.gms.internal.ads.zzbbo r8 = r3.zzeix     // Catch:{ all -> 0x004d }
            android.view.View r8 = r8.getView()     // Catch:{ all -> 0x004d }
            r8.invalidate()     // Catch:{ all -> 0x004d }
        L_0x0038:
            monitor-exit(r0)     // Catch:{ all -> 0x004d }
            if (r1 == 0) goto L_0x0049
            com.google.android.gms.internal.ads.zzagd r8 = r3.zzeuf     // Catch:{ RemoteException -> 0x0043 }
            if (r8 == 0) goto L_0x0049
            r8.zztw()     // Catch:{ RemoteException -> 0x0043 }
            goto L_0x0049
        L_0x0043:
            r8 = move-exception
            java.lang.String r0 = "#007 Could not call remote method."
            com.google.android.gms.internal.ads.zzazk.zze(r0, r8)
        L_0x0049:
            r3.zza(r5, r6, r4, r7)
            return
        L_0x004d:
            r4 = move-exception
            monitor-exit(r0)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbev.zza(float, float, int, boolean, float):void");
    }

    public final void zze(float f) {
        synchronized (this.lock) {
            this.zzeud = f;
        }
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ void zzb(int i, int i2, boolean z, boolean z2) {
        zzzd zzzd;
        zzzd zzzd2;
        zzzd zzzd3;
        synchronized (this.lock) {
            boolean z3 = false;
            boolean z4 = i != i2;
            boolean z5 = this.zzeua;
            boolean z6 = !z5 && i2 == 1;
            boolean z7 = z4 && i2 == 1;
            boolean z8 = z4 && i2 == 2;
            boolean z9 = z4 && i2 == 3;
            boolean z10 = z != z2;
            if (z5 || z6) {
                z3 = true;
            }
            this.zzeua = z3;
            if (z6) {
                try {
                    zzzd zzzd4 = this.zzdnk;
                    if (zzzd4 != null) {
                        zzzd4.onVideoStart();
                    }
                } catch (RemoteException e) {
                    zzazk.zze("#007 Could not call remote method.", e);
                }
            }
            if (z7 && (zzzd3 = this.zzdnk) != null) {
                zzzd3.onVideoPlay();
            }
            if (z8 && (zzzd2 = this.zzdnk) != null) {
                zzzd2.onVideoPause();
            }
            if (z9) {
                zzzd zzzd5 = this.zzdnk;
                if (zzzd5 != null) {
                    zzzd5.onVideoEnd();
                }
                this.zzeix.zzabm();
            }
            if (z10 && (zzzd = this.zzdnk) != null) {
                zzzd.onVideoMute(z2);
            }
        }
    }

    public final void zza(zzagd zzagd) {
        synchronized (this.lock) {
            this.zzeuf = zzagd;
        }
    }

    private final void zza(int i, int i2, boolean z, boolean z2) {
        zzazp.zzeig.execute(new zzbex(this, i, i2, z, z2));
    }
}
