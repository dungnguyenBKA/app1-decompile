package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.ads.mediation.facebook.FacebookAdapter;
import java.util.Arrays;

public abstract class ConstraintHelper extends View {
    protected int[] b;
    protected int c;
    protected Context d;
    protected v0 e;
    private String f;

    public ConstraintHelper(Context context) {
        super(context);
        this.b = new int[32];
        this.d = context;
        b(null);
    }

    private void a(String str) {
        int i;
        Object b2;
        if (str != null && this.d != null) {
            String trim = str.trim();
            try {
                i = R$id.class.getField(trim).getInt(null);
            } catch (Exception unused) {
                i = 0;
            }
            if (i == 0) {
                i = this.d.getResources().getIdentifier(trim, FacebookAdapter.KEY_ID, this.d.getPackageName());
            }
            if (i == 0 && isInEditMode() && (getParent() instanceof ConstraintLayout) && (b2 = ((ConstraintLayout) getParent()).b(0, trim)) != null && (b2 instanceof Integer)) {
                i = ((Integer) b2).intValue();
            }
            if (i != 0) {
                setTag(i, null);
                return;
            }
            Log.w("ConstraintHelper", "Could not find id of \"" + trim + "\"");
        }
    }

    private void c(String str) {
        if (str != null) {
            int i = 0;
            while (true) {
                int indexOf = str.indexOf(44, i);
                if (indexOf == -1) {
                    a(str.substring(i));
                    return;
                } else {
                    a(str.substring(i, indexOf));
                    i = indexOf + 1;
                }
            }
        }
    }

    /* access modifiers changed from: protected */
    public void b(AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.a);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == 9) {
                    String string = obtainStyledAttributes.getString(index);
                    this.f = string;
                    c(string);
                }
            }
        }
    }

    public void d(int[] iArr) {
        this.c = 0;
        for (int i : iArr) {
            setTag(i, null);
        }
    }

    public void e(ConstraintLayout constraintLayout) {
    }

    public void f() {
    }

    public void g(ConstraintLayout constraintLayout) {
        if (isInEditMode()) {
            c(this.f);
        }
        v0 v0Var = this.e;
        if (v0Var != null) {
            v0Var.p0();
            for (int i = 0; i < this.c; i++) {
                View view = constraintLayout.b.get(this.b[i]);
                if (view != null) {
                    this.e.o0(constraintLayout.d(view));
                }
            }
        }
    }

    public void h() {
        if (this.e != null) {
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            if (layoutParams instanceof ConstraintLayout.LayoutParams) {
                ((ConstraintLayout.LayoutParams) layoutParams).k0 = this.e;
            }
        }
    }

    public void onDraw(Canvas canvas) {
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i, int i2) {
        setMeasuredDimension(0, 0);
    }

    public void setTag(int i, Object obj) {
        int i2 = this.c + 1;
        int[] iArr = this.b;
        if (i2 > iArr.length) {
            this.b = Arrays.copyOf(iArr, iArr.length * 2);
        }
        int[] iArr2 = this.b;
        int i3 = this.c;
        iArr2[i3] = i;
        this.c = i3 + 1;
    }

    public ConstraintHelper(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.b = new int[32];
        this.d = context;
        b(attributeSet);
    }

    public ConstraintHelper(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.b = new int[32];
        this.d = context;
        b(attributeSet);
    }
}
