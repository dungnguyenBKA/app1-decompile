package com.google.billingclient;

import android.app.Activity;
import com.android.billingclient.api.g;
import com.android.billingclient.api.p;
import java.util.List;

public final /* synthetic */ class b implements p {
    public final /* synthetic */ g a;
    public final /* synthetic */ Activity b;
    public final /* synthetic */ String c;

    public /* synthetic */ b(g gVar, Activity activity, String str) {
        this.a = gVar;
        this.b = activity;
        this.c = str;
    }

    @Override // com.android.billingclient.api.p
    public final void a(g gVar, List list) {
        this.a.p(this.b, this.c, gVar, list);
    }
}
