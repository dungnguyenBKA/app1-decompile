package com.google.android.gms.internal.ads;

/* access modifiers changed from: package-private */
public final class zztm extends zzbaa<zztv> {
    private final /* synthetic */ zztn zzbvu;

    zztm(zztn zztn) {
        this.zzbvu = zztn;
    }

    @Override // com.google.android.gms.internal.ads.zzbaa
    public final boolean cancel(boolean z) {
        this.zzbvu.disconnect();
        return super.cancel(z);
    }
}
