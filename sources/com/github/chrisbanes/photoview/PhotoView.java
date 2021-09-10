package com.github.chrisbanes.photoview;

import android.content.Context;
import android.graphics.Matrix;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;

public class PhotoView extends ImageView {
    private c b;
    private ImageView.ScaleType c;

    public PhotoView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public Matrix getImageMatrix() {
        return this.b.x();
    }

    public ImageView.ScaleType getScaleType() {
        return this.b.E();
    }

    /* access modifiers changed from: protected */
    public boolean setFrame(int i, int i2, int i3, int i4) {
        boolean frame = super.setFrame(i, i2, i3, i4);
        if (frame) {
            this.b.K();
        }
        return frame;
    }

    public void setImageDrawable(Drawable drawable) {
        super.setImageDrawable(drawable);
        c cVar = this.b;
        if (cVar != null) {
            cVar.K();
        }
    }

    public void setImageResource(int i) {
        super.setImageResource(i);
        c cVar = this.b;
        if (cVar != null) {
            cVar.K();
        }
    }

    public void setImageURI(Uri uri) {
        super.setImageURI(uri);
        c cVar = this.b;
        if (cVar != null) {
            cVar.K();
        }
    }

    public void setOnClickListener(View.OnClickListener onClickListener) {
        this.b.G(onClickListener);
    }

    public void setOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        this.b.H(onLongClickListener);
    }

    public void setScaleType(ImageView.ScaleType scaleType) {
        c cVar = this.b;
        if (cVar == null) {
            this.c = scaleType;
        } else {
            cVar.J(scaleType);
        }
    }

    public PhotoView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.b = new c(this);
        super.setScaleType(ImageView.ScaleType.MATRIX);
        ImageView.ScaleType scaleType = this.c;
        if (scaleType != null) {
            setScaleType(scaleType);
            this.c = null;
        }
    }
}
