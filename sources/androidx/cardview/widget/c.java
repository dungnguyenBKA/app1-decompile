package androidx.cardview.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Rect;
import android.graphics.RectF;
import androidx.cardview.widget.CardView;

/* access modifiers changed from: package-private */
public class c implements e {
    final RectF a = new RectF();

    c() {
    }

    private g j(d dVar) {
        return (g) ((CardView.a) dVar).a();
    }

    @Override // androidx.cardview.widget.e
    public void a(d dVar, Context context, ColorStateList colorStateList, float f, float f2, float f3) {
        g gVar = new g(context.getResources(), colorStateList, f, f2, f3);
        CardView.a aVar = (CardView.a) dVar;
        gVar.i(aVar.b());
        aVar.c(gVar);
        f(aVar);
    }

    @Override // androidx.cardview.widget.e
    public float b(d dVar) {
        return j(dVar).h();
    }

    @Override // androidx.cardview.widget.e
    public float c(d dVar) {
        return j(dVar).d();
    }

    @Override // androidx.cardview.widget.e
    public float d(d dVar) {
        return j(dVar).e();
    }

    @Override // androidx.cardview.widget.e
    public ColorStateList e(d dVar) {
        return j(dVar).c();
    }

    @Override // androidx.cardview.widget.e
    public void f(d dVar) {
        Rect rect = new Rect();
        j(dVar).getPadding(rect);
        int ceil = (int) Math.ceil((double) j(dVar).g());
        int ceil2 = (int) Math.ceil((double) j(dVar).f());
        CardView.a aVar = (CardView.a) dVar;
        CardView cardView = CardView.this;
        if (ceil > cardView.d) {
            CardView.l(cardView, ceil);
        }
        CardView cardView2 = CardView.this;
        if (ceil2 > cardView2.e) {
            CardView.m(cardView2, ceil2);
        }
        ((CardView.a) dVar).d(rect.left, rect.top, rect.right, rect.bottom);
    }

    @Override // androidx.cardview.widget.e
    public float h(d dVar) {
        return j(dVar).f();
    }

    @Override // androidx.cardview.widget.e
    public float i(d dVar) {
        return j(dVar).g();
    }
}
