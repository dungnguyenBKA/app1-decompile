package com.camerasideas.collagemaker.activity.gallery.ui;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.GridView;
import android.widget.ListAdapter;
import android.widget.RelativeLayout;
import com.camerasideas.collagemaker.activity.ImageSelectorActivity;
import com.camerasideas.collagemaker.activity.widget.CircularProgressView;
import com.camerasideas.collagemaker.appdata.MediaFileInfo;
import com.camerasideas.collagemaker.appdata.f;
import defpackage.xm;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.TreeMap;
import photoeditor.cutout.backgrounderaser.R;

public class GalleryMultiSelectGroupView extends GalleryBaseGroupView implements xm.a {
    private boolean o;
    private int p;
    private FrameLayout q;
    private CircularProgressView r;

    public GalleryMultiSelectGroupView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    private void r(MediaFileInfo mediaFileInfo, boolean z) {
        if (mediaFileInfo != null) {
            String b = !z ? mediaFileInfo.b() : "/Recent";
            List<MediaFileInfo> list = this.j.get(b);
            if (list == null) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(mediaFileInfo);
                this.j.put(b, arrayList);
            } else if (list.indexOf(mediaFileInfo) < 0) {
                list.add(mediaFileInfo);
            }
        }
    }

    public void A(int i) {
        MediaFoldersView mediaFoldersView = this.g;
        if (mediaFoldersView != null) {
            mediaFoldersView.c(i);
        }
        FrameLayout frameLayout = this.q;
        if (frameLayout != null && uq.g(frameLayout)) {
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.q.getLayoutParams();
            layoutParams.bottomMargin = i;
            this.q.setLayoutParams(layoutParams);
        }
    }

    public void B(int i) {
        this.p = i;
    }

    public void C(List<MediaFileInfo> list) {
        if (list != null) {
            this.k.clear();
            this.j.clear();
            if (list.size() > 0) {
                this.k.addAll(list);
                for (MediaFileInfo mediaFileInfo : list) {
                    mediaFileInfo.r(0);
                    String b = mediaFileInfo.b();
                    List<MediaFileInfo> list2 = this.j.get(b);
                    if (list2 == null) {
                        list2 = new ArrayList<>();
                        this.j.put(b, list2);
                    }
                    int indexOf = list2.indexOf(mediaFileInfo);
                    if (indexOf < 0) {
                        mediaFileInfo.r(1);
                        list2.add(mediaFileInfo);
                    } else {
                        mediaFileInfo = list2.get(indexOf);
                        mediaFileInfo.r(mediaFileInfo.g() + 1);
                    }
                    List<MediaFileInfo> list3 = this.j.get("/Recent");
                    if (list3 == null) {
                        ArrayList arrayList = new ArrayList();
                        arrayList.add(mediaFileInfo);
                        this.j.put("/Recent", arrayList);
                    } else if (list3.indexOf(mediaFileInfo) < 0) {
                        list3.add(mediaFileInfo);
                    }
                }
            }
        }
    }

    public void D(boolean z) {
        this.o = z;
    }

    @Override // com.camerasideas.collagemaker.activity.gallery.ui.GalleryBaseGroupView, com.camerasideas.collagemaker.activity.gallery.ui.b
    public void a(String str) {
        String f = this.f.f();
        List<MediaFileInfo> h = this.f.h();
        if (f != null && ((ArrayList) h).size() > 0) {
            this.j.put(f, h);
        }
        if (str.equalsIgnoreCase("/Google Photos")) {
            rm rmVar = this.l;
            if (rmVar != null) {
                ((ImageSelectorActivity) rmVar).w(str);
                return;
            }
            return;
        }
        f.g(getContext()).edit().putString("RecentPhotoFolder", str).apply();
        q(str, this.i.get(str));
    }

    @Override // defpackage.wm.d, com.camerasideas.collagemaker.activity.gallery.ui.GalleryBaseGroupView
    public void b(TreeMap<String, List<MediaFileInfo>> treeMap) {
        MediaFileInfo mediaFileInfo;
        List<MediaFileInfo> list;
        em.h("MultiSelectGalleryGroupView", "onScannedMediaResult");
        this.i = treeMap;
        StringBuilder q2 = ic.q("Insert a path:");
        q2.append(this.d);
        em.h("MultiSelectGalleryGroupView", q2.toString());
        if (!(treeMap == null || (mediaFileInfo = this.d) == null || mediaFileInfo.b() == null || ((list = treeMap.get(this.d.b())) != null && list.contains(this.d)))) {
            Set<String> keySet = treeMap.keySet();
            dq.a(getContext());
            String str = dq.e;
            for (String str2 : keySet) {
                if ((str2.equalsIgnoreCase(str) || str2.contains("/Recent")) && bm.e(this.d.d())) {
                    List<MediaFileInfo> list2 = treeMap.get(str2);
                    MediaFileInfo mediaFileInfo2 = new MediaFileInfo(this.d);
                    mediaFileInfo2.r(0);
                    if (list2 != null && !list2.contains(mediaFileInfo2)) {
                        em.h("MultiSelectGalleryGroupView", "Insert a MediaFileInfo");
                        list2.add(1, mediaFileInfo2);
                    }
                }
            }
        }
        this.g.d(treeMap);
        this.g.f(this);
        if (treeMap.size() > 0) {
            String string = f.g(getContext()).getString("RecentPhotoFolder", null);
            if (TextUtils.isEmpty(string) || !treeMap.containsKey(string)) {
                string = treeMap.firstKey();
            }
            q(string, treeMap.get(string));
        }
    }

    /* access modifiers changed from: protected */
    @Override // com.camerasideas.collagemaker.activity.gallery.ui.GalleryBaseGroupView
    public void j(View view) {
        this.q = (FrameLayout) view.findViewById(R.id.n9);
        this.r = (CircularProgressView) view.findViewById(R.id.n4);
        this.c = (GridView) view.findViewById(R.id.i1);
        MediaFoldersView mediaFoldersView = (MediaFoldersView) findViewById(R.id.kz);
        this.g = mediaFoldersView;
        mediaFoldersView.e(this.h);
        ym ymVar = new ym(getContext(), this);
        this.f = ymVar;
        this.c.setAdapter((ListAdapter) ymVar);
        View findViewById = view.findViewById(R.id.hj);
        this.c.setEmptyView(findViewById);
        findViewById.setVisibility(8);
        this.c.setOnItemClickListener(this);
        this.c.setOnScrollListener(this);
    }

    /* access modifiers changed from: protected */
    @Override // com.camerasideas.collagemaker.activity.gallery.ui.GalleryBaseGroupView
    public void l() {
        this.b = R.layout.bw;
    }

    public void onClick(View view) {
    }

    /* JADX WARNING: Code restructure failed: missing block: B:13:0x0025, code lost:
        if (((r11.d() & 8) == 8) == false) goto L_0x0027;
     */
    @Override // android.widget.AdapterView.OnItemClickListener
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void onItemClick(android.widget.AdapterView<?> r8, android.view.View r9, int r10, long r11) {
        /*
        // Method dump skipped, instructions count: 393
        */
        throw new UnsupportedOperationException("Method not decompiled: com.camerasideas.collagemaker.activity.gallery.ui.GalleryMultiSelectGroupView.onItemClick(android.widget.AdapterView, android.view.View, int, long):void");
    }

    /* JADX DEBUG: Failed to insert an additional move for type inference into block B:23:0x005c */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v6, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r8v1, types: [xm] */
    /* JADX WARN: Type inference failed for: r0v8, types: [java.util.ArrayList] */
    /* JADX WARNING: Unknown variable types count: 1 */
    @Override // com.camerasideas.collagemaker.activity.gallery.ui.GalleryBaseGroupView
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void q(java.lang.String r7, java.util.List<com.camerasideas.collagemaker.appdata.MediaFileInfo> r8) {
        /*
        // Method dump skipped, instructions count: 129
        */
        throw new UnsupportedOperationException("Method not decompiled: com.camerasideas.collagemaker.activity.gallery.ui.GalleryMultiSelectGroupView.q(java.lang.String, java.util.List):void");
    }

    public void s() {
        ArrayList<MediaFileInfo> arrayList;
        if (this.f != null && (arrayList = this.k) != null) {
            Iterator<MediaFileInfo> it = arrayList.iterator();
            while (it.hasNext()) {
                it.next().r(0);
            }
            this.k.clear();
            this.j.clear();
            this.f.b();
            this.f.notifyDataSetChanged();
        }
    }

    public void t(MediaFileInfo mediaFileInfo) {
        int indexOf;
        int indexOf2;
        List<MediaFileInfo> list = this.j.get(mediaFileInfo.b());
        if (list != null && (indexOf2 = list.indexOf(mediaFileInfo)) >= 0 && indexOf2 < list.size()) {
            MediaFileInfo mediaFileInfo2 = list.get(indexOf2);
            mediaFileInfo2.r(Math.max(mediaFileInfo2.g() - 1, 0));
            if (mediaFileInfo != mediaFileInfo2) {
                mediaFileInfo.r(Math.max(mediaFileInfo.g() - 1, 0));
            }
            this.f.c(mediaFileInfo2);
            if (!mediaFileInfo2.i()) {
                list.remove(indexOf2);
            }
            if (list.size() == 0) {
                this.j.remove(mediaFileInfo2.b());
            }
        }
        List<MediaFileInfo> list2 = this.j.get("/Recent");
        if (list2 != null && list2.size() > 0 && (indexOf = list2.indexOf(mediaFileInfo)) >= 0 && indexOf < list2.size()) {
            if (!list2.get(indexOf).i()) {
                list2.remove(indexOf);
            }
            if (list2.size() == 0) {
                this.j.remove("/Recent");
            }
        }
        this.g.g(this.j.keySet());
    }

    public ArrayList<MediaFileInfo> u() {
        return new ArrayList<>(this.k);
    }

    public int v() {
        ArrayList<MediaFileInfo> arrayList = this.k;
        if (arrayList != null) {
            return arrayList.size();
        }
        return 0;
    }

    public void w() {
        cn cnVar = this.h;
        if (cnVar != null) {
            cnVar.a();
        }
        en.a(this).f();
        en.a(this).h(null);
        f();
    }

    public void x() {
        this.h.e(false);
        this.h.d(true);
        f();
    }

    public void y(MediaFileInfo mediaFileInfo, int i) {
        z(mediaFileInfo, i);
        rm rmVar = this.l;
        if (rmVar != null) {
            ((ImageSelectorActivity) rmVar).v(u(), mediaFileInfo);
        }
    }

    public void z(MediaFileInfo mediaFileInfo, int i) {
        int firstVisiblePosition;
        int i2 = this.f.i(mediaFileInfo);
        GridView gridView = this.c;
        if (!(gridView == null || (firstVisiblePosition = i2 - gridView.getFirstVisiblePosition()) < 0 || this.c.getChildAt(firstVisiblePosition) == null)) {
            View childAt = this.c.getChildAt(firstVisiblePosition);
            if (childAt.getTag() instanceof xm.b) {
                xm.b bVar = (xm.b) childAt.getTag();
            }
        }
        this.f.g(i2);
        t(mediaFileInfo);
        this.f.notifyDataSetChanged();
        if (i <= -1) {
            return;
        }
        if (i >= this.k.size() || !mediaFileInfo.equals(this.k.get(i))) {
            int lastIndexOf = this.k.lastIndexOf(mediaFileInfo);
            if (lastIndexOf >= 0) {
                this.k.remove(lastIndexOf);
                return;
            }
            return;
        }
        this.k.remove(i);
    }

    public GalleryMultiSelectGroupView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }
}
