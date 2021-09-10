package com.google.firebase.analytics.connector.internal;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.annotation.Keep;
import androidx.annotation.RecentlyNonNull;
import com.google.firebase.c;
import com.google.firebase.components.d;
import com.google.firebase.components.i;
import com.google.firebase.components.q;
import java.util.Arrays;
import java.util.List;

@Keep
public class AnalyticsConnectorRegistrar implements i {
    public static final /* synthetic */ int zza = 0;

    @Override // com.google.firebase.components.i
    @RecentlyNonNull
    @Keep
    @SuppressLint({"MissingPermission"})
    public List<d<?>> getComponents() {
        d.b a = d.a(vy.class);
        a.b(q.h(c.class));
        a.b(q.h(Context.class));
        a.b(q.h(u40.class));
        a.e(a.a);
        a.d();
        return Arrays.asList(a.c(), x50.a("fire-analytics", "18.0.2"));
    }
}
