package com.google.firebase.remoteconfig;

import android.content.Context;
import androidx.annotation.Keep;
import com.google.firebase.abt.component.a;
import com.google.firebase.c;
import com.google.firebase.components.d;
import com.google.firebase.components.e;
import com.google.firebase.components.i;
import com.google.firebase.components.q;
import com.google.firebase.installations.g;
import java.util.Arrays;
import java.util.List;

@Keep
public class RemoteConfigRegistrar implements i {
    static /* synthetic */ n lambda$getComponents$0(e eVar) {
        return new n((Context) eVar.a(Context.class), (c) eVar.a(c.class), (g) eVar.a(g.class), ((a) eVar.a(a.class)).a("frc"), (vy) eVar.a(vy.class));
    }

    @Override // com.google.firebase.components.i
    public List<d<?>> getComponents() {
        d.b a = d.a(n.class);
        a.b(q.h(Context.class));
        a.b(q.h(c.class));
        a.b(q.h(g.class));
        a.b(q.h(a.class));
        a.b(q.f(vy.class));
        a.e(o.b());
        a.d();
        return Arrays.asList(a.c(), x50.a("fire-rc", "20.0.4"));
    }
}
