package androidx.cardview.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import androidx.cardview.widget.CardView;

class b implements e {
    b() {
    }

    private f j(d dVar) {
        return (f) ((CardView.a) dVar).a();
    }

    @Override // androidx.cardview.widget.e
    public void a(d dVar, Context context, ColorStateList colorStateList, float f, float f2, float f3) {
        CardView.a aVar = (CardView.a) dVar;
        aVar.c(new f(colorStateList, f));
        CardView cardView = CardView.this;
        cardView.setClipToOutline(true);
        cardView.setElevation(f2);
        j(aVar).e(f3, CardView.this.w(), aVar.b());
        f(aVar);
    }

    @Override // androidx.cardview.widget.e
    public float b(d dVar) {
        return CardView.this.getElevation();
    }

    @Override // androidx.cardview.widget.e
    public float c(d dVar) {
        return j(dVar).d();
    }

    @Override // androidx.cardview.widget.e
    public float d(d dVar) {
        return j(dVar).c();
    }

    @Override // androidx.cardview.widget.e
    public ColorStateList e(d dVar) {
        return j(dVar).b();
    }

    @Override // androidx.cardview.widget.e
    public void f(d dVar) {
        CardView.a aVar = (CardView.a) dVar;
        if (!CardView.this.w()) {
            aVar.d(0, 0, 0, 0);
            return;
        }
        float c = j(dVar).c();
        float d = j(dVar).d();
        int ceil = (int) Math.ceil((double) g.a(c, d, aVar.b()));
        int ceil2 = (int) Math.ceil((double) g.b(c, d, aVar.b()));
        aVar.d(ceil, ceil2, ceil, ceil2);
    }

    @Override // androidx.cardview.widget.e
    public void g() {
    }

    @Override // androidx.cardview.widget.e
    public float h(d dVar) {
        return j(dVar).d() * 2.0f;
    }

    @Override // androidx.cardview.widget.e
    public float i(d dVar) {
        return j(dVar).d() * 2.0f;
    }
}
