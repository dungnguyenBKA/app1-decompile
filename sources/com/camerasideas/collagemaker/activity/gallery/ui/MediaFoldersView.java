package com.camerasideas.collagemaker.activity.gallery.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.AdapterView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.camerasideas.collagemaker.activity.ImageSelectorActivity;
import com.camerasideas.collagemaker.appdata.MediaFileInfo;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.TreeMap;
import photoeditor.cutout.backgrounderaser.R;

public class MediaFoldersView extends LinearLayout {
    private ListView b;
    private LinearLayout c;
    private bn d;
    private b e;

    public MediaFoldersView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context);
    }

    private void a(Context context) {
        LayoutInflater.from(context).inflate(R.layout.f23cn, this);
        setBackgroundColor(0);
        this.b = (ListView) findViewById(R.id.hd);
        this.c = (LinearLayout) findViewById(R.id.hc);
        this.b.setOnItemClickListener(new a(this));
    }

    public void b(AdapterView adapterView, View view, int i, long j) {
        rm rmVar;
        setVisibility(8);
        if (this.e != null) {
            this.e.a(this.d.a(i));
        }
        b bVar = this.e;
        if (bVar != null && (rmVar = ((GalleryBaseGroupView) bVar).l) != null) {
            ((ImageSelectorActivity) rmVar).t(false);
        }
    }

    public void c(int i) {
        LinearLayout linearLayout = this.c;
        if (linearLayout != null) {
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) linearLayout.getLayoutParams();
            layoutParams.bottomMargin = i;
            this.c.setLayoutParams(layoutParams);
        }
    }

    public void d(TreeMap<String, List<MediaFileInfo>> treeMap) {
        if (treeMap != null) {
            Set<String> keySet = treeMap.keySet();
            ArrayList arrayList = new ArrayList();
            for (String str : keySet) {
                if (str.equalsIgnoreCase("/Google Photos")) {
                    an anVar = new an();
                    anVar.f(str);
                    arrayList.add(anVar);
                } else {
                    List<MediaFileInfo> list = treeMap.get(str);
                    if (list != null && list.size() >= 2) {
                        an anVar2 = new an();
                        anVar2.e(list.get(1).d());
                        anVar2.f(str);
                        anVar2.g(list.size());
                        arrayList.add(anVar2);
                    }
                }
            }
            this.d.b(arrayList);
        }
    }

    public void e(cn cnVar) {
        if (cnVar != null) {
            bn bnVar = new bn(getContext(), cnVar);
            this.d = bnVar;
            this.b.setAdapter((ListAdapter) bnVar);
        }
    }

    public void f(b bVar) {
        this.e = bVar;
    }

    public void g(Set<String> set) {
        bn bnVar = this.d;
        if (bnVar != null && set != null) {
            bnVar.c(set);
            this.d.notifyDataSetChanged();
        }
    }

    public MediaFoldersView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a(context);
    }
}
