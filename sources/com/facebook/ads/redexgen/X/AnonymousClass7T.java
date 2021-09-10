package com.facebook.ads.redexgen.X;

import android.graphics.PorterDuff;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;

/* renamed from: com.facebook.ads.redexgen.X.7T  reason: invalid class name */
public final class AnonymousClass7T extends MP {
    public static String[] A01;
    public final AnonymousClass9G<KN> A00;

    static {
        A00();
    }

    public static void A00() {
        A01 = new String[]{"4h8fvEACfo1aNbNL", "KiY64Fil", "L", "TPcthrsJz3ToBiwYAQ4xewU", "cWfSExW1cmjdZd3Ek8eXqqhjC3VFU", "NINEnIjXlG8iO8hrf55I2V2lHb1VufX", "CO", "8GF4DU4RrtKBXlYvExHV9F2Nh74lSozH"};
    }

    public AnonymousClass7T(XJ xj) {
        this(xj, null);
    }

    public AnonymousClass7T(XJ xj, AttributeSet attributeSet) {
        this(xj, attributeSet, 0);
    }

    public AnonymousClass7T(XJ xj, AttributeSet attributeSet, int i) {
        super(xj, attributeSet, i);
        this.A00 = new IJ(this);
        int applyDimension = (int) TypedValue.applyDimension(1, 40.0f, getResources().getDisplayMetrics());
        ProgressBar progressBar = new ProgressBar(getContext());
        progressBar.setIndeterminate(true);
        progressBar.getIndeterminateDrawable().setColorFilter(-1, PorterDuff.Mode.SRC_IN);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(applyDimension, applyDimension);
        layoutParams.addRule(13);
        addView(progressBar, layoutParams);
    }

    @Override // com.facebook.ads.redexgen.X.MP
    public final void A07() {
        super.A07();
        setVisibility(0);
        if (getVideoView() != null) {
            PD videoView = getVideoView();
            String[] strArr = A01;
            if (strArr[2].length() != strArr[5].length()) {
                A01[7] = "LLc1CvKTLQ71W60sfu5S1t2gX7MmeGtJ";
                videoView.getEventBus().A06(this.A00);
                return;
            }
            throw new RuntimeException();
        }
    }

    @Override // com.facebook.ads.redexgen.X.MP
    public final void A08() {
        if (getVideoView() != null) {
            AnonymousClass9F<AnonymousClass9G, AnonymousClass9E> eventBus = getVideoView().getEventBus();
            AnonymousClass9G<KN> r3 = this.A00;
            String[] strArr = A01;
            if (strArr[2].length() != strArr[5].length()) {
                String[] strArr2 = A01;
                strArr2[3] = "4Zu3PRCBzV1MZjgNBq7KORh";
                strArr2[1] = "VnRIjxfO";
                eventBus.A07(r3);
            } else {
                throw new RuntimeException();
            }
        }
        setVisibility(8);
        super.A08();
    }
}
