package com.google.android.gms.internal.ads;

abstract class zzdwo extends zzdvq<String> {
    private int limit;
    private int offset = 0;
    private final zzdvu zzhvz;
    private final boolean zzhwa;
    final CharSequence zzhwe;

    protected zzdwo(zzdwk zzdwk, CharSequence charSequence) {
        this.zzhvz = zzdwk.zzhvz;
        this.zzhwa = false;
        this.limit = zzdwk.limit;
        this.zzhwe = charSequence;
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzdvq
    public final /* synthetic */ String zzaza() {
        int i = this.offset;
        while (true) {
            int i2 = this.offset;
            if (i2 != -1) {
                int zzen = zzen(i2);
                if (zzen == -1) {
                    zzen = this.zzhwe.length();
                    this.offset = -1;
                } else {
                    this.offset = zzeo(zzen);
                }
                int i3 = this.offset;
                if (i3 == i) {
                    int i4 = i3 + 1;
                    this.offset = i4;
                    if (i4 > this.zzhwe.length()) {
                        this.offset = -1;
                    }
                } else {
                    while (i < zzen && this.zzhvz.zzc(this.zzhwe.charAt(i))) {
                        i++;
                    }
                    while (zzen > i && this.zzhvz.zzc(this.zzhwe.charAt(zzen - 1))) {
                        zzen--;
                    }
                    int i5 = this.limit;
                    if (i5 == 1) {
                        zzen = this.zzhwe.length();
                        this.offset = -1;
                        while (zzen > i && this.zzhvz.zzc(this.zzhwe.charAt(zzen - 1))) {
                            zzen--;
                        }
                    } else {
                        this.limit = i5 - 1;
                    }
                    return this.zzhwe.subSequence(i, zzen).toString();
                }
            } else {
                zzazb();
                return null;
            }
        }
    }

    /* access modifiers changed from: package-private */
    public abstract int zzen(int i);

    /* access modifiers changed from: package-private */
    public abstract int zzeo(int i);
}
