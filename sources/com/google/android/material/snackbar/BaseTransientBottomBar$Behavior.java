package com.google.android.material.snackbar;

import android.view.MotionEvent;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.behavior.SwipeDismissBehavior;
import java.util.Objects;

public class BaseTransientBottomBar$Behavior extends SwipeDismissBehavior<View> {
    private final a h = new a(this);

    @Override // com.google.android.material.behavior.SwipeDismissBehavior
    public boolean B(View view) {
        Objects.requireNonNull(this.h);
        return view instanceof b;
    }

    @Override // com.google.android.material.behavior.SwipeDismissBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean j(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        Objects.requireNonNull(this.h);
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked == 1 || actionMasked == 3) {
                c.a().d(null);
            }
        } else if (coordinatorLayout.z(view, (int) motionEvent.getX(), (int) motionEvent.getY())) {
            c.a().c(null);
        }
        return super.j(coordinatorLayout, view, motionEvent);
    }
}
