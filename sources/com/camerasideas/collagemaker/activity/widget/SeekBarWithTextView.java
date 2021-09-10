package com.camerasideas.collagemaker.activity.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.animation.AlphaAnimation;
import android.widget.LinearLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import com.camerasideas.collagemaker.R$styleable;
import java.util.Locale;
import java.util.Objects;
import photoeditor.cutout.backgrounderaser.R;

public class SeekBarWithTextView extends LinearLayout implements ViewTreeObserver.OnGlobalLayoutListener {
    private SeekBar b;
    private TextView c;
    private int d;
    private int e;
    private boolean f;
    private boolean g;
    private boolean h;
    private boolean i;
    private boolean j;
    private boolean k;
    private String l;
    private float m;
    private a n;
    private TextView o;

    public interface a {
        void d(SeekBarWithTextView seekBarWithTextView, int i, boolean z);

        void p(SeekBarWithTextView seekBarWithTextView);

        void t(SeekBarWithTextView seekBarWithTextView);
    }

    public SeekBarWithTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    static void d(SeekBarWithTextView seekBarWithTextView) {
        Objects.requireNonNull(seekBarWithTextView);
        AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
        alphaAnimation.setDuration(100);
        alphaAnimation.setFillAfter(true);
        alphaAnimation.setAnimationListener(new l(seekBarWithTextView));
        seekBarWithTextView.c.startAnimation(alphaAnimation);
        seekBarWithTextView.c.setVisibility(4);
    }

    static void e(SeekBarWithTextView seekBarWithTextView) {
        seekBarWithTextView.c.setAlpha(1.0f);
        AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
        alphaAnimation.setDuration(100);
        alphaAnimation.setFillBefore(true);
        alphaAnimation.setFillAfter(true);
        alphaAnimation.setAnimationListener(new k(seekBarWithTextView));
        seekBarWithTextView.c.startAnimation(alphaAnimation);
        seekBarWithTextView.c.setVisibility(0);
    }

    /* access modifiers changed from: private */
    public void m() {
        this.c.setText(String.valueOf(h()));
    }

    /* access modifiers changed from: private */
    public void n() {
        int i2;
        int i3;
        if (this.b.getMax() != 0) {
            int paddingLeft = this.b.getPaddingLeft() + this.b.getLeft();
            int right = this.b.getRight() - this.b.getPaddingRight();
            if (c2.v(getContext())) {
                i2 = (((this.b.getMax() - this.b.getProgress()) * (right - paddingLeft)) / this.b.getMax()) + paddingLeft;
                i3 = this.c.getWidth() / 2;
            } else {
                i2 = ((this.b.getProgress() * (right - paddingLeft)) / this.b.getMax()) + paddingLeft;
                i3 = this.c.getWidth() / 2;
            }
            this.c.setX((float) (i2 - i3));
        }
    }

    public int h() {
        return this.b.getProgress() + this.d;
    }

    public void i(boolean z) {
        this.b.setEnabled(z);
        this.c.setTextColor(getResources().getColor(z ? R.color.bh : R.color.bl));
    }

    public void j(int i2, int i3) {
        this.d = i2;
        this.e = i3;
        this.b.setMax(i3 - i2);
        m();
    }

    public void k(a aVar) {
        this.n = aVar;
    }

    public void l(int i2) {
        this.b.setProgress(i2 - this.d);
        m();
        if (this.k) {
            n();
        }
    }

    /* access modifiers changed from: protected */
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.k) {
            getViewTreeObserver().addOnGlobalLayoutListener(this);
        }
    }

    /* access modifiers changed from: protected */
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.k) {
            getViewTreeObserver().removeOnGlobalLayoutListener(this);
        }
    }

    public void onGlobalLayout() {
        n();
    }

    public SeekBarWithTextView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        int i3;
        this.e = 100;
        new Locale("ar");
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.k, i2, 0);
        this.f = obtainStyledAttributes.getBoolean(5, false);
        this.g = obtainStyledAttributes.getBoolean(2, false);
        this.h = obtainStyledAttributes.getBoolean(1, false);
        this.i = obtainStyledAttributes.getBoolean(0, false);
        this.l = obtainStyledAttributes.getString(3);
        this.m = obtainStyledAttributes.getDimension(4, 12.0f);
        obtainStyledAttributes.recycle();
        if (this.f) {
            this.j = true;
            this.k = true;
            i3 = R.layout.e7;
        } else if (this.g) {
            this.j = true;
            this.k = true;
            i3 = R.layout.e6;
        } else if (this.h) {
            this.k = true;
            i3 = R.layout.e4;
        } else if (this.i) {
            this.k = true;
            i3 = R.layout.e5;
        } else {
            i3 = R.layout.e3;
        }
        LayoutInflater.from(context).inflate(i3, (ViewGroup) this, true);
        this.b = (SeekBar) findViewById(R.id.pi);
        TextView textView = (TextView) findViewById(R.id.pj);
        this.c = textView;
        textView.setLayoutDirection(0);
        if (this.j) {
            TextView textView2 = (TextView) findViewById(R.id.sx);
            this.o = textView2;
            textView2.setText(this.l);
            this.o.setTextSize(0, this.m);
        }
        this.b.setOnSeekBarChangeListener(new j(this));
    }
}
