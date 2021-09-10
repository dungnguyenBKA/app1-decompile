package defpackage;

import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicLongArray;

/* access modifiers changed from: package-private */
/* renamed from: i60  reason: default package */
public class i60 extends z60<AtomicLongArray> {
    final /* synthetic */ z60 a;

    i60(z60 z60) {
        this.a = z60;
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // defpackage.z60
    public AtomicLongArray b(a90 a90) {
        ArrayList arrayList = new ArrayList();
        a90.j();
        while (a90.j0()) {
            arrayList.add(Long.valueOf(((Number) this.a.b(a90)).longValue()));
        }
        a90.V();
        int size = arrayList.size();
        AtomicLongArray atomicLongArray = new AtomicLongArray(size);
        for (int i = 0; i < size; i++) {
            atomicLongArray.set(i, ((Long) arrayList.get(i)).longValue());
        }
        return atomicLongArray;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [c90, java.lang.Object] */
    @Override // defpackage.z60
    public void c(c90 c90, AtomicLongArray atomicLongArray) {
        AtomicLongArray atomicLongArray2 = atomicLongArray;
        c90.o();
        int length = atomicLongArray2.length();
        for (int i = 0; i < length; i++) {
            this.a.c(c90, Long.valueOf(atomicLongArray2.get(i)));
        }
        c90.V();
    }
}
