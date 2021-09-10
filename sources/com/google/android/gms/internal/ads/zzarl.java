package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.view.View;
import android.webkit.WebView;
import javax.annotation.concurrent.GuardedBy;

public final class zzarl {
    private static final Object lock = new Object();
    @GuardedBy("lock")
    private static boolean zzdqy = false;
    @GuardedBy("lock")
    private static boolean zzzl = false;
    private zzdst zzdqz;

    private final void zzn(Context context) {
        synchronized (lock) {
            if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcvm)).booleanValue() && !zzdqy) {
                try {
                    zzdqy = true;
                    this.zzdqz = (zzdst) zzazj.zza(context, "com.google.android.gms.ads.omid.DynamiteOmid", zzark.zzbyi);
                } catch (zzazl e) {
                    zzazk.zze("#007 Could not call remote method.", e);
                }
            }
        }
    }

    public final String getVersion(Context context) {
        if (!((Boolean) zzwr.zzqr().zzd(zzabp.zzcvm)).booleanValue()) {
            return null;
        }
        try {
            zzn(context);
            String valueOf = String.valueOf(this.zzdqz.getVersion());
            return valueOf.length() != 0 ? "a.".concat(valueOf) : new String("a.");
        } catch (RemoteException | NullPointerException e) {
            zzazk.zze("#007 Could not call remote method.", e);
            return null;
        }
    }

    public final zv zza(String str, WebView webView, String str2, String str3, String str4) {
        return zza(str, webView, str2, str3, str4, "Google");
    }

    public final void zzab(zv zvVar) {
        synchronized (lock) {
            if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcvm)).booleanValue()) {
                if (zzzl) {
                    try {
                        this.zzdqz.zzab(zvVar);
                    } catch (RemoteException | NullPointerException e) {
                        zzazk.zze("#007 Could not call remote method.", e);
                    }
                }
            }
        }
    }

    public final void zzac(zv zvVar) {
        synchronized (lock) {
            if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcvm)).booleanValue()) {
                if (zzzl) {
                    try {
                        this.zzdqz.zzac(zvVar);
                    } catch (RemoteException | NullPointerException e) {
                        zzazk.zze("#007 Could not call remote method.", e);
                    }
                }
            }
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:10:0x002c, code lost:
        if (((java.lang.Boolean) com.google.android.gms.internal.ads.zzwr.zzqr().zzd(com.google.android.gms.internal.ads.zzabp.zzcvq)).booleanValue() != false) goto L_0x0033;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:12:0x0032, code lost:
        return zza(r15, r16, r17, r18, r19, r20);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:16:0x0051, code lost:
        return r14.zzdqz.zza(r15, defpackage.aw.Q(r16), r17, r18, r19, r20, r21.toString(), r22.toString(), r23);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:17:0x0052, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:18:0x0055, code lost:
        com.google.android.gms.internal.ads.zzazk.zze("#007 Could not call remote method.", r0);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:19:0x005a, code lost:
        return null;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final defpackage.zv zzb(java.lang.String r15, android.webkit.WebView r16, java.lang.String r17, java.lang.String r18, java.lang.String r19, java.lang.String r20, com.google.android.gms.internal.ads.zzarm r21, com.google.android.gms.internal.ads.zzarn r22, java.lang.String r23) {
        /*
            r14 = this;
            java.lang.Object r1 = com.google.android.gms.internal.ads.zzarl.lock
            monitor-enter(r1)
            com.google.android.gms.internal.ads.zzaba<java.lang.Boolean> r0 = com.google.android.gms.internal.ads.zzabp.zzcvm     // Catch:{ all -> 0x005e }
            com.google.android.gms.internal.ads.zzabl r2 = com.google.android.gms.internal.ads.zzwr.zzqr()     // Catch:{ all -> 0x005e }
            java.lang.Object r0 = r2.zzd(r0)     // Catch:{ all -> 0x005e }
            java.lang.Boolean r0 = (java.lang.Boolean) r0     // Catch:{ all -> 0x005e }
            boolean r0 = r0.booleanValue()     // Catch:{ all -> 0x005e }
            r2 = 0
            if (r0 == 0) goto L_0x005b
            boolean r0 = com.google.android.gms.internal.ads.zzarl.zzzl     // Catch:{ all -> 0x005e }
            if (r0 != 0) goto L_0x001b
            goto L_0x005b
        L_0x001b:
            monitor-exit(r1)     // Catch:{ all -> 0x005e }
            com.google.android.gms.internal.ads.zzaba<java.lang.Boolean> r0 = com.google.android.gms.internal.ads.zzabp.zzcvq
            com.google.android.gms.internal.ads.zzabl r1 = com.google.android.gms.internal.ads.zzwr.zzqr()
            java.lang.Object r0 = r1.zzd(r0)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            if (r0 != 0) goto L_0x0033
            zv r0 = r14.zza(r15, r16, r17, r18, r19, r20)
            return r0
        L_0x0033:
            r3 = r14
            com.google.android.gms.internal.ads.zzdst r4 = r3.zzdqz     // Catch:{ RemoteException -> 0x0054, NullPointerException -> 0x0052 }
            zv r6 = defpackage.aw.Q(r16)     // Catch:{ RemoteException -> 0x0054, NullPointerException -> 0x0052 }
            java.lang.String r11 = r21.toString()     // Catch:{ RemoteException -> 0x0054, NullPointerException -> 0x0052 }
            java.lang.String r12 = r22.toString()     // Catch:{ RemoteException -> 0x0054, NullPointerException -> 0x0052 }
            r5 = r15
            r7 = r17
            r8 = r18
            r9 = r19
            r10 = r20
            r13 = r23
            zv r0 = r4.zza(r5, r6, r7, r8, r9, r10, r11, r12, r13)     // Catch:{ RemoteException -> 0x0054, NullPointerException -> 0x0052 }
            return r0
        L_0x0052:
            r0 = move-exception
            goto L_0x0055
        L_0x0054:
            r0 = move-exception
        L_0x0055:
            java.lang.String r1 = "#007 Could not call remote method."
            com.google.android.gms.internal.ads.zzazk.zze(r1, r0)
            return r2
        L_0x005b:
            r3 = r14
            monitor-exit(r1)     // Catch:{ all -> 0x0062 }
            return r2
        L_0x005e:
            r0 = move-exception
            r3 = r14
        L_0x0060:
            monitor-exit(r1)     // Catch:{ all -> 0x0062 }
            throw r0
        L_0x0062:
            r0 = move-exception
            goto L_0x0060
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzarl.zzb(java.lang.String, android.webkit.WebView, java.lang.String, java.lang.String, java.lang.String, java.lang.String, com.google.android.gms.internal.ads.zzarm, com.google.android.gms.internal.ads.zzarn, java.lang.String):zv");
    }

    public final boolean zzm(Context context) {
        synchronized (lock) {
            if (!((Boolean) zzwr.zzqr().zzd(zzabp.zzcvm)).booleanValue()) {
                return false;
            }
            if (zzzl) {
                return true;
            }
            try {
                zzn(context);
                boolean zzav = this.zzdqz.zzav(aw.Q(context));
                zzzl = zzav;
                return zzav;
            } catch (RemoteException | NullPointerException e) {
                zzazk.zze("#007 Could not call remote method.", e);
                return false;
            }
        }
    }

    public final zv zza(String str, WebView webView, String str2, String str3, String str4, String str5) {
        synchronized (lock) {
            try {
                if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcvm)).booleanValue()) {
                    if (zzzl) {
                        try {
                            return this.zzdqz.zza(str, aw.Q(webView), str2, str3, str4, str5);
                        } catch (RemoteException | NullPointerException e) {
                            zzazk.zze("#007 Could not call remote method.", e);
                            return null;
                        }
                    }
                }
                return null;
            } catch (Throwable th) {
                th = th;
                throw th;
            }
        }
    }

    public final zv zza(String str, WebView webView, String str2, String str3, String str4, zzarm zzarm, zzarn zzarn, String str5) {
        return zza(str, webView, str2, str3, str4, "Google", zzarm, zzarn, str5);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:10:0x002c, code lost:
        if (((java.lang.Boolean) com.google.android.gms.internal.ads.zzwr.zzqr().zzd(com.google.android.gms.internal.ads.zzabp.zzcvp)).booleanValue() != false) goto L_0x0033;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:12:0x0032, code lost:
        return zza(r15, r16, r17, r18, r19, r20);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:16:0x0051, code lost:
        return r14.zzdqz.zzb(r15, defpackage.aw.Q(r16), r17, r18, r19, r20, r21.toString(), r22.toString(), r23);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:17:0x0052, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:18:0x0055, code lost:
        com.google.android.gms.internal.ads.zzazk.zze("#007 Could not call remote method.", r0);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:19:0x005a, code lost:
        return null;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final defpackage.zv zza(java.lang.String r15, android.webkit.WebView r16, java.lang.String r17, java.lang.String r18, java.lang.String r19, java.lang.String r20, com.google.android.gms.internal.ads.zzarm r21, com.google.android.gms.internal.ads.zzarn r22, java.lang.String r23) {
        /*
            r14 = this;
            java.lang.Object r1 = com.google.android.gms.internal.ads.zzarl.lock
            monitor-enter(r1)
            com.google.android.gms.internal.ads.zzaba<java.lang.Boolean> r0 = com.google.android.gms.internal.ads.zzabp.zzcvm     // Catch:{ all -> 0x005e }
            com.google.android.gms.internal.ads.zzabl r2 = com.google.android.gms.internal.ads.zzwr.zzqr()     // Catch:{ all -> 0x005e }
            java.lang.Object r0 = r2.zzd(r0)     // Catch:{ all -> 0x005e }
            java.lang.Boolean r0 = (java.lang.Boolean) r0     // Catch:{ all -> 0x005e }
            boolean r0 = r0.booleanValue()     // Catch:{ all -> 0x005e }
            r2 = 0
            if (r0 == 0) goto L_0x005b
            boolean r0 = com.google.android.gms.internal.ads.zzarl.zzzl     // Catch:{ all -> 0x005e }
            if (r0 != 0) goto L_0x001b
            goto L_0x005b
        L_0x001b:
            monitor-exit(r1)     // Catch:{ all -> 0x005e }
            com.google.android.gms.internal.ads.zzaba<java.lang.Boolean> r0 = com.google.android.gms.internal.ads.zzabp.zzcvp
            com.google.android.gms.internal.ads.zzabl r1 = com.google.android.gms.internal.ads.zzwr.zzqr()
            java.lang.Object r0 = r1.zzd(r0)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            if (r0 != 0) goto L_0x0033
            zv r0 = r14.zza(r15, r16, r17, r18, r19, r20)
            return r0
        L_0x0033:
            r3 = r14
            com.google.android.gms.internal.ads.zzdst r4 = r3.zzdqz     // Catch:{ RemoteException -> 0x0054, NullPointerException -> 0x0052 }
            zv r6 = defpackage.aw.Q(r16)     // Catch:{ RemoteException -> 0x0054, NullPointerException -> 0x0052 }
            java.lang.String r11 = r21.toString()     // Catch:{ RemoteException -> 0x0054, NullPointerException -> 0x0052 }
            java.lang.String r12 = r22.toString()     // Catch:{ RemoteException -> 0x0054, NullPointerException -> 0x0052 }
            r5 = r15
            r7 = r17
            r8 = r18
            r9 = r19
            r10 = r20
            r13 = r23
            zv r0 = r4.zzb(r5, r6, r7, r8, r9, r10, r11, r12, r13)     // Catch:{ RemoteException -> 0x0054, NullPointerException -> 0x0052 }
            return r0
        L_0x0052:
            r0 = move-exception
            goto L_0x0055
        L_0x0054:
            r0 = move-exception
        L_0x0055:
            java.lang.String r1 = "#007 Could not call remote method."
            com.google.android.gms.internal.ads.zzazk.zze(r1, r0)
            return r2
        L_0x005b:
            r3 = r14
            monitor-exit(r1)     // Catch:{ all -> 0x0062 }
            return r2
        L_0x005e:
            r0 = move-exception
            r3 = r14
        L_0x0060:
            monitor-exit(r1)     // Catch:{ all -> 0x0062 }
            throw r0
        L_0x0062:
            r0 = move-exception
            goto L_0x0060
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzarl.zza(java.lang.String, android.webkit.WebView, java.lang.String, java.lang.String, java.lang.String, java.lang.String, com.google.android.gms.internal.ads.zzarm, com.google.android.gms.internal.ads.zzarn, java.lang.String):zv");
    }

    public final void zzb(zv zvVar, View view) {
        synchronized (lock) {
            if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcvm)).booleanValue()) {
                if (zzzl) {
                    try {
                        this.zzdqz.zzd(zvVar, aw.Q(view));
                    } catch (RemoteException | NullPointerException e) {
                        zzazk.zze("#007 Could not call remote method.", e);
                    }
                }
            }
        }
    }

    public final void zza(zv zvVar, View view) {
        synchronized (lock) {
            if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcvm)).booleanValue()) {
                if (zzzl) {
                    try {
                        this.zzdqz.zzc(zvVar, aw.Q(view));
                    } catch (RemoteException | NullPointerException e) {
                        zzazk.zze("#007 Could not call remote method.", e);
                    }
                }
            }
        }
    }
}
