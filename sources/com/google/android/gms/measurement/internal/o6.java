package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.n;
import java.net.URL;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/* access modifiers changed from: package-private */
public final class o6 implements Runnable {
    private final URL b;
    private final String c;
    final /* synthetic */ p6 d;
    private final h4 e;

    /* JADX WARN: Incorrect args count in method signature: (Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map<Ljava/lang/String;Ljava/lang/String;>;Lcom/google/android/gms/measurement/internal/h4;)V */
    public o6(p6 p6Var, String str, URL url, h4 h4Var) {
        this.d = p6Var;
        n.e(str);
        Objects.requireNonNull(url, "null reference");
        this.b = url;
        this.e = h4Var;
        this.c = str;
    }

    private final void b(int i, Exception exc, byte[] bArr, Map<String, List<String>> map) {
        this.d.a.e().q(new n6(this, i, exc, bArr, map));
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ void a(int i, Exception exc, byte[] bArr, Map map) {
        this.e.a(this.c, i, exc, bArr, map);
    }

    /* JADX WARNING: Removed duplicated region for block: B:24:0x0042  */
    /* JADX WARNING: Removed duplicated region for block: B:39:0x0061  */
    /* JADX WARNING: Removed duplicated region for block: B:45:0x006f  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void run() {
        /*
        // Method dump skipped, instructions count: 118
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.o6.run():void");
    }
}
