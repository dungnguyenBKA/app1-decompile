package com.google.android.gms.ads.nativead;

import android.annotation.TargetApi;
import android.content.Context;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.google.android.gms.ads.MediaContent;
import com.google.android.gms.internal.ads.zzaec;
import com.google.android.gms.internal.ads.zzaee;
import com.vungle.warren.error.VungleException;

public class MediaView extends FrameLayout {
    private MediaContent b;
    private boolean c;
    private zzaec d;
    private ImageView.ScaleType e;
    private boolean f;
    private zzaee g;

    public MediaView(Context context) {
        super(context);
    }

    /* access modifiers changed from: protected */
    public final synchronized void a(zzaec zzaec) {
        this.d = zzaec;
        if (this.c) {
            ((b) zzaec).setMediaContent(this.b);
        }
    }

    /* access modifiers changed from: protected */
    public final synchronized void b(zzaee zzaee) {
        this.g = zzaee;
        if (this.f) {
            ((c) zzaee).setImageScaleType(this.e);
        }
    }

    public void setImageScaleType(ImageView.ScaleType scaleType) {
        this.f = true;
        this.e = scaleType;
        zzaee zzaee = this.g;
        if (zzaee != null) {
            zzaee.setImageScaleType(scaleType);
        }
    }

    public void setMediaContent(MediaContent mediaContent) {
        this.c = true;
        this.b = mediaContent;
        zzaec zzaec = this.d;
        if (zzaec != null) {
            zzaec.setMediaContent(mediaContent);
        }
    }

    public MediaView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public MediaView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @TargetApi(VungleException.SERVER_ERROR)
    public MediaView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }
}
