package androidx.viewpager.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;

public class PagerTabStrip extends PagerTitleStrip {
    private boolean A = false;
    private int B;
    private boolean C;
    private float D;
    private float E;
    private int F;
    private int r;
    private int s;
    private int t;
    private int u;
    private int v;
    private int w;
    private final Paint x;
    private final Rect y = new Rect();
    private int z = 255;

    class a implements View.OnClickListener {
        a() {
        }

        public void onClick(View view) {
            ViewPager viewPager = PagerTabStrip.this.b;
            viewPager.x(viewPager.e - 1);
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        public void onClick(View view) {
            ViewPager viewPager = PagerTabStrip.this.b;
            viewPager.x(viewPager.e + 1);
        }
    }

    public PagerTabStrip(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Paint paint = new Paint();
        this.x = paint;
        int i = this.o;
        this.r = i;
        paint.setColor(i);
        float f = context.getResources().getDisplayMetrics().density;
        this.s = (int) ((3.0f * f) + 0.5f);
        this.t = (int) ((6.0f * f) + 0.5f);
        this.u = (int) (64.0f * f);
        this.w = (int) ((16.0f * f) + 0.5f);
        this.B = (int) ((1.0f * f) + 0.5f);
        this.v = (int) ((f * 32.0f) + 0.5f);
        this.F = ViewConfiguration.get(context).getScaledTouchSlop();
        setPadding(getPaddingLeft(), getPaddingTop(), getPaddingRight(), getPaddingBottom());
        int b2 = b();
        int i2 = this.u;
        super.d(b2 < i2 ? i2 : b2);
        setWillNotDraw(false);
        this.c.setFocusable(true);
        this.c.setOnClickListener(new a());
        this.e.setFocusable(true);
        this.e.setOnClickListener(new b());
        if (getBackground() == null) {
            this.A = true;
        }
    }

    /* access modifiers changed from: package-private */
    @Override // androidx.viewpager.widget.PagerTitleStrip
    public int a() {
        Drawable background = getBackground();
        return Math.max(background != null ? background.getIntrinsicHeight() : 0, this.v);
    }

    /* access modifiers changed from: package-private */
    @Override // androidx.viewpager.widget.PagerTitleStrip
    public void g(int i, float f, boolean z2) {
        Rect rect = this.y;
        int height = getHeight();
        int left = this.d.getLeft() - this.w;
        int right = this.d.getRight() + this.w;
        int i2 = height - this.s;
        rect.set(left, i2, right, height);
        super.g(i, f, z2);
        this.z = (int) (Math.abs(f - 0.5f) * 2.0f * 255.0f);
        rect.union(this.d.getLeft() - this.w, i2, this.d.getRight() + this.w, height);
        invalidate(rect);
    }

    /* access modifiers changed from: protected */
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int height = getHeight();
        int left = this.d.getLeft() - this.w;
        int right = this.d.getRight() + this.w;
        this.x.setColor((this.z << 24) | (this.r & 16777215));
        float f = (float) height;
        canvas.drawRect((float) left, (float) (height - this.s), (float) right, f, this.x);
        if (this.A) {
            this.x.setColor(-16777216 | (this.r & 16777215));
            canvas.drawRect((float) getPaddingLeft(), (float) (height - this.B), (float) (getWidth() - getPaddingRight()), f, this.x);
        }
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action != 0 && this.C) {
            return false;
        }
        float x2 = motionEvent.getX();
        float y2 = motionEvent.getY();
        if (action == 0) {
            this.D = x2;
            this.E = y2;
            this.C = false;
        } else if (action != 1) {
            if (action == 2 && (Math.abs(x2 - this.D) > ((float) this.F) || Math.abs(y2 - this.E) > ((float) this.F))) {
                this.C = true;
            }
        } else if (x2 < ((float) (this.d.getLeft() - this.w))) {
            ViewPager viewPager = this.b;
            viewPager.x(viewPager.e - 1);
        } else if (x2 > ((float) (this.d.getRight() + this.w))) {
            ViewPager viewPager2 = this.b;
            viewPager2.x(viewPager2.e + 1);
        }
        return true;
    }

    public void setBackgroundColor(int i) {
        super.setBackgroundColor(i);
        this.A = (i & -16777216) == 0;
    }

    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        this.A = drawable == null;
    }

    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        this.A = i == 0;
    }

    public void setPadding(int i, int i2, int i3, int i4) {
        int i5 = this.t;
        if (i4 < i5) {
            i4 = i5;
        }
        super.setPadding(i, i2, i3, i4);
    }
}
