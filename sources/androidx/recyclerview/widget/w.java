package androidx.recyclerview.widget;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

public abstract class w {
    protected final RecyclerView.o a;
    private int b = RecyclerView.UNDEFINED_DURATION;
    final Rect c = new Rect();

    w(RecyclerView.o oVar, u uVar) {
        this.a = oVar;
    }

    public static w a(RecyclerView.o oVar, int i) {
        if (i == 0) {
            return new u(oVar);
        }
        if (i == 1) {
            return new v(oVar);
        }
        throw new IllegalArgumentException("invalid orientation");
    }

    public abstract int b(View view);

    public abstract int c(View view);

    public abstract int d(View view);

    public abstract int e(View view);

    public abstract int f();

    public abstract int g();

    public abstract int h();

    public abstract int i();

    public abstract int j();

    public abstract int k();

    public abstract int l();

    public int m() {
        if (Integer.MIN_VALUE == this.b) {
            return 0;
        }
        return l() - this.b;
    }

    public abstract int n(View view);

    public abstract int o(View view);

    public abstract void p(int i);

    public void q() {
        this.b = l();
    }
}
