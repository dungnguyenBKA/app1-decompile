package defpackage;

import android.graphics.drawable.Drawable;
import androidx.recyclerview.widget.RecyclerView;

/* renamed from: hk  reason: default package */
public abstract class hk<T> implements nk<T> {
    private final int b;
    private final int c;
    private zj d;

    public hk() {
        if (hl.i(RecyclerView.UNDEFINED_DURATION, RecyclerView.UNDEFINED_DURATION)) {
            this.b = RecyclerView.UNDEFINED_DURATION;
            this.c = RecyclerView.UNDEFINED_DURATION;
            return;
        }
        throw new IllegalArgumentException("Width and height must both be > 0 or Target#SIZE_ORIGINAL, but given width: " + RecyclerView.UNDEFINED_DURATION + " and height: " + RecyclerView.UNDEFINED_DURATION);
    }

    @Override // defpackage.nk
    public final void a(mk mkVar) {
    }

    @Override // defpackage.nk
    public final void c(zj zjVar) {
        this.d = zjVar;
    }

    @Override // defpackage.nk
    public void d(Drawable drawable) {
    }

    @Override // defpackage.nk
    public void e(Drawable drawable) {
    }

    @Override // defpackage.nk
    public final zj f() {
        return this.d;
    }

    @Override // defpackage.nk
    public final void h(mk mkVar) {
        ((ek) mkVar).a(this.b, this.c);
    }

    @Override // defpackage.gj
    public void onDestroy() {
    }

    @Override // defpackage.gj
    public void onStart() {
    }

    @Override // defpackage.gj
    public void onStop() {
    }
}
