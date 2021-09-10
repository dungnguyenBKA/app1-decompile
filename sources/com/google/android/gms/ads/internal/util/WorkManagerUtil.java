package com.google.android.gms.ads.internal.util;

import android.content.Context;
import androidx.work.b;
import androidx.work.c;
import androidx.work.e;
import androidx.work.impl.i;
import androidx.work.j;
import com.google.android.gms.ads.internal.offline.buffering.OfflineNotificationPoster;
import com.google.android.gms.internal.ads.zzazk;
import java.util.Collections;
import java.util.Objects;

public class WorkManagerUtil extends zzbf {
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing exception handler attribute for start block: B:3:0x0016 */
    @Override // com.google.android.gms.ads.internal.util.zzbg
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void zzap(defpackage.zv r5) {
        /*
            r4 = this;
            java.lang.Object r5 = defpackage.aw.P(r5)
            android.content.Context r5 = (android.content.Context) r5
            android.content.Context r0 = r5.getApplicationContext()     // Catch:{ IllegalStateException -> 0x0016 }
            androidx.work.b$a r1 = new androidx.work.b$a     // Catch:{ IllegalStateException -> 0x0016 }
            r1.<init>()     // Catch:{ IllegalStateException -> 0x0016 }
            androidx.work.b r1 = r1.a()     // Catch:{ IllegalStateException -> 0x0016 }
            androidx.work.impl.i.k(r0, r1)     // Catch:{ IllegalStateException -> 0x0016 }
        L_0x0016:
            androidx.work.impl.i r5 = androidx.work.impl.i.e(r5)     // Catch:{ IllegalStateException -> 0x004e }
            java.lang.String r0 = "offline_ping_sender_work"
            r5.a(r0)
            androidx.work.c$a r1 = new androidx.work.c$a
            r1.<init>()
            androidx.work.i r2 = androidx.work.i.CONNECTED
            r1.b(r2)
            androidx.work.c r1 = r1.a()
            androidx.work.j$a r2 = new androidx.work.j$a
            java.lang.Class<com.google.android.gms.ads.internal.offline.buffering.OfflinePingSender> r3 = com.google.android.gms.ads.internal.offline.buffering.OfflinePingSender.class
            r2.<init>(r3)
            androidx.work.o$a r1 = r2.c(r1)
            androidx.work.j$a r1 = (androidx.work.j.a) r1
            androidx.work.o$a r0 = r1.a(r0)
            androidx.work.j$a r0 = (androidx.work.j.a) r0
            androidx.work.o r0 = r0.b()
            androidx.work.j r0 = (androidx.work.j) r0
            java.util.List r0 = java.util.Collections.singletonList(r0)
            r5.b(r0)
            return
        L_0x004e:
            r5 = move-exception
            java.lang.String r0 = "Failed to instantiate WorkManager."
            com.google.android.gms.internal.ads.zzazk.zzd(r0, r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.util.WorkManagerUtil.zzap(zv):void");
    }

    @Override // com.google.android.gms.ads.internal.util.zzbg
    public final boolean zzd(zv zvVar, String str, String str2) {
        Context context = (Context) aw.P(zvVar);
        try {
            i.k(context.getApplicationContext(), new b.a().a());
        } catch (IllegalStateException unused) {
        }
        c.a aVar = new c.a();
        aVar.b(androidx.work.i.CONNECTED);
        c a = aVar.a();
        e.a aVar2 = new e.a();
        aVar2.d("uri", str);
        aVar2.d("gws_query_id", str2);
        j jVar = (j) ((j.a) ((j.a) ((j.a) new j.a(OfflineNotificationPoster.class).c(a)).d(aVar2.a())).a("offline_notification_work")).b();
        try {
            i e = i.e(context);
            Objects.requireNonNull(e);
            e.b(Collections.singletonList(jVar));
            return true;
        } catch (IllegalStateException e2) {
            zzazk.zzd("Failed to instantiate WorkManager.", e2);
            return false;
        }
    }
}
