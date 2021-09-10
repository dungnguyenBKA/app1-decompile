package com.zjsoft.admob;

import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;

class p implements ViewGroup.OnHierarchyChangeListener {
    p(k kVar) {
    }

    public void onChildViewAdded(View view, View view2) {
        if (view2 instanceof ImageView) {
            ((ImageView) view2).setAdjustViewBounds(true);
        }
    }

    public void onChildViewRemoved(View view, View view2) {
    }
}
