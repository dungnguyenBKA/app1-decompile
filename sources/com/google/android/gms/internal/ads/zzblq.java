package com.google.android.gms.internal.ads;

import android.content.Context;

public final class zzblq extends zzbnt {
    private final Context context;
    private final zzbeb zzdjd;
    private final int zzfto;
    private final zzbkv zzfud;
    private final zzcag zzfui;
    private boolean zzfuj = false;

    zzblq(zzbnw zzbnw, Context context2, zzbeb zzbeb, int i, zzbkv zzbkv, zzcag zzcag) {
        super(zzbnw);
        this.zzdjd = zzbeb;
        this.context = context2;
        this.zzfto = i;
        this.zzfud = zzbkv;
        this.zzfui = zzcag;
    }

    @Override // com.google.android.gms.internal.ads.zzbnt
    public final void destroy() {
        super.destroy();
        zzbeb zzbeb = this.zzdjd;
        if (zzbeb != null) {
            zzbeb.destroy();
        }
    }

    public final void zza(zzsh zzsh) {
        zzbeb zzbeb = this.zzdjd;
        if (zzbeb != null) {
            zzbeb.zza(zzsh);
        }
    }

    public final int zzajh() {
        return this.zzfto;
    }

    public final void zzb(long j, int i) {
        this.zzfud.zzb(j, i);
    }

    /* JADX DEBUG: Failed to insert an additional move for type inference into block B:0:0x0000 */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v0, types: [android.app.Activity] */
    /* JADX WARN: Type inference failed for: r6v1, types: [android.content.Context] */
    /* JADX WARN: Type inference failed for: r0v4, types: [com.google.android.gms.internal.ads.zzcag] */
    /* JADX WARN: Type inference failed for: r6v4, types: [android.content.Context] */
    /* JADX WARNING: Removed duplicated region for block: B:16:0x006f A[RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x0070 A[SYNTHETIC, Splitter:B:17:0x0070] */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void zza(android.app.Activity r6, com.google.android.gms.internal.ads.zzsv r7, boolean r8) {
        /*
        // Method dump skipped, instructions count: 129
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzblq.zza(android.app.Activity, com.google.android.gms.internal.ads.zzsv, boolean):void");
    }
}
