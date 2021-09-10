package defpackage;

import android.app.Application;
import android.view.View;

/* renamed from: er  reason: default package */
public final class er extends gr {
    private final jr b;
    private View c;
    private int d;
    private int e;
    private int f;
    private float g;
    private float h;

    public er(Application application) {
        super(application);
        this.b = new jr(this, application);
    }

    public void cancel() {
        this.b.a();
    }

    public int getGravity() {
        return this.d;
    }

    public float getHorizontalMargin() {
        return this.g;
    }

    public float getVerticalMargin() {
        return this.h;
    }

    public View getView() {
        return this.c;
    }

    public int getXOffset() {
        return this.e;
    }

    public int getYOffset() {
        return this.f;
    }

    public void setGravity(int i, int i2, int i3) {
        this.d = i;
        this.e = i2;
        this.f = i3;
    }

    public void setMargin(float f2, float f3) {
        this.g = f2;
        this.h = f3;
    }

    @Override // defpackage.gr
    public void setView(View view) {
        this.c = view;
        c(gr.a(view));
    }

    public void show() {
        this.b.c();
    }
}
