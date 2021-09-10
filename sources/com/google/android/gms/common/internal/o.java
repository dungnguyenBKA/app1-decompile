package com.google.android.gms.common.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.view.View;
import defpackage.bw;
import java.util.Objects;

public final class o extends bw<l> {
    private static final o a = new o();

    private o() {
        super("com.google.android.gms.common.ui.SignInButtonCreatorImpl");
    }

    public static View a(Context context, int i, int i2) {
        o oVar = a;
        Objects.requireNonNull(oVar);
        try {
            SignInButtonConfig signInButtonConfig = new SignInButtonConfig(i, i2);
            return (View) aw.P(((l) oVar.getRemoteCreatorInstance(context)).q(aw.Q(context), signInButtonConfig));
        } catch (Exception e) {
            throw new bw.a(ic.c(64, "Could not get button with size ", i, " and color ", i2), e);
        }
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // defpackage.bw
    public final l getRemoteCreator(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.ISignInButtonCreator");
        if (queryLocalInterface instanceof l) {
            return (l) queryLocalInterface;
        }
        return new u(iBinder);
    }
}
