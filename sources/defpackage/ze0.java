package defpackage;

import java.util.Objects;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReferenceArray;

/* renamed from: ze0  reason: default package */
public final class ze0<T> implements Object<T> {
    static final int j = Integer.getInteger("jctools.spsc.max.lookahead.step", 4096).intValue();
    private static final Object k = new Object();
    final AtomicLong b;
    int c;
    long d;
    final int e;
    AtomicReferenceArray<Object> f;
    final int g;
    AtomicReferenceArray<Object> h;
    final AtomicLong i = new AtomicLong();

    public ze0(int i2) {
        AtomicLong atomicLong = new AtomicLong();
        this.b = atomicLong;
        int numberOfLeadingZeros = 1 << (32 - Integer.numberOfLeadingZeros(Math.max(8, i2) - 1));
        int i3 = numberOfLeadingZeros - 1;
        AtomicReferenceArray<Object> atomicReferenceArray = new AtomicReferenceArray<>(numberOfLeadingZeros + 1);
        this.f = atomicReferenceArray;
        this.e = i3;
        this.c = Math.min(numberOfLeadingZeros / 4, j);
        this.h = atomicReferenceArray;
        this.g = i3;
        this.d = (long) (i3 - 1);
        atomicLong.lazySet(0);
    }

    public void clear() {
        while (true) {
            if (g() == null && isEmpty()) {
                return;
            }
        }
    }

    public boolean d(T t) {
        Objects.requireNonNull(t, "Null is not a valid element");
        AtomicReferenceArray<Object> atomicReferenceArray = this.f;
        long j2 = this.b.get();
        int i2 = this.e;
        int i3 = ((int) j2) & i2;
        if (j2 < this.d) {
            atomicReferenceArray.lazySet(i3, t);
            this.b.lazySet(j2 + 1);
            return true;
        }
        long j3 = ((long) this.c) + j2;
        if (atomicReferenceArray.get(((int) j3) & i2) == null) {
            this.d = j3 - 1;
            atomicReferenceArray.lazySet(i3, t);
            this.b.lazySet(j2 + 1);
            return true;
        }
        long j4 = j2 + 1;
        if (atomicReferenceArray.get(((int) j4) & i2) == null) {
            atomicReferenceArray.lazySet(i3, t);
            this.b.lazySet(j4);
            return true;
        }
        AtomicReferenceArray<Object> atomicReferenceArray2 = new AtomicReferenceArray<>(atomicReferenceArray.length());
        this.f = atomicReferenceArray2;
        this.d = (((long) i2) + j2) - 1;
        atomicReferenceArray2.lazySet(i3, t);
        atomicReferenceArray.lazySet(atomicReferenceArray.length() - 1, atomicReferenceArray2);
        atomicReferenceArray.lazySet(i3, k);
        this.b.lazySet(j4);
        return true;
    }

    public T g() {
        AtomicReferenceArray<Object> atomicReferenceArray = this.h;
        long j2 = this.i.get();
        int i2 = this.g;
        int i3 = ((int) j2) & i2;
        T t = (T) atomicReferenceArray.get(i3);
        boolean z = t == k;
        if (t != null && !z) {
            atomicReferenceArray.lazySet(i3, null);
            this.i.lazySet(j2 + 1);
            return t;
        } else if (!z) {
            return null;
        } else {
            int i4 = i2 + 1;
            AtomicReferenceArray<Object> atomicReferenceArray2 = (AtomicReferenceArray) atomicReferenceArray.get(i4);
            atomicReferenceArray.lazySet(i4, null);
            this.h = atomicReferenceArray2;
            T t2 = (T) atomicReferenceArray2.get(i3);
            if (t2 != null) {
                atomicReferenceArray2.lazySet(i3, null);
                this.i.lazySet(j2 + 1);
            }
            return t2;
        }
    }

    public boolean isEmpty() {
        return this.b.get() == this.i.get();
    }
}
