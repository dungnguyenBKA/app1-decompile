package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.TextView;
import androidx.appcompat.R$styleable;
import androidx.appcompat.view.menu.n;
import androidx.appcompat.widget.i0;
import java.util.Objects;
import photoeditor.cutout.backgrounderaser.R;

public class ListMenuItemView extends LinearLayout implements n.a, AbsListView.SelectionBoundsAdjuster {
    private i b;
    private ImageView c;
    private RadioButton d;
    private TextView e;
    private CheckBox f;
    private TextView g;
    private ImageView h;
    private ImageView i;
    private LinearLayout j;
    private Drawable k;
    private int l;
    private Context m;
    private boolean n;
    private Drawable o;
    private boolean p;
    private LayoutInflater q;
    private boolean r;

    public ListMenuItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.n6);
    }

    private LayoutInflater a() {
        if (this.q == null) {
            this.q = LayoutInflater.from(getContext());
        }
        return this.q;
    }

    public void adjustListItemSelectionBounds(Rect rect) {
        ImageView imageView = this.i;
        if (imageView != null && imageView.getVisibility() == 0) {
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.i.getLayoutParams();
            rect.top = this.i.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin + rect.top;
        }
    }

    public void b(boolean z) {
        this.r = z;
        this.n = z;
    }

    @Override // androidx.appcompat.view.menu.n.a
    public i c() {
        return this.b;
    }

    public void d(boolean z) {
        ImageView imageView = this.i;
        if (imageView != null) {
            imageView.setVisibility((this.p || !z) ? 8 : 0);
        }
    }

    public void e(boolean z) {
        int i2 = (!z || !this.b.v()) ? 8 : 0;
        if (i2 == 0) {
            this.g.setText(this.b.g());
        }
        if (this.g.getVisibility() != i2) {
            this.g.setVisibility(i2);
        }
    }

    @Override // androidx.appcompat.view.menu.n.a
    public boolean f() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.n.a
    public void k(i iVar, int i2) {
        ImageView imageView;
        CompoundButton compoundButton;
        CompoundButton compoundButton2;
        this.b = iVar;
        int i3 = 0;
        setVisibility(iVar.isVisible() ? 0 : 8);
        CharSequence h2 = iVar.h(this);
        if (h2 != null) {
            this.e.setText(h2);
            if (this.e.getVisibility() != 0) {
                this.e.setVisibility(0);
            }
        } else if (this.e.getVisibility() != 8) {
            this.e.setVisibility(8);
        }
        boolean isCheckable = iVar.isCheckable();
        if (!(!isCheckable && this.d == null && this.f == null)) {
            if (this.b.l()) {
                if (this.d == null) {
                    RadioButton radioButton = (RadioButton) a().inflate(R.layout.r, (ViewGroup) this, false);
                    this.d = radioButton;
                    LinearLayout linearLayout = this.j;
                    if (linearLayout != null) {
                        linearLayout.addView(radioButton, -1);
                    } else {
                        addView(radioButton, -1);
                    }
                }
                compoundButton2 = this.d;
                compoundButton = this.f;
            } else {
                if (this.f == null) {
                    CheckBox checkBox = (CheckBox) a().inflate(R.layout.o, (ViewGroup) this, false);
                    this.f = checkBox;
                    LinearLayout linearLayout2 = this.j;
                    if (linearLayout2 != null) {
                        linearLayout2.addView(checkBox, -1);
                    } else {
                        addView(checkBox, -1);
                    }
                }
                compoundButton2 = this.f;
                compoundButton = this.d;
            }
            if (isCheckable) {
                compoundButton2.setChecked(this.b.isChecked());
                if (compoundButton2.getVisibility() != 0) {
                    compoundButton2.setVisibility(0);
                }
                if (!(compoundButton == null || compoundButton.getVisibility() == 8)) {
                    compoundButton.setVisibility(8);
                }
            } else {
                CheckBox checkBox2 = this.f;
                if (checkBox2 != null) {
                    checkBox2.setVisibility(8);
                }
                RadioButton radioButton2 = this.d;
                if (radioButton2 != null) {
                    radioButton2.setVisibility(8);
                }
            }
        }
        boolean v = iVar.v();
        iVar.f();
        e(v);
        Drawable icon = iVar.getIcon();
        Objects.requireNonNull(this.b.n);
        boolean z = this.r;
        if ((z || this.n) && !((imageView = this.c) == null && icon == null && !this.n)) {
            if (imageView == null) {
                ImageView imageView2 = (ImageView) a().inflate(R.layout.p, (ViewGroup) this, false);
                this.c = imageView2;
                LinearLayout linearLayout3 = this.j;
                if (linearLayout3 != null) {
                    linearLayout3.addView(imageView2, 0);
                } else {
                    addView(imageView2, 0);
                }
            }
            if (icon != null || this.n) {
                ImageView imageView3 = this.c;
                if (!z) {
                    icon = null;
                }
                imageView3.setImageDrawable(icon);
                if (this.c.getVisibility() != 0) {
                    this.c.setVisibility(0);
                }
            } else {
                this.c.setVisibility(8);
            }
        }
        setEnabled(iVar.isEnabled());
        boolean hasSubMenu = iVar.hasSubMenu();
        ImageView imageView4 = this.h;
        if (imageView4 != null) {
            if (!hasSubMenu) {
                i3 = 8;
            }
            imageView4.setVisibility(i3);
        }
        setContentDescription(iVar.getContentDescription());
    }

    /* access modifiers changed from: protected */
    public void onFinishInflate() {
        super.onFinishInflate();
        Drawable drawable = this.k;
        int i2 = c3.g;
        setBackground(drawable);
        TextView textView = (TextView) findViewById(R.id.s_);
        this.e = textView;
        int i3 = this.l;
        if (i3 != -1) {
            textView.setTextAppearance(this.m, i3);
        }
        this.g = (TextView) findViewById(R.id.q3);
        ImageView imageView = (ImageView) findViewById(R.id.r7);
        this.h = imageView;
        if (imageView != null) {
            imageView.setImageDrawable(this.o);
        }
        this.i = (ImageView) findViewById(R.id.i2);
        this.j = (LinearLayout) findViewById(R.id.fn);
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i2, int i3) {
        if (this.c != null && this.n) {
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) this.c.getLayoutParams();
            int i4 = layoutParams.height;
            if (i4 > 0 && layoutParams2.width <= 0) {
                layoutParams2.width = i4;
            }
        }
        super.onMeasure(i2, i3);
    }

    public ListMenuItemView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet);
        i0 u = i0.u(getContext(), attributeSet, R$styleable.s, i2, 0);
        this.k = u.g(5);
        this.l = u.n(1, -1);
        this.n = u.a(7, false);
        this.m = context;
        this.o = u.g(8);
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(null, new int[]{16843049}, R.attr.h8, 0);
        this.p = obtainStyledAttributes.hasValue(0);
        u.v();
        obtainStyledAttributes.recycle();
    }
}
