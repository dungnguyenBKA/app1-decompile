package com.google.firebase.remoteconfig;

import com.google.android.gms.common.util.b;
import com.google.firebase.remoteconfig.internal.f;
import com.google.firebase.remoteconfig.internal.q;

/* access modifiers changed from: package-private */
public final /* synthetic */ class m implements b {
    private final q a;

    private m(q qVar) {
        this.a = qVar;
    }

    public static b b(q qVar) {
        return new m(qVar);
    }

    @Override // com.google.android.gms.common.util.b
    public void a(Object obj, Object obj2) {
        this.a.a((String) obj, (f) obj2);
    }
}
