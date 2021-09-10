package com.camerasideas.collagemaker.activity.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.recyclerview.widget.RecyclerView;
import com.camerasideas.collagemaker.appdata.MediaFileInfo;
import java.util.ArrayList;
import java.util.List;
import photoeditor.cutout.backgrounderaser.R;

public class l extends RecyclerView.g<RecyclerView.b0> {
    private Context c;
    private a d;
    private int e;
    private int f;
    private cn g;
    private List<MediaFileInfo> h = new ArrayList();

    public interface a {
    }

    public static class b extends RecyclerView.b0 {
        ImageView a;
        ImageView b;
        a c;
        MediaFileInfo d;
        View e;

        public b(View view, a aVar) {
            super(view);
            this.e = view;
            this.c = aVar;
            this.b = (ImageView) view.findViewById(R.id.g8);
            this.a = (ImageView) view.findViewById(R.id.po);
            this.b.setOnClickListener(new b(this));
        }
    }

    public l(Context context, cn cnVar, a aVar) {
        this.c = context;
        this.d = aVar;
        this.g = cnVar;
        this.e = c2.b(context, 75.0f);
        this.f = c2.b(context, 75.0f);
    }

    public void A(List<MediaFileInfo> list) {
        this.h = list;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.g
    public int b() {
        List<MediaFileInfo> list = this.h;
        if (list != null) {
            return list.size();
        }
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.g
    public void q(RecyclerView.b0 b0Var, int i) {
        b bVar = (b) b0Var;
        bVar.d = this.h.get(i);
        this.g.b(this.h.get(i), bVar.a);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.g
    public RecyclerView.b0 s(ViewGroup viewGroup, int i) {
        return new b(LayoutInflater.from(this.c).inflate(R.layout.by, viewGroup, false), this.d);
    }

    public List<MediaFileInfo> z() {
        return this.h;
    }
}
