package defpackage;

import android.content.Context;
import android.widget.AbsListView;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.camerasideas.collagemaker.activity.widget.RippleImageView;
import com.camerasideas.collagemaker.appdata.MediaFileInfo;
import java.util.ArrayList;
import java.util.List;

/* renamed from: xm  reason: default package */
public abstract class xm extends BaseAdapter {
    protected final Context a;
    protected String b;
    protected int c;
    protected int d;
    protected a e;
    protected List<MediaFileInfo> f;
    protected AbsListView.LayoutParams g;
    protected List<MediaFileInfo> h = new ArrayList();
    protected int i = 6;

    /* renamed from: xm$a */
    public interface a {
    }

    /* renamed from: xm$b */
    public static class b {
        public RippleImageView a;
        public ImageView b;
        public TextView c;
        public ProgressBar d;
    }

    public xm(Context context, a aVar) {
        this.a = context;
        this.e = aVar;
        int min = Math.min(c2.h(context), c2.g(context));
        em.h("GalleryBaseAdapter", "screenWidth = " + min);
        int b2 = (min - (c2.b(context, 1.5f) * 3)) / 4;
        this.c = b2;
        this.d = b2;
        androidx.core.app.b.Z(context);
        this.g = new AbsListView.LayoutParams(this.c, this.d);
    }

    public int a(int i2) {
        if (this.h == null) {
            return 0;
        }
        MediaFileInfo g2 = g(i2);
        if (g2 == null) {
            g2 = this.f.get(i2);
            this.h.add(g2);
        }
        g2.r(g2.g() + 1);
        return g2.g();
    }

    public void b() {
        List<MediaFileInfo> list = this.h;
        if (list != null && list.size() > 0) {
            this.h.clear();
        }
    }

    public void c(MediaFileInfo mediaFileInfo) {
        if (this.h.contains(mediaFileInfo) && mediaFileInfo.g() == 0) {
            this.h.remove(mediaFileInfo);
        }
    }

    public int d() {
        return this.i;
    }

    public MediaFileInfo e(int i2) {
        List<MediaFileInfo> list = this.f;
        if (list == null || list.size() == 0 || i2 < 0 || i2 >= this.f.size()) {
            return null;
        }
        return this.f.get(i2);
    }

    public String f() {
        return this.b;
    }

    public MediaFileInfo g(int i2) {
        int indexOf;
        List<MediaFileInfo> list = this.f;
        if (list == null || i2 < 0 || i2 >= list.size() || (indexOf = this.h.indexOf(this.f.get(i2))) < 0) {
            return null;
        }
        return this.h.get(indexOf);
    }

    public int getCount() {
        List<MediaFileInfo> list = this.f;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    public Object getItem(int i2) {
        return this.f.get(i2);
    }

    public long getItemId(int i2) {
        return (long) i2;
    }

    public List<MediaFileInfo> h() {
        return new ArrayList(this.h);
    }

    public int i(MediaFileInfo mediaFileInfo) {
        List<MediaFileInfo> list = this.f;
        if (list != null) {
            return list.indexOf(mediaFileInfo);
        }
        return -1;
    }

    public void j(int i2) {
        this.i = i2;
        notifyDataSetChanged();
    }

    public void k(String str, List<MediaFileInfo> list) {
        List<MediaFileInfo> list2 = this.h;
        if (list2 != null && list2.size() > 0) {
            this.h.clear();
        }
        this.f = list;
        this.b = str;
        notifyDataSetChanged();
    }

    public void l(List<MediaFileInfo> list) {
        if (list != null) {
            this.h.clear();
            this.h.addAll(list);
        }
    }
}
