package defpackage;

import android.os.Bundle;

/* renamed from: hz  reason: default package */
public class hz implements dz {
    private final vy a;

    public hz(vy vyVar) {
        this.a = vyVar;
    }

    @Override // defpackage.dz
    public void a(String str, Bundle bundle) {
        this.a.logEvent("clx", str, bundle);
    }
}
