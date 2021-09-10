package com.facebook.ads.redexgen.X;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.Nullable;
import com.vungle.warren.error.VungleException;

public final class NZ extends FrameLayout {
    public int A00;
    public int A01;
    public final ImageView A02;
    public final ImageView A03;

    public NZ(XJ xj) {
        super(xj);
        this.A03 = new ImageView(xj);
        this.A02 = new ImageView(xj);
        A00();
    }

    public NZ(XJ xj, AttributeSet attributeSet) {
        super(xj, attributeSet);
        this.A03 = new ImageView(xj, attributeSet);
        this.A02 = new ImageView(xj, attributeSet);
        A00();
    }

    public NZ(XJ xj, AttributeSet attributeSet, int i) {
        super(xj, attributeSet, i);
        this.A03 = new ImageView(xj, attributeSet, i);
        this.A02 = new ImageView(xj, attributeSet, i);
        A00();
    }

    @TargetApi(VungleException.SERVER_ERROR)
    public NZ(XJ xj, AttributeSet attributeSet, int i, int i2) {
        super(xj, attributeSet, i, i2);
        this.A03 = new ImageView(xj, attributeSet, i, i2);
        this.A02 = new ImageView(xj, attributeSet, i, i2);
        A00();
    }

    private void A00() {
        addView(this.A02, new FrameLayout.LayoutParams(-1, -1));
        addView(this.A03, new FrameLayout.LayoutParams(-2, -2));
        LF.A04(this.A03, LF.A0A);
        setId(C0632Lh.A00());
    }

    public ImageView getBodyImageView() {
        return this.A03;
    }

    public int getImageHeight() {
        return this.A00;
    }

    public int getImageWidth() {
        return this.A01;
    }

    public final void onLayout(boolean z, int blurBorderViewWidth, int blurBorderViewHeight, int expectedImageHeight, int i) {
        int i2;
        int i3 = this.A01;
        if (i3 <= 0 || (i2 = this.A00) <= 0) {
            super.onLayout(z, blurBorderViewWidth, blurBorderViewHeight, expectedImageHeight, i);
            return;
        }
        int i4 = expectedImageHeight - blurBorderViewWidth;
        int i5 = i - blurBorderViewHeight;
        float min = Math.min(((float) i4) / ((float) i3), ((float) i5) / ((float) i2));
        int i6 = (int) (((float) this.A01) * min);
        int i7 = (int) (((float) this.A00) * min);
        this.A02.layout(blurBorderViewWidth, blurBorderViewHeight, expectedImageHeight, i);
        int i8 = (i4 / 2) + blurBorderViewWidth;
        int i9 = (i5 / 2) + blurBorderViewHeight;
        this.A03.layout(i8 - (i6 / 2), i9 - (i7 / 2), (i6 / 2) + i8, i9 + (i7 / 2));
        this.A02.setVisibility(0);
    }

    public void setImage(@Nullable Bitmap bitmap, @Nullable Bitmap bitmap2) {
        if (bitmap2 != null) {
            C0632Lh.A0X(this.A02, new BitmapDrawable(getContext().getResources(), bitmap2));
        } else {
            C0632Lh.A0P(this.A02, 0);
        }
        if (bitmap != null) {
            this.A01 = bitmap.getWidth();
            this.A00 = bitmap.getHeight();
            this.A03.setImageBitmap(Bitmap.createBitmap(bitmap));
            return;
        }
        this.A03.setImageDrawable(null);
    }
}
