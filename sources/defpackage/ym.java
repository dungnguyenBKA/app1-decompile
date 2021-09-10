package defpackage;

import android.content.Context;
import android.graphics.Typeface;
import android.net.Uri;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.core.app.b;
import com.bumptech.glide.h;
import com.camerasideas.collagemaker.activity.gallery.ui.GalleryMultiSelectGroupView;
import com.camerasideas.collagemaker.activity.v0;
import com.camerasideas.collagemaker.activity.w0;
import com.camerasideas.collagemaker.activity.widget.RippleImageView;
import com.camerasideas.collagemaker.appdata.MediaFileInfo;
import defpackage.xm;
import photoeditor.cutout.backgrounderaser.R;

/* renamed from: ym  reason: default package */
public class ym extends xm {

    /* renamed from: ym$a */
    public static class a implements View.OnClickListener {
        private MediaFileInfo b;
        private int c = -1;
        private xm.a d;

        public a(xm.a aVar, MediaFileInfo mediaFileInfo, int i) {
            this.b = mediaFileInfo;
            this.c = i;
            this.d = aVar;
        }

        public void onClick(View view) {
            if (this.d != null && jm.a("sclick:button-click")) {
                ((GalleryMultiSelectGroupView) this.d).y(this.b, this.c);
            }
        }
    }

    public ym(Context context, xm.a aVar) {
        super(context, aVar);
    }

    public View getView(int i, View view, ViewGroup viewGroup) {
        Typeface a2;
        boolean z = false;
        if (view == null) {
            view = LayoutInflater.from(this.a).inflate(R.layout.bx, viewGroup, false);
            view.setLayoutParams(this.g);
        }
        ViewGroup viewGroup2 = (ViewGroup) view;
        xm.b bVar = viewGroup2.getTag() != null ? (xm.b) viewGroup2.getTag() : null;
        if (bVar == null) {
            bVar = new xm.b();
            bVar.a = (RippleImageView) viewGroup2.findViewById(R.id.hr);
            bVar.b = (ImageView) viewGroup2.findViewById(R.id.ht);
            bVar.c = (TextView) viewGroup2.findViewById(R.id.hq);
            bVar.d = (ProgressBar) viewGroup2.findViewById(R.id.hs);
            Context context = this.a;
            TextView textView = bVar.c;
            if (!(context == null || textView == null || (a2 = uq.a(context)) == null)) {
                textView.setTypeface(a2);
            }
            view.setTag(bVar);
        }
        MediaFileInfo g = g(i);
        int i2 = (g == null || g.g() <= 0 || b.y(this.i)) ? 8 : 0;
        int i3 = this.i;
        boolean z2 = (i3 & 4) == 4 || (i3 & 2) == 2;
        int i4 = R.color.hl;
        if (z2) {
            int i5 = R.drawable.eq;
            if (b.y(i3)) {
                i5 = R.drawable.f8;
            }
            bVar.c.setVisibility(i2);
            bVar.c.setText(g != null ? String.valueOf(g.g()) : "");
            RippleImageView rippleImageView = bVar.a;
            if (g != null && g.g() > 0) {
                i4 = i5;
            }
            rippleImageView.k(i4);
        } else {
            bVar.c.setVisibility(8);
            bVar.a.k(R.color.hl);
        }
        MediaFileInfo mediaFileInfo = this.f.get(i);
        if (mediaFileInfo.k()) {
            bVar.d.setVisibility(0);
        } else {
            bVar.d.setVisibility(8);
        }
        if ((this.i & 4) == 4) {
            z = true;
        }
        if (z) {
            bVar.b.setVisibility(i2);
            if (i2 == 0) {
                bVar.b.setOnClickListener(new a(this.e, mediaFileInfo, i));
            } else {
                bVar.b.setOnClickListener(null);
            }
        } else {
            bVar.b.setVisibility(8);
        }
        if (mediaFileInfo.a()) {
            b.O0(this.a).l(bVar.a);
            bVar.a.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
            bVar.a.setImageResource(R.drawable.fv);
            bVar.a.setBackgroundResource(R.drawable.cc);
        } else {
            bVar.a.setScaleType(ImageView.ScaleType.CENTER_CROP);
            bVar.a.setBackgroundResource(R.color.e6);
            w0 O0 = b.O0(this.a);
            Uri e = mediaFileInfo.e();
            h k = O0.k();
            k.g0(e);
            ((v0) k).p0().r0(this.c, this.d).e0(bVar.a);
        }
        return viewGroup2;
    }
}
