package com.google.firebase.installations;

import androidx.annotation.Keep;
import com.google.firebase.c;
import com.google.firebase.components.d;
import com.google.firebase.components.e;
import com.google.firebase.components.i;
import com.google.firebase.components.q;
import java.util.Arrays;
import java.util.List;

@Keep
public class FirebaseInstallationsRegistrar implements i {
    static /* synthetic */ g lambda$getComponents$0(e eVar) {
        return new f((c) eVar.a(c.class), eVar.b(y50.class), eVar.b(a50.class));
    }

    @Override // com.google.firebase.components.i
    public List<d<?>> getComponents() {
        d.b a = d.a(g.class);
        a.b(q.h(c.class));
        a.b(q.g(a50.class));
        a.b(q.g(y50.class));
        a.e(i.b());
        return Arrays.asList(a.c(), x50.a("fire-installations", "16.3.5"));
    }
}
