package com.google.android.gms.tagmanager;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.util.Log;
import com.google.android.gms.common.util.d;
import com.google.android.gms.common.util.f;
import com.google.android.gms.internal.gtm.zzfz;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import org.apache.http.cookie.ClientCookie;

/* access modifiers changed from: package-private */
public final class zzbe implements zzax {
    private static final String zza = String.format("CREATE TABLE IF NOT EXISTS %s ( '%s' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, '%s' STRING NOT NULL, '%s' BLOB NOT NULL, '%s' INTEGER NOT NULL);", "datalayer", "ID", "key", "value", ClientCookie.EXPIRES_ATTR);
    private final Executor zzb;
    private final Context zzc;
    private final zzbc zzd;
    private final d zze;

    public zzbe(Context context) {
        d d = f.d();
        ExecutorService zza2 = zzfz.zza().zza(2);
        this.zzc = context;
        this.zze = d;
        this.zzb = zza2;
        this.zzd = new zzbc(this, context);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:33:0x0088, code lost:
        if (r6 != null) goto L_0x0072;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:36:0x008c, code lost:
        if (r6 != null) goto L_0x0072;
     */
    /* JADX WARNING: Removed duplicated region for block: B:26:0x0080 A[SYNTHETIC, Splitter:B:26:0x0080] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    static java.util.List zzf(com.google.android.gms.tagmanager.zzbe r10) {
        /*
        // Method dump skipped, instructions count: 176
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.tagmanager.zzbe.zzf(com.google.android.gms.tagmanager.zzbe):java.util.List");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:52:0x00ba, code lost:
        if (r6 != null) goto L_0x00bc;
     */
    /* JADX WARNING: Exception block dominator not found, dom blocks: [] */
    /* JADX WARNING: Missing exception handler attribute for start block: B:91:0x0174 */
    /* JADX WARNING: Removed duplicated region for block: B:26:0x0043  */
    /* JADX WARNING: Removed duplicated region for block: B:30:0x004c  */
    /* JADX WARNING: Removed duplicated region for block: B:49:0x00ab A[Catch:{ all -> 0x0119 }] */
    /* JADX WARNING: Removed duplicated region for block: B:50:0x00b0 A[Catch:{ all -> 0x0119 }] */
    /* JADX WARNING: Removed duplicated region for block: B:71:0x011c  */
    /* JADX WARNING: Removed duplicated region for block: B:75:0x012b  */
    /* JADX WARNING: Removed duplicated region for block: B:85:0x0167  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    static void zzh(com.google.android.gms.tagmanager.zzbe r18, java.util.List r19, long r20) {
        /*
        // Method dump skipped, instructions count: 377
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.tagmanager.zzbe.zzh(com.google.android.gms.tagmanager.zzbe, java.util.List, long):void");
    }

    private final SQLiteDatabase zzi(String str) {
        try {
            return this.zzd.getWritableDatabase();
        } catch (SQLiteException unused) {
            Log.w("GoogleTagManager", str);
            return null;
        }
    }

    private final void zzk(long j) {
        SQLiteDatabase zzi = zzi("Error opening database for deleteOlderThan.");
        if (zzi != null) {
            try {
                zzi.delete("datalayer", "expires <= ?", new String[]{Long.toString(j)});
            } catch (SQLiteException unused) {
                Log.w("GoogleTagManager", "Error deleting old entries.");
            }
        }
    }

    public final void zzb(zzaw zzaw) {
        this.zzb.execute(new zzba(this, zzaw));
    }

    /* JADX WARNING: Code restructure failed: missing block: B:20:0x003e, code lost:
        if (r6 == null) goto L_0x0043;
     */
    /* JADX WARNING: Removed duplicated region for block: B:13:0x0036 A[SYNTHETIC, Splitter:B:13:0x0036] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void zzc(java.util.List<com.google.android.gms.tagmanager.zzau> r8, long r9) {
        /*
            r7 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            java.util.Iterator r8 = r8.iterator()
        L_0x0009:
            boolean r1 = r8.hasNext()
            if (r1 == 0) goto L_0x004d
            java.lang.Object r1 = r8.next()
            com.google.android.gms.tagmanager.zzau r1 = (com.google.android.gms.tagmanager.zzau) r1
            com.google.android.gms.tagmanager.zzbd r2 = new com.google.android.gms.tagmanager.zzbd
            java.lang.String r3 = r1.zza
            java.lang.Object r1 = r1.zzb
            java.io.ByteArrayOutputStream r4 = new java.io.ByteArrayOutputStream
            r4.<init>()
            r5 = 0
            java.io.ObjectOutputStream r6 = new java.io.ObjectOutputStream     // Catch:{ IOException -> 0x003d, all -> 0x0033 }
            r6.<init>(r4)     // Catch:{ IOException -> 0x003d, all -> 0x0033 }
            r6.writeObject(r1)     // Catch:{ IOException -> 0x0031, all -> 0x002e }
            byte[] r5 = r4.toByteArray()     // Catch:{ IOException -> 0x0031, all -> 0x002e }
            goto L_0x0040
        L_0x002e:
            r8 = move-exception
            r5 = r6
            goto L_0x0034
        L_0x0031:
            goto L_0x003e
        L_0x0033:
            r8 = move-exception
        L_0x0034:
            if (r5 == 0) goto L_0x0039
            r5.close()     // Catch:{ IOException -> 0x003c }
        L_0x0039:
            r4.close()     // Catch:{ IOException -> 0x003c }
        L_0x003c:
            throw r8
        L_0x003d:
            r6 = r5
        L_0x003e:
            if (r6 == 0) goto L_0x0043
        L_0x0040:
            r6.close()     // Catch:{ IOException -> 0x0046 }
        L_0x0043:
            r4.close()     // Catch:{ IOException -> 0x0046 }
        L_0x0046:
            r2.<init>(r3, r5)
            r0.add(r2)
            goto L_0x0009
        L_0x004d:
            java.util.concurrent.Executor r8 = r7.zzb
            com.google.android.gms.tagmanager.zzaz r1 = new com.google.android.gms.tagmanager.zzaz
            r1.<init>(r7, r0, r9)
            r8.execute(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.tagmanager.zzbe.zzc(java.util.List, long):void");
    }
}
