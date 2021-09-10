package defpackage;

import android.annotation.SuppressLint;
import com.bumptech.glide.load.g;
import defpackage.Cif;

/* renamed from: hf  reason: default package */
public class hf extends el<g, he<?>> implements Cif {
    private Cif.a d;

    public hf(long j) {
        super(j);
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    /* access modifiers changed from: protected */
    @Override // defpackage.el
    public int d(he<?> heVar) {
        he<?> heVar2 = heVar;
        if (heVar2 == null) {
            return 1;
        }
        return heVar2.c();
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, java.lang.Object] */
    /* access modifiers changed from: protected */
    @Override // defpackage.el
    public void e(g gVar, he<?> heVar) {
        he<?> heVar2 = heVar;
        Cif.a aVar = this.d;
        if (aVar != null && heVar2 != null) {
            ((wd) aVar).g(heVar2);
        }
    }

    public void i(Cif.a aVar) {
        this.d = aVar;
    }

    @SuppressLint({"InlinedApi"})
    public void j(int i) {
        if (i >= 40) {
            a();
        } else if (i >= 20 || i == 15) {
            h(c() / 2);
        }
    }
}
