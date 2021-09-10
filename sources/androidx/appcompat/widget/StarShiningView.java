package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;
import photoeditor.cutout.backgrounderaser.R;

public class StarShiningView extends View {
    private Bitmap b;
    private Bitmap c;
    private Paint d;

    public StarShiningView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a();
    }

    private void a() {
        this.b = BitmapFactory.decodeResource(getContext().getResources(), R.drawable.jl);
        this.c = BitmapFactory.decodeResource(getContext().getResources(), R.drawable.jk);
        this.d = new Paint();
    }

    /* access modifiers changed from: protected */
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (getWidth() > 0 && getHeight() > 0) {
            float width = (((float) this.b.getWidth()) / 2.0f) + (((float) getWidth()) / 2.0f);
            float height = (((float) getHeight()) / 2.0f) - (((float) this.b.getHeight()) / 2.0f);
            if (((float) this.c.getWidth()) + width > ((float) getWidth())) {
                width = (float) (getWidth() - this.c.getWidth());
            }
            if (height - ((float) this.c.getHeight()) < 0.0f) {
                height = (float) this.c.getHeight();
            }
            if (width - (((float) getWidth()) / 2.0f) > (((float) getHeight()) / 2.0f) - height) {
                width = ((((float) getHeight()) / 2.0f) + (((float) getWidth()) / 2.0f)) - height;
            } else {
                height = (((float) getHeight()) / 2.0f) - (width - (((float) getWidth()) / 2.0f));
            }
            Bitmap bitmap = this.c;
            canvas.drawBitmap(bitmap, width, height - ((float) bitmap.getHeight()), this.d);
        }
    }

    public StarShiningView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a();
    }
}
