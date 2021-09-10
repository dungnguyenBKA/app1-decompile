package com.google.android.material.chip;

import android.annotation.TargetApi;
import android.graphics.Outline;
import android.view.View;
import android.view.ViewOutlineProvider;
import com.vungle.warren.error.VungleException;

class a extends ViewOutlineProvider {
    final /* synthetic */ Chip a;

    a(Chip chip) {
        this.a = chip;
    }

    @TargetApi(VungleException.SERVER_ERROR)
    public void getOutline(View view, Outline outline) {
        if (Chip.i(this.a) != null) {
            Chip.i(this.a).getOutline(outline);
        } else {
            outline.setAlpha(0.0f);
        }
    }
}
