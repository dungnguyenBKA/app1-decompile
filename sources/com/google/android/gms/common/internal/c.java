package com.google.android.gms.common.internal;

import android.accounts.Account;
import com.google.android.gms.common.api.Scope;
import java.util.Collection;

public final class c {
    private Account a;
    private z<Scope> b;

    public final c a(Collection<Scope> collection) {
        if (this.b == null) {
            this.b = new z<>(0);
        }
        this.b.addAll(collection);
        return this;
    }

    public final c b(Account account) {
        this.a = null;
        return this;
    }
}
