package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.Button;
import androidx.core.graphics.drawable.a;
import com.google.android.gms.common.util.c;
import java.util.Objects;
import photoeditor.cutout.backgrounderaser.R;

public final class SignInButtonImpl extends Button {
    public SignInButtonImpl(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 16842824);
    }

    private static int b(int i, int i2, int i3, int i4) {
        if (i == 0) {
            return i2;
        }
        if (i == 1) {
            return i3;
        }
        if (i == 2) {
            return i4;
        }
        throw new IllegalStateException(ic.C(33, "Unknown color scheme: ", i));
    }

    public final void a(Resources resources, int i, int i2) {
        setTypeface(Typeface.DEFAULT_BOLD);
        setTextSize(14.0f);
        int i3 = (int) ((resources.getDisplayMetrics().density * 48.0f) + 0.5f);
        setMinHeight(i3);
        setMinWidth(i3);
        int b = b(i2, R.drawable.dy, R.drawable.e3, R.drawable.e3);
        int b2 = b(i2, R.drawable.e7, R.drawable.eb, R.drawable.eb);
        if (i == 0 || i == 1) {
            b = b2;
        } else if (i != 2) {
            throw new IllegalStateException(ic.C(32, "Unknown button size: ", i));
        }
        Drawable j = a.j(resources.getDrawable(b));
        a.g(j, resources.getColorStateList(R.color.bx));
        a.h(j, PorterDuff.Mode.SRC_ATOP);
        setBackgroundDrawable(j);
        ColorStateList colorStateList = resources.getColorStateList(b(i2, R.color.bn, R.color.bs, R.color.bs));
        Objects.requireNonNull(colorStateList, "null reference");
        setTextColor(colorStateList);
        if (i == 0) {
            setText(resources.getString(R.string.bd));
        } else if (i == 1) {
            setText(resources.getString(R.string.be));
        } else if (i == 2) {
            setText((CharSequence) null);
        } else {
            throw new IllegalStateException(ic.C(32, "Unknown button size: ", i));
        }
        setTransformationMethod(null);
        if (c.g(getContext())) {
            setGravity(19);
        }
    }
}
