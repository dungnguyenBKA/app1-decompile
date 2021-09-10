package defpackage;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/* access modifiers changed from: package-private */
/* renamed from: ix  reason: default package */
public final class ix implements dw<Void, kw<List<kw<?>>>> {
    private final /* synthetic */ Collection a;

    ix(Collection collection) {
        this.a = collection;
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [kw] */
    @Override // defpackage.dw
    public final /* synthetic */ kw<List<kw<?>>> then(kw<Void> kwVar) {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.a);
        return nw.d(arrayList);
    }
}
