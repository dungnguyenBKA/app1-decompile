package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.internal.a;

final class g implements a.AbstractC0045a {
    private final /* synthetic */ b a;

    g(b bVar) {
        this.a = bVar;
    }

    @Override // com.google.android.gms.common.api.internal.a.AbstractC0045a
    public final void a(boolean z) {
        this.a.j.sendMessage(this.a.j.obtainMessage(1, Boolean.valueOf(z)));
    }
}
