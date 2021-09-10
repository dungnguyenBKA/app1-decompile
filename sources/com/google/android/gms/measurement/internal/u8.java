package com.google.android.gms.measurement.internal;

import java.util.List;
import java.util.Map;

/* access modifiers changed from: package-private */
public final class u8 implements k3 {
    final /* synthetic */ String a;
    final /* synthetic */ b9 b;

    u8(b9 b9Var, String str) {
        this.b = b9Var;
        this.a = str;
    }

    @Override // com.google.android.gms.measurement.internal.k3
    public final void a(String str, int i, Throwable th, byte[] bArr, Map<String, List<String>> map) {
        this.b.k(i, th, bArr, this.a);
    }
}
