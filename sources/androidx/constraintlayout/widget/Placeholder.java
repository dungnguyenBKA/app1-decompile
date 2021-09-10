package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;

public class Placeholder extends View {
    private int b = -1;
    private View c = null;
    private int d = 4;

    public Placeholder(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        b(attributeSet);
    }

    private void b(AttributeSet attributeSet) {
        super.setVisibility(this.d);
        this.b = -1;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.b);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == 0) {
                    this.b = obtainStyledAttributes.getResourceId(index, this.b);
                } else if (index == 1) {
                    this.d = obtainStyledAttributes.getInt(index, this.d);
                }
            }
        }
    }

    public View a() {
        return this.c;
    }

    public void c() {
        if (this.c != null) {
            ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) getLayoutParams();
            ConstraintLayout.LayoutParams layoutParams2 = (ConstraintLayout.LayoutParams) this.c.getLayoutParams();
            layoutParams2.k0.g0(0);
            layoutParams.k0.h0(layoutParams2.k0.w());
            layoutParams.k0.N(layoutParams2.k0.o());
            layoutParams2.k0.g0(8);
        }
    }

    public void d(ConstraintLayout constraintLayout) {
        if (this.b == -1 && !isInEditMode()) {
            setVisibility(this.d);
        }
        View findViewById = constraintLayout.findViewById(this.b);
        this.c = findViewById;
        if (findViewById != null) {
            ((ConstraintLayout.LayoutParams) findViewById.getLayoutParams()).Z = true;
            this.c.setVisibility(0);
            setVisibility(0);
        }
    }

    public void onDraw(Canvas canvas) {
        if (isInEditMode()) {
            canvas.drawRGB(223, 223, 223);
            Paint paint = new Paint();
            paint.setARGB(255, 210, 210, 210);
            paint.setTextAlign(Paint.Align.CENTER);
            paint.setTypeface(Typeface.create(Typeface.DEFAULT, 0));
            Rect rect = new Rect();
            canvas.getClipBounds(rect);
            paint.setTextSize((float) rect.height());
            int height = rect.height();
            int width = rect.width();
            paint.setTextAlign(Paint.Align.LEFT);
            paint.getTextBounds("?", 0, 1, rect);
            canvas.drawText("?", ((((float) width) / 2.0f) - (((float) rect.width()) / 2.0f)) - ((float) rect.left), ((((float) rect.height()) / 2.0f) + (((float) height) / 2.0f)) - ((float) rect.bottom), paint);
        }
    }

    public Placeholder(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        b(attributeSet);
    }
}
