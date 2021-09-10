package com.google.android.gms.ads.internal.overlay;

import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import com.google.android.gms.internal.ads.zzaza;
import com.google.android.gms.internal.ads.zzwr;

public final class zzp extends FrameLayout implements View.OnClickListener {
    private final ImageButton b;
    private final zzz c;

    public zzp(Context context, zzs zzs, zzz zzz) {
        super(context);
        this.c = zzz;
        setOnClickListener(this);
        ImageButton imageButton = new ImageButton(context);
        this.b = imageButton;
        imageButton.setImageResource(17301527);
        imageButton.setBackgroundColor(0);
        imageButton.setOnClickListener(this);
        zzwr.zzqn();
        int zze = zzaza.zze(context, zzs.paddingLeft);
        zzwr.zzqn();
        int zze2 = zzaza.zze(context, 0);
        zzwr.zzqn();
        int zze3 = zzaza.zze(context, zzs.paddingRight);
        zzwr.zzqn();
        imageButton.setPadding(zze, zze2, zze3, zzaza.zze(context, zzs.paddingBottom));
        imageButton.setContentDescription("Interstitial close button");
        zzwr.zzqn();
        int zze4 = zzaza.zze(context, zzs.size + zzs.paddingLeft + zzs.paddingRight);
        zzwr.zzqn();
        addView(imageButton, new FrameLayout.LayoutParams(zze4, zzaza.zze(context, zzs.size + zzs.paddingBottom), 17));
    }

    public final void onClick(View view) {
        zzz zzz = this.c;
        if (zzz != null) {
            zzz.zzvv();
        }
    }

    public final void zzam(boolean z) {
        if (z) {
            this.b.setVisibility(8);
        } else {
            this.b.setVisibility(0);
        }
    }
}
