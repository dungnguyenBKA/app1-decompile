package defpackage;

import android.content.Context;
import android.net.Uri;
import android.widget.ImageView;
import androidx.core.app.b;
import com.bumptech.glide.h;
import com.camerasideas.collagemaker.activity.v0;
import com.camerasideas.collagemaker.appdata.MediaFileInfo;
import defpackage.ql;
import photoeditor.cutout.backgrounderaser.R;

/* renamed from: cn  reason: default package */
public class cn {
    private int a;
    private rl b;

    public cn(Context context) {
        ql.a aVar;
        String str;
        this.a = b.Z(context);
        if (!c2.w(context)) {
            if (rq.l()) {
                str = context.getCacheDir() + "/.diskCache";
            } else {
                StringBuilder sb = new StringBuilder();
                dq.a(context);
                sb.append(dq.e);
                sb.append("/.diskCache");
                str = sb.toString();
                bm.g(str);
            }
            aVar = new ql.a(str);
        } else {
            aVar = new ql.a(context, "diskCache");
        }
        aVar.g = true;
        aVar.a = Math.round((0.25f * ((float) Runtime.getRuntime().maxMemory())) / 1024.0f);
        gn gnVar = new gn(context);
        this.b = gnVar;
        gnVar.m(false);
        this.b.n(R.color.et);
        this.b.e(context, aVar);
    }

    public void a() {
        em.h("MediaThumbnailLoader", "clear media thumbnail");
        this.b.f();
        this.b.g();
    }

    public void b(MediaFileInfo mediaFileInfo, ImageView imageView) {
        if (mediaFileInfo.l()) {
            Uri parse = Uri.parse(mediaFileInfo.h());
            int i = this.a;
            h k = b.O0(imageView.getContext()).k();
            k.g0(parse);
            ((v0) ((v0) k).r0(i, i).c()).p0().e0(imageView);
            return;
        }
        rl rlVar = this.b;
        int i2 = this.a;
        rlVar.j(mediaFileInfo, imageView, i2, i2);
    }

    public void c(String str, ImageView imageView, int i, int i2) {
        this.b.j(str, imageView, i, i2);
    }

    public void d(boolean z) {
        this.b.l(z);
    }

    public void e(boolean z) {
        this.b.o(z);
    }
}
