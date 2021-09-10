package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import javax.crypto.Mac;

/* access modifiers changed from: package-private */
public final class zzeis extends ThreadLocal<Mac> {
    private final /* synthetic */ zzeip zziky;

    zzeis(zzeip zzeip) {
        this.zziky = zzeip;
    }

    /* access modifiers changed from: private */
    /* renamed from: zzbft */
    public final Mac initialValue() {
        try {
            Mac zzhw = zzeie.zzikh.zzhw(this.zziky.zzikr);
            zzhw.init(this.zziky.zziks);
            return zzhw;
        } catch (GeneralSecurityException e) {
            throw new IllegalStateException(e);
        }
    }
}
