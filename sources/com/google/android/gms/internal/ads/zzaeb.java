package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Typeface;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.text.TextUtils;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.google.android.gms.ads.internal.zzr;
import java.util.List;
import java.util.Objects;
import javax.annotation.ParametersAreNonnullByDefault;

@ParametersAreNonnullByDefault
public final class zzaeb extends RelativeLayout {
    private static final float[] zzdfp = {5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f};
    private AnimationDrawable zzdfq;

    public zzaeb(Context context, zzady zzady, RelativeLayout.LayoutParams layoutParams) {
        super(context);
        Objects.requireNonNull(zzady, "null reference");
        ShapeDrawable shapeDrawable = new ShapeDrawable(new RoundRectShape(zzdfp, null, null));
        shapeDrawable.getPaint().setColor(zzady.getBackgroundColor());
        setLayoutParams(layoutParams);
        zzr.zzkt();
        setBackground(shapeDrawable);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        if (!TextUtils.isEmpty(zzady.getText())) {
            RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, -2);
            TextView textView = new TextView(context);
            textView.setLayoutParams(layoutParams3);
            textView.setId(1195835393);
            textView.setTypeface(Typeface.DEFAULT);
            textView.setText(zzady.getText());
            textView.setTextColor(zzady.getTextColor());
            textView.setTextSize((float) zzady.getTextSize());
            zzwr.zzqn();
            int zze = zzaza.zze(context, 4);
            zzwr.zzqn();
            textView.setPadding(zze, 0, zzaza.zze(context, 4), 0);
            addView(textView);
            layoutParams2.addRule(1, textView.getId());
        }
        ImageView imageView = new ImageView(context);
        imageView.setLayoutParams(layoutParams2);
        imageView.setId(1195835394);
        List<zzaed> zzte = zzady.zzte();
        if (zzte != null && zzte.size() > 1) {
            this.zzdfq = new AnimationDrawable();
            for (zzaed zzaed : zzte) {
                try {
                    this.zzdfq.addFrame((Drawable) aw.P(zzaed.zzti()), zzady.zztf());
                } catch (Exception e) {
                    zzazk.zzc("Error while getting drawable.", e);
                }
            }
            zzr.zzkt();
            imageView.setBackground(this.zzdfq);
        } else if (zzte.size() == 1) {
            try {
                imageView.setImageDrawable((Drawable) aw.P(zzte.get(0).zzti()));
            } catch (Exception e2) {
                zzazk.zzc("Error while getting drawable.", e2);
            }
        }
        addView(imageView);
    }

    public final void onAttachedToWindow() {
        AnimationDrawable animationDrawable = this.zzdfq;
        if (animationDrawable != null) {
            animationDrawable.start();
        }
        super.onAttachedToWindow();
    }
}
