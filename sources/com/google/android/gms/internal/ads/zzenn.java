package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.List;
import java.util.Map;

/* access modifiers changed from: package-private */
public final class zzenn extends zzeno<FieldDescriptorType, Object> {
    zzenn(int i) {
        super(i, null);
    }

    @Override // com.google.android.gms.internal.ads.zzeno
    public final void zzbgf() {
        if (!isImmutable()) {
            for (int i = 0; i < zzbkq(); i++) {
                Map.Entry zzhu = zzhu(i);
                if (((zzekw) zzhu.getKey()).zzbif()) {
                    zzhu.setValue(Collections.unmodifiableList((List) zzhu.getValue()));
                }
            }
            for (Map.Entry entry : zzbkr()) {
                if (((zzekw) entry.getKey()).zzbif()) {
                    entry.setValue(Collections.unmodifiableList((List) entry.getValue()));
                }
            }
        }
        super.zzbgf();
    }
}
