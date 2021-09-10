package com.facebook.ads.redexgen.X;

import android.view.View;
import java.util.ArrayList;

public interface PE {
    View getView();

    ArrayList<View> getViewsForInteraction();

    void unregisterView();
}
