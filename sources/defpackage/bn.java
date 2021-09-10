package defpackage;

import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import photoeditor.cutout.backgrounderaser.R;

/* renamed from: bn  reason: default package */
public class bn extends BaseAdapter {
    private Context a;
    private int b;
    private List<an> c;
    private cn d;

    /* renamed from: bn$b */
    private final class b {
        ImageView a;
        AppCompatImageView b;
        TextView c;
        TextView d;
        View e;

        b(bn bnVar, a aVar) {
        }
    }

    public bn(Context context, cn cnVar) {
        this.a = context;
        this.b = context.getResources().getDimensionPixelSize(R.dimen.vv);
        this.d = cnVar;
    }

    public String a(int i) {
        an anVar;
        if (i < 0 || i >= this.c.size() || (anVar = this.c.get(i)) == null) {
            return null;
        }
        return anVar.b();
    }

    public void b(List<an> list) {
        this.c = list;
    }

    public void c(Set<String> set) {
        List<an> list = this.c;
        if (list != null && list.size() > 0) {
            if (set.size() == 0) {
                for (an anVar : this.c) {
                    anVar.h(false);
                }
                return;
            }
            for (an anVar2 : this.c) {
                Iterator<String> it = set.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    if (TextUtils.equals(anVar2.b(), it.next())) {
                        anVar2.h(true);
                        break;
                    }
                    anVar2.h(false);
                }
            }
        }
    }

    public int getCount() {
        List<an> list = this.c;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    public Object getItem(int i) {
        List<an> list = this.c;
        return list == null ? "" : list.get(i);
    }

    public long getItemId(int i) {
        return (long) i;
    }

    public View getView(int i, View view, ViewGroup viewGroup) {
        b bVar;
        if (view == null) {
            view = LayoutInflater.from(this.a).inflate(R.layout.cm, (ViewGroup) null);
            bVar = new b(this, null);
            bVar.a = (ImageView) view.findViewById(R.id.mr);
            bVar.b = (AppCompatImageView) view.findViewById(R.id.i0);
            TextView textView = (TextView) view.findViewById(R.id.ms);
            bVar.c = textView;
            textView.setTextDirection(5);
            bVar.d = (TextView) view.findViewById(R.id.mu);
            bVar.e = view.findViewById(R.id.pl);
            view.setTag(bVar);
        } else {
            bVar = (b) view.getTag();
        }
        if (i >= 0 && i <= this.c.size() - 1) {
            an anVar = this.c.get(i);
            String b2 = anVar.b();
            String valueOf = String.valueOf(anVar.c() - 1);
            int i2 = 4;
            if (b2.equalsIgnoreCase("/Google Photos")) {
                bVar.c.setText(cm.i(b2));
                bVar.b.setImageResource(R.drawable.ha);
                bVar.d.setVisibility(4);
                bVar.e.setVisibility(4);
                bVar.a.setVisibility(8);
                bVar.b.setVisibility(0);
            } else {
                bVar.a.setVisibility(0);
                bVar.b.setVisibility(8);
                if (b2.equalsIgnoreCase("/Recent")) {
                    bVar.c.setText(R.string.g7);
                } else {
                    bVar.c.setText(cm.i(b2));
                }
                bVar.d.setVisibility(0);
                bVar.d.setText(valueOf);
                View view2 = bVar.e;
                if (anVar.d()) {
                    i2 = 0;
                }
                view2.setVisibility(i2);
                cn cnVar = this.d;
                String a2 = anVar.a();
                ImageView imageView = bVar.a;
                int i3 = this.b;
                cnVar.c(a2, imageView, i3, i3);
            }
        }
        return view;
    }
}
