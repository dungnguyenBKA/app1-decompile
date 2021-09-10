package com.google.firebase;

import com.google.android.gms.common.internal.n;

public class h extends Exception {
    @Deprecated
    protected h() {
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public h(String str) {
        super(str);
        n.f(str, "Detail message must not be empty");
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public h(String str, Throwable th) {
        super(str, th);
        n.f(str, "Detail message must not be empty");
    }
}
