package defpackage;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import com.camerasideas.collagemaker.appdata.MediaFileInfo;
import defpackage.sl;

/* renamed from: gn  reason: default package */
public class gn extends rl {
    public gn(Context context) {
        super(context);
    }

    /* access modifiers changed from: protected */
    @Override // defpackage.sl
    public String i(Object obj) {
        if (obj == null || !(obj instanceof MediaFileInfo)) {
            return String.valueOf(obj);
        }
        StringBuilder sb = new StringBuilder();
        MediaFileInfo mediaFileInfo = (MediaFileInfo) obj;
        sb.append(mediaFileInfo.d());
        sb.append(mediaFileInfo.c());
        return sb.toString();
    }

    /* access modifiers changed from: protected */
    @Override // defpackage.sl
    public Bitmap k(Object obj, int i, int i2, sl.d dVar) {
        String str;
        Context context = this.h;
        if (i <= 0 || i2 <= 0 || obj == null) {
            return null;
        }
        if (obj instanceof MediaFileInfo) {
            str = ((MediaFileInfo) obj).d();
        } else {
            str = String.valueOf(obj);
        }
        StringBuilder q = ic.q("android.resource://");
        q.append(rq.j());
        if (str.startsWith(q.toString())) {
            return wq.s(context, i, i2, Uri.parse(str), Bitmap.Config.RGB_565);
        }
        return wq.s(context, i, i2, cm.e(str), Bitmap.Config.RGB_565);
    }
}
