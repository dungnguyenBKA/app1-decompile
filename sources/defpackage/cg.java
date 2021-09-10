package defpackage;

import com.bumptech.glide.f;
import com.bumptech.glide.load.g;
import com.bumptech.glide.load.i;
import defpackage.uc;
import defpackage.zf;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;

/* access modifiers changed from: package-private */
/* renamed from: cg  reason: default package */
public class cg<Model, Data> implements zf<Model, Data> {
    private final List<zf<Model, Data>> a;
    private final k2<List<Throwable>> b;

    /* renamed from: cg$a */
    static class a<Data> implements uc<Data>, uc.a<Data> {
        private final List<uc<Data>> b;
        private final k2<List<Throwable>> c;
        private int d;
        private f e;
        private uc.a<? super Data> f;
        private List<Throwable> g;
        private boolean h;

        a(List<uc<Data>> list, k2<List<Throwable>> k2Var) {
            this.c = k2Var;
            if (!list.isEmpty()) {
                this.b = list;
                this.d = 0;
                return;
            }
            throw new IllegalArgumentException("Must not be empty.");
        }

        private void g() {
            if (!this.h) {
                if (this.d < this.b.size() - 1) {
                    this.d++;
                    e(this.e, this.f);
                    return;
                }
                Objects.requireNonNull(this.g, "Argument must not be null");
                this.f.c(new ce("Fetch failed", new ArrayList(this.g)));
            }
        }

        @Override // defpackage.uc
        public Class<Data> a() {
            return this.b.get(0).a();
        }

        @Override // defpackage.uc
        public void b() {
            List<Throwable> list = this.g;
            if (list != null) {
                this.c.a(list);
            }
            this.g = null;
            for (uc<Data> ucVar : this.b) {
                ucVar.b();
            }
        }

        @Override // defpackage.uc.a
        public void c(Exception exc) {
            List<Throwable> list = this.g;
            Objects.requireNonNull(list, "Argument must not be null");
            list.add(exc);
            g();
        }

        @Override // defpackage.uc
        public void cancel() {
            this.h = true;
            for (uc<Data> ucVar : this.b) {
                ucVar.cancel();
            }
        }

        @Override // defpackage.uc
        public com.bumptech.glide.load.a d() {
            return this.b.get(0).d();
        }

        @Override // defpackage.uc
        public void e(f fVar, uc.a<? super Data> aVar) {
            this.e = fVar;
            this.f = aVar;
            this.g = this.c.b();
            this.b.get(this.d).e(fVar, this);
            if (this.h) {
                cancel();
            }
        }

        @Override // defpackage.uc.a
        public void f(Data data) {
            if (data != null) {
                this.f.f(data);
            } else {
                g();
            }
        }
    }

    cg(List<zf<Model, Data>> list, k2<List<Throwable>> k2Var) {
        this.a = list;
        this.b = k2Var;
    }

    @Override // defpackage.zf
    public boolean a(Model model) {
        for (zf<Model, Data> zfVar : this.a) {
            if (zfVar.a(model)) {
                return true;
            }
        }
        return false;
    }

    @Override // defpackage.zf
    public zf.a<Data> b(Model model, int i, int i2, i iVar) {
        zf.a<Data> b2;
        int size = this.a.size();
        ArrayList arrayList = new ArrayList(size);
        g gVar = null;
        for (int i3 = 0; i3 < size; i3++) {
            zf<Model, Data> zfVar = this.a.get(i3);
            if (zfVar.a(model) && (b2 = zfVar.b(model, i, i2, iVar)) != null) {
                gVar = b2.a;
                arrayList.add(b2.c);
            }
        }
        if (arrayList.isEmpty() || gVar == null) {
            return null;
        }
        return new zf.a<>(gVar, new a(arrayList, this.b));
    }

    public String toString() {
        StringBuilder q = ic.q("MultiModelLoader{modelLoaders=");
        q.append(Arrays.toString(this.a.toArray()));
        q.append('}');
        return q.toString();
    }
}
