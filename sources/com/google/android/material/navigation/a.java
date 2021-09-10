package com.google.android.material.navigation;

import android.app.Activity;
import android.content.Context;
import android.graphics.Color;
import android.os.Build;
import android.view.ViewTreeObserver;

class a implements ViewTreeObserver.OnGlobalLayoutListener {
    final /* synthetic */ NavigationView b;

    a(NavigationView navigationView) {
        this.b = navigationView;
    }

    public void onGlobalLayout() {
        NavigationView navigationView = this.b;
        navigationView.getLocationOnScreen(navigationView.j);
        boolean z = true;
        boolean z2 = this.b.j[1] == 0;
        this.b.h.o(z2);
        this.b.c(z2);
        Context context = this.b.getContext();
        if ((context instanceof Activity) && Build.VERSION.SDK_INT >= 21) {
            Activity activity = (Activity) context;
            boolean z3 = activity.findViewById(16908290).getHeight() == this.b.getHeight();
            boolean z4 = Color.alpha(activity.getWindow().getNavigationBarColor()) != 0;
            NavigationView navigationView2 = this.b;
            if (!z3 || !z4) {
                z = false;
            }
            navigationView2.b(z);
        }
    }
}
