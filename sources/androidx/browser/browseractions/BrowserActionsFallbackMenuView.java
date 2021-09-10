package androidx.browser.browseractions;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import photoeditor.cutout.backgrounderaser.R;

public class BrowserActionsFallbackMenuView extends LinearLayout {
    private final int b = getResources().getDimensionPixelOffset(R.dimen.bq);
    private final int c = getResources().getDimensionPixelOffset(R.dimen.bp);

    public BrowserActionsFallbackMenuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i, int i2) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(Math.min(getResources().getDisplayMetrics().widthPixels - (this.b * 2), this.c), 1073741824), i2);
    }
}
