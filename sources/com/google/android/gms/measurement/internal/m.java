package com.google.android.gms.measurement.internal;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.accounts.AuthenticatorException;
import android.accounts.OperationCanceledException;
import androidx.core.content.a;
import java.io.IOException;
import java.util.Calendar;
import java.util.Locale;
import java.util.concurrent.TimeUnit;

public final class m extends e5 {
    private long c;
    private String d;
    private AccountManager e;
    private Boolean f;
    private long g;

    m(j4 j4Var) {
        super(j4Var);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.measurement.internal.e5
    public final boolean h() {
        Calendar instance = Calendar.getInstance();
        this.c = TimeUnit.MINUTES.convert((long) (instance.get(16) + instance.get(15)), TimeUnit.MILLISECONDS);
        Locale locale = Locale.getDefault();
        String language = locale.getLanguage();
        Locale locale2 = Locale.ENGLISH;
        String lowerCase = language.toLowerCase(locale2);
        String lowerCase2 = locale.getCountry().toLowerCase(locale2);
        this.d = ic.n(new StringBuilder(String.valueOf(lowerCase).length() + 1 + String.valueOf(lowerCase2).length()), lowerCase, "-", lowerCase2);
        return false;
    }

    public final long n() {
        k();
        return this.c;
    }

    public final String o() {
        k();
        return this.d;
    }

    /* access modifiers changed from: package-private */
    public final long p() {
        g();
        return this.g;
    }

    /* access modifiers changed from: package-private */
    public final void q() {
        g();
        this.f = null;
        this.g = 0;
    }

    /* access modifiers changed from: package-private */
    public final boolean r() {
        g();
        long a = this.a.a().a();
        if (a - this.g > 86400000) {
            this.f = null;
        }
        Boolean bool = this.f;
        if (bool != null) {
            return bool.booleanValue();
        }
        if (a.a(this.a.b(), "android.permission.GET_ACCOUNTS") != 0) {
            this.a.c().r().a("Permission error checking for dasher/unicorn accounts");
            this.g = a;
            this.f = Boolean.FALSE;
            return false;
        }
        if (this.e == null) {
            this.e = AccountManager.get(this.a.b());
        }
        try {
            Account[] result = this.e.getAccountsByTypeAndFeatures("com.google", new String[]{"service_HOSTED"}, null, null).getResult();
            if (result == null || result.length <= 0) {
                Account[] result2 = this.e.getAccountsByTypeAndFeatures("com.google", new String[]{"service_uca"}, null, null).getResult();
                if (result2 != null && result2.length > 0) {
                    this.f = Boolean.TRUE;
                    this.g = a;
                    return true;
                }
                this.g = a;
                this.f = Boolean.FALSE;
                return false;
            }
            this.f = Boolean.TRUE;
            this.g = a;
            return true;
        } catch (AuthenticatorException | OperationCanceledException | IOException e2) {
            this.a.c().o().b("Exception checking account types", e2);
        }
    }
}
