package com.google.firebase.abt.component;

import android.content.Context;
import androidx.annotation.Keep;
import com.google.firebase.components.d;
import com.google.firebase.components.e;
import com.google.firebase.components.i;
import com.google.firebase.components.q;
import java.util.Arrays;
import java.util.List;

@Keep
public class AbtRegistrar implements i {
    static /* synthetic */ a lambda$getComponents$0(e eVar) {
        return new a((Context) eVar.a(Context.class), (vy) eVar.a(vy.class));
    }

    @Override // com.google.firebase.components.i
    public List<d<?>> getComponents() {
        d.b a = d.a(a.class);
        a.b(q.h(Context.class));
        a.b(q.f(vy.class));
        a.e(b.b());
        return Arrays.asList(a.c(), x50.a("fire-abt", "20.0.0"));
    }
}
