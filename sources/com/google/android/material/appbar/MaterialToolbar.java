package com.google.android.material.appbar;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import androidx.appcompat.widget.Toolbar;
import com.google.android.material.internal.i;
import photoeditor.cutout.backgrounderaser.R;

public class MaterialToolbar extends Toolbar {
    public MaterialToolbar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.ud);
    }

    /* access modifiers changed from: protected */
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Drawable background = getBackground();
        if (background instanceof my) {
            ny.b(this, (my) background);
        }
    }

    public void setElevation(float f) {
        super.setElevation(f);
        Drawable background = getBackground();
        if (background instanceof my) {
            ((my) background).E(f);
        }
    }

    public MaterialToolbar(Context context, AttributeSet attributeSet, int i) {
        super(i.e(context, attributeSet, i, R.style.rw), attributeSet, i);
        Context context2 = getContext();
        Drawable background = getBackground();
        if (background == null || (background instanceof ColorDrawable)) {
            my myVar = new my();
            myVar.F(ColorStateList.valueOf(background != null ? ((ColorDrawable) background).getColor() : 0));
            myVar.A(context2);
            myVar.E(c3.i(this));
            setBackground(myVar);
        }
    }
}
