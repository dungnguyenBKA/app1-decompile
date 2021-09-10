package com.google.android.material.transformation;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewParent;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.transformation.FabTransformationBehavior;
import java.util.HashMap;
import java.util.Map;
import photoeditor.cutout.backgrounderaser.R;

public class FabTransformationSheetBehavior extends FabTransformationBehavior {
    private Map<View, Integer> i;

    public FabTransformationSheetBehavior() {
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.material.transformation.ExpandableBehavior, com.google.android.material.transformation.ExpandableTransformationBehavior
    public boolean D(View view, View view2, boolean z, boolean z2) {
        ViewParent parent = view2.getParent();
        if (parent instanceof CoordinatorLayout) {
            CoordinatorLayout coordinatorLayout = (CoordinatorLayout) parent;
            int childCount = coordinatorLayout.getChildCount();
            if (z) {
                this.i = new HashMap(childCount);
            }
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = coordinatorLayout.getChildAt(i2);
                boolean z3 = (childAt.getLayoutParams() instanceof CoordinatorLayout.e) && (((CoordinatorLayout.e) childAt.getLayoutParams()).c() instanceof FabTransformationScrimBehavior);
                if (childAt != view2 && !z3) {
                    if (!z) {
                        Map<View, Integer> map = this.i;
                        if (map != null && map.containsKey(childAt)) {
                            int intValue = this.i.get(childAt).intValue();
                            int i3 = c3.g;
                            childAt.setImportantForAccessibility(intValue);
                        }
                    } else {
                        this.i.put(childAt, Integer.valueOf(childAt.getImportantForAccessibility()));
                        int i4 = c3.g;
                        childAt.setImportantForAccessibility(4);
                    }
                }
            }
            if (!z) {
                this.i = null;
            }
        }
        super.D(view, view2, z, z2);
        return true;
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.material.transformation.FabTransformationBehavior
    public FabTransformationBehavior.b M(Context context, boolean z) {
        int i2 = z ? R.animator.o : R.animator.n;
        FabTransformationBehavior.b bVar = new FabTransformationBehavior.b();
        bVar.a = px.b(context, i2);
        bVar.b = new rx(17, 0.0f, 0.0f);
        return bVar;
    }

    public FabTransformationSheetBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
