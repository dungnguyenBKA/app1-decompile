package androidx.recyclerview.widget;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

/* access modifiers changed from: package-private */
public class d {
    final b a;
    final a b = new a();
    final List<View> c = new ArrayList();

    /* access modifiers changed from: package-private */
    public static class a {
        long a = 0;
        a b;

        a() {
        }

        private void c() {
            if (this.b == null) {
                this.b = new a();
            }
        }

        /* access modifiers changed from: package-private */
        public void a(int i) {
            if (i >= 64) {
                a aVar = this.b;
                if (aVar != null) {
                    aVar.a(i - 64);
                    return;
                }
                return;
            }
            this.a &= (1 << i) ^ -1;
        }

        /* access modifiers changed from: package-private */
        public int b(int i) {
            a aVar = this.b;
            if (aVar == null) {
                if (i >= 64) {
                    return Long.bitCount(this.a);
                }
                return Long.bitCount(this.a & ((1 << i) - 1));
            } else if (i < 64) {
                return Long.bitCount(this.a & ((1 << i) - 1));
            } else {
                return Long.bitCount(this.a) + aVar.b(i - 64);
            }
        }

        /* access modifiers changed from: package-private */
        public boolean d(int i) {
            if (i < 64) {
                return (this.a & (1 << i)) != 0;
            }
            c();
            return this.b.d(i - 64);
        }

        /* access modifiers changed from: package-private */
        public void e(int i, boolean z) {
            if (i >= 64) {
                c();
                this.b.e(i - 64, z);
                return;
            }
            long j = this.a;
            boolean z2 = (Long.MIN_VALUE & j) != 0;
            long j2 = (1 << i) - 1;
            this.a = ((j & (j2 ^ -1)) << 1) | (j & j2);
            if (z) {
                h(i);
            } else {
                a(i);
            }
            if (z2 || this.b != null) {
                c();
                this.b.e(0, z2);
            }
        }

        /* access modifiers changed from: package-private */
        public boolean f(int i) {
            if (i >= 64) {
                c();
                return this.b.f(i - 64);
            }
            long j = 1 << i;
            long j2 = this.a;
            boolean z = (j2 & j) != 0;
            long j3 = j2 & (j ^ -1);
            this.a = j3;
            long j4 = j - 1;
            this.a = (j3 & j4) | Long.rotateRight((j4 ^ -1) & j3, 1);
            a aVar = this.b;
            if (aVar != null) {
                if (aVar.d(0)) {
                    h(63);
                }
                this.b.f(0);
            }
            return z;
        }

        /* access modifiers changed from: package-private */
        public void g() {
            this.a = 0;
            a aVar = this.b;
            if (aVar != null) {
                aVar.g();
            }
        }

        /* access modifiers changed from: package-private */
        public void h(int i) {
            if (i >= 64) {
                c();
                this.b.h(i - 64);
                return;
            }
            this.a |= 1 << i;
        }

        public String toString() {
            if (this.b == null) {
                return Long.toBinaryString(this.a);
            }
            return this.b.toString() + "xx" + Long.toBinaryString(this.a);
        }
    }

    /* access modifiers changed from: package-private */
    public interface b {
    }

    d(b bVar) {
        this.a = bVar;
    }

    private int f(int i) {
        if (i < 0) {
            return -1;
        }
        int b2 = ((RecyclerView.e) this.a).b();
        int i2 = i;
        while (i2 < b2) {
            int b3 = i - (i2 - this.b.b(i2));
            if (b3 == 0) {
                while (this.b.d(i2)) {
                    i2++;
                }
                return i2;
            }
            i2 += b3;
        }
        return -1;
    }

    private void j(View view) {
        this.c.add(view);
        RecyclerView.e eVar = (RecyclerView.e) this.a;
        Objects.requireNonNull(eVar);
        RecyclerView.b0 childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
        if (childViewHolderInt != null) {
            childViewHolderInt.onEnteredHiddenState(RecyclerView.this);
        }
    }

    private boolean q(View view) {
        if (!this.c.remove(view)) {
            return false;
        }
        RecyclerView.e eVar = (RecyclerView.e) this.a;
        Objects.requireNonNull(eVar);
        RecyclerView.b0 childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
        if (childViewHolderInt == null) {
            return true;
        }
        childViewHolderInt.onLeftHiddenState(RecyclerView.this);
        return true;
    }

    /* access modifiers changed from: package-private */
    public void a(View view, int i, boolean z) {
        int i2;
        if (i < 0) {
            i2 = ((RecyclerView.e) this.a).b();
        } else {
            i2 = f(i);
        }
        this.b.e(i2, z);
        if (z) {
            j(view);
        }
        RecyclerView.e eVar = (RecyclerView.e) this.a;
        RecyclerView.this.addView(view, i2);
        RecyclerView.this.dispatchChildAttached(view);
    }

    /* access modifiers changed from: package-private */
    public void b(View view, int i, ViewGroup.LayoutParams layoutParams, boolean z) {
        int i2;
        if (i < 0) {
            i2 = ((RecyclerView.e) this.a).b();
        } else {
            i2 = f(i);
        }
        this.b.e(i2, z);
        if (z) {
            j(view);
        }
        RecyclerView.e eVar = (RecyclerView.e) this.a;
        Objects.requireNonNull(eVar);
        RecyclerView.b0 childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
        if (childViewHolderInt != null) {
            if (childViewHolderInt.isTmpDetached() || childViewHolderInt.shouldIgnore()) {
                childViewHolderInt.clearTmpDetachFlag();
            } else {
                throw new IllegalArgumentException("Called attach on a child which is not detached: " + childViewHolderInt + RecyclerView.this.exceptionLabel());
            }
        }
        RecyclerView.this.attachViewToParent(view, i2, layoutParams);
    }

    /* access modifiers changed from: package-private */
    public void c(int i) {
        RecyclerView.b0 childViewHolderInt;
        int f = f(i);
        this.b.f(f);
        RecyclerView.e eVar = (RecyclerView.e) this.a;
        View childAt = RecyclerView.this.getChildAt(f);
        if (!(childAt == null || (childViewHolderInt = RecyclerView.getChildViewHolderInt(childAt)) == null)) {
            if (!childViewHolderInt.isTmpDetached() || childViewHolderInt.shouldIgnore()) {
                childViewHolderInt.addFlags(256);
            } else {
                throw new IllegalArgumentException("called detach on an already detached child " + childViewHolderInt + RecyclerView.this.exceptionLabel());
            }
        }
        RecyclerView.this.detachViewFromParent((RecyclerView) f);
    }

    /* access modifiers changed from: package-private */
    public View d(int i) {
        return ((RecyclerView.e) this.a).a(f(i));
    }

    /* access modifiers changed from: package-private */
    public int e() {
        return ((RecyclerView.e) this.a).b() - this.c.size();
    }

    /* access modifiers changed from: package-private */
    public View g(int i) {
        return RecyclerView.this.getChildAt(i);
    }

    /* access modifiers changed from: package-private */
    public int h() {
        return ((RecyclerView.e) this.a).b();
    }

    /* access modifiers changed from: package-private */
    public void i(View view) {
        int indexOfChild = RecyclerView.this.indexOfChild(view);
        if (indexOfChild >= 0) {
            this.b.h(indexOfChild);
            j(view);
            return;
        }
        throw new IllegalArgumentException("view is not a child, cannot hide " + view);
    }

    /* access modifiers changed from: package-private */
    public int k(View view) {
        int indexOfChild = RecyclerView.this.indexOfChild(view);
        if (indexOfChild != -1 && !this.b.d(indexOfChild)) {
            return indexOfChild - this.b.b(indexOfChild);
        }
        return -1;
    }

    /* access modifiers changed from: package-private */
    public boolean l(View view) {
        return this.c.contains(view);
    }

    /* access modifiers changed from: package-private */
    public void m(View view) {
        int indexOfChild = RecyclerView.this.indexOfChild(view);
        if (indexOfChild >= 0) {
            if (this.b.f(indexOfChild)) {
                q(view);
            }
            ((RecyclerView.e) this.a).c(indexOfChild);
        }
    }

    /* access modifiers changed from: package-private */
    public void n(int i) {
        int f = f(i);
        View a2 = ((RecyclerView.e) this.a).a(f);
        if (a2 != null) {
            if (this.b.f(f)) {
                q(a2);
            }
            ((RecyclerView.e) this.a).c(f);
        }
    }

    /* access modifiers changed from: package-private */
    public boolean o(View view) {
        int indexOfChild = RecyclerView.this.indexOfChild(view);
        if (indexOfChild == -1) {
            q(view);
            return true;
        } else if (!this.b.d(indexOfChild)) {
            return false;
        } else {
            this.b.f(indexOfChild);
            q(view);
            ((RecyclerView.e) this.a).c(indexOfChild);
            return true;
        }
    }

    /* access modifiers changed from: package-private */
    public void p(View view) {
        int indexOfChild = RecyclerView.this.indexOfChild(view);
        if (indexOfChild < 0) {
            throw new IllegalArgumentException("view is not a child, cannot hide " + view);
        } else if (this.b.d(indexOfChild)) {
            this.b.a(indexOfChild);
            q(view);
        } else {
            throw new RuntimeException("trying to unhide a view that was not hidden" + view);
        }
    }

    public String toString() {
        return this.b.toString() + ", hidden list:" + this.c.size();
    }
}
