package androidx.cardview.widget;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import androidx.cardview.widget.g;

class a extends c {

    /* renamed from: androidx.cardview.widget.a$a  reason: collision with other inner class name */
    class C0008a implements g.a {
        C0008a(a aVar) {
        }

        @Override // androidx.cardview.widget.g.a
        public void a(Canvas canvas, RectF rectF, float f, Paint paint) {
            canvas.drawRoundRect(rectF, f, f, paint);
        }
    }

    a() {
    }

    @Override // androidx.cardview.widget.e
    public void g() {
        g.r = new C0008a(this);
    }
}
