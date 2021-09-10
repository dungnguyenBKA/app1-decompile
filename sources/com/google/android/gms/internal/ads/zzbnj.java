package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.google.android.gms.ads.internal.zzr;
import org.json.JSONObject;

public final class zzbnj extends FrameLayout implements ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener {
    private final Context context;
    private View zzaat;

    private zzbnj(Context context2) {
        super(context2);
        this.context = context2;
    }

    public static zzbnj zza(Context context2, View view, zzdmw zzdmw) {
        zzbnj zzbnj = new zzbnj(context2);
        zzbnj.zzaat = view;
        zzbnj.addView(view);
        zzr.zzlo();
        zzbai.zza((View) zzbnj, (ViewTreeObserver.OnScrollChangedListener) zzbnj);
        zzr.zzlo();
        zzbai.zza((View) zzbnj, (ViewTreeObserver.OnGlobalLayoutListener) zzbnj);
        JSONObject jSONObject = zzdmw.zzhjy;
        if (jSONObject != null) {
            RelativeLayout relativeLayout = new RelativeLayout(zzbnj.context);
            JSONObject optJSONObject = jSONObject.optJSONObject("header");
            if (optJSONObject != null) {
                zzbnj.zza(optJSONObject, relativeLayout, 10);
            }
            JSONObject optJSONObject2 = jSONObject.optJSONObject("footer");
            if (optJSONObject2 != null) {
                zzbnj.zza(optJSONObject2, relativeLayout, 12);
            }
            zzbnj.addView(relativeLayout);
        }
        return zzbnj;
    }

    private final int zzb(double d) {
        zzwr.zzqn();
        return zzaza.zze(this.context, (int) d);
    }

    public final void onGlobalLayout() {
        int[] iArr = new int[2];
        getLocationInWindow(iArr);
        this.zzaat.setY((float) (-iArr[1]));
    }

    public final void onScrollChanged() {
        int[] iArr = new int[2];
        getLocationInWindow(iArr);
        this.zzaat.setY((float) (-iArr[1]));
    }

    private final void zza(JSONObject jSONObject, RelativeLayout relativeLayout, int i) {
        TextView textView = new TextView(this.context);
        textView.setTextColor(-1);
        textView.setBackgroundColor(-16777216);
        textView.setGravity(17);
        textView.setText(jSONObject.optString("text", ""));
        textView.setTextSize((float) jSONObject.optDouble("text_size", 11.0d));
        int zzb = zzb(jSONObject.optDouble("padding", 0.0d));
        textView.setPadding(0, zzb, 0, zzb);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, zzb(jSONObject.optDouble("height", 15.0d)));
        layoutParams.addRule(i);
        relativeLayout.addView(textView, layoutParams);
    }
}
