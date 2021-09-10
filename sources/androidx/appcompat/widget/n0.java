package androidx.appcompat.widget;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.Resources;
import android.graphics.Rect;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.TextView;
import com.facebook.ads.AdError;
import photoeditor.cutout.backgrounderaser.R;

/* access modifiers changed from: package-private */
public class n0 {
    private final Context a;
    private final View b;
    private final TextView c;
    private final WindowManager.LayoutParams d;
    private final Rect e = new Rect();
    private final int[] f = new int[2];
    private final int[] g = new int[2];

    n0(Context context) {
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        this.d = layoutParams;
        this.a = context;
        View inflate = LayoutInflater.from(context).inflate(R.layout.a1, (ViewGroup) null);
        this.b = inflate;
        this.c = (TextView) inflate.findViewById(R.id.l1);
        layoutParams.setTitle(n0.class.getSimpleName());
        layoutParams.packageName = context.getPackageName();
        layoutParams.type = AdError.LOAD_TOO_FREQUENTLY_ERROR_CODE;
        layoutParams.width = -2;
        layoutParams.height = -2;
        layoutParams.format = -3;
        layoutParams.windowAnimations = R.style.g;
        layoutParams.flags = 24;
    }

    /* access modifiers changed from: package-private */
    public void a() {
        if (this.b.getParent() != null) {
            ((WindowManager) this.a.getSystemService("window")).removeView(this.b);
        }
    }

    /* access modifiers changed from: package-private */
    public void b(View view, int i, int i2, boolean z, CharSequence charSequence) {
        int i3;
        int i4;
        if (this.b.getParent() != null) {
            a();
        }
        this.c.setText(charSequence);
        WindowManager.LayoutParams layoutParams = this.d;
        layoutParams.token = view.getApplicationWindowToken();
        int dimensionPixelOffset = this.a.getResources().getDimensionPixelOffset(R.dimen.yn);
        if (view.getWidth() < dimensionPixelOffset) {
            i = view.getWidth() / 2;
        }
        if (view.getHeight() >= dimensionPixelOffset) {
            int dimensionPixelOffset2 = this.a.getResources().getDimensionPixelOffset(R.dimen.ym);
            i4 = i2 + dimensionPixelOffset2;
            i3 = i2 - dimensionPixelOffset2;
        } else {
            i4 = view.getHeight();
            i3 = 0;
        }
        layoutParams.gravity = 49;
        int dimensionPixelOffset3 = this.a.getResources().getDimensionPixelOffset(z ? R.dimen.yq : R.dimen.yp);
        View rootView = view.getRootView();
        ViewGroup.LayoutParams layoutParams2 = rootView.getLayoutParams();
        if (!(layoutParams2 instanceof WindowManager.LayoutParams) || ((WindowManager.LayoutParams) layoutParams2).type != 2) {
            Context context = view.getContext();
            while (true) {
                if (!(context instanceof ContextWrapper)) {
                    break;
                } else if (context instanceof Activity) {
                    rootView = ((Activity) context).getWindow().getDecorView();
                    break;
                } else {
                    context = ((ContextWrapper) context).getBaseContext();
                }
            }
        }
        if (rootView == null) {
            Log.e("TooltipPopup", "Cannot find app view");
        } else {
            rootView.getWindowVisibleDisplayFrame(this.e);
            Rect rect = this.e;
            if (rect.left < 0 && rect.top < 0) {
                Resources resources = this.a.getResources();
                int identifier = resources.getIdentifier("status_bar_height", "dimen", "android");
                int dimensionPixelSize = identifier != 0 ? resources.getDimensionPixelSize(identifier) : 0;
                DisplayMetrics displayMetrics = resources.getDisplayMetrics();
                this.e.set(0, dimensionPixelSize, displayMetrics.widthPixels, displayMetrics.heightPixels);
            }
            rootView.getLocationOnScreen(this.g);
            view.getLocationOnScreen(this.f);
            int[] iArr = this.f;
            int i5 = iArr[0];
            int[] iArr2 = this.g;
            iArr[0] = i5 - iArr2[0];
            iArr[1] = iArr[1] - iArr2[1];
            layoutParams.x = (iArr[0] + i) - (rootView.getWidth() / 2);
            int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
            this.b.measure(makeMeasureSpec, makeMeasureSpec);
            int measuredHeight = this.b.getMeasuredHeight();
            int[] iArr3 = this.f;
            int i6 = ((iArr3[1] + i3) - dimensionPixelOffset3) - measuredHeight;
            int i7 = iArr3[1] + i4 + dimensionPixelOffset3;
            if (z) {
                if (i6 >= 0) {
                    layoutParams.y = i6;
                } else {
                    layoutParams.y = i7;
                }
            } else if (measuredHeight + i7 <= this.e.height()) {
                layoutParams.y = i7;
            } else {
                layoutParams.y = i6;
            }
        }
        ((WindowManager) this.a.getSystemService("window")).addView(this.b, this.d);
    }
}
