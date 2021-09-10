package com.facebook.rebound.ui;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Color;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.SeekBar;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TableLayout;
import android.widget.TextView;
import com.facebook.rebound.g;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Objects;

public class SpringConfiguratorView extends FrameLayout {
    private static final DecimalFormat o = new DecimalFormat("#.#");
    private final e b;
    private final List<com.facebook.rebound.c> c;
    private final com.facebook.rebound.b d;
    private final float e;
    private final float f;
    private final com.facebook.rebound.d g;
    private final int h;
    private SeekBar i;
    private SeekBar j;
    private Spinner k;
    private TextView l;
    private TextView m;
    private com.facebook.rebound.c n;

    private class b implements View.OnTouchListener {
        b(a aVar) {
        }

        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (motionEvent.getAction() != 0) {
                return true;
            }
            SpringConfiguratorView.c(SpringConfiguratorView.this);
            return true;
        }
    }

    private class c implements com.facebook.rebound.e {
        c(a aVar) {
        }

        @Override // com.facebook.rebound.e
        public void a(com.facebook.rebound.b bVar) {
        }

        @Override // com.facebook.rebound.e
        public void b(com.facebook.rebound.b bVar) {
            float c = (float) bVar.c();
            float f = SpringConfiguratorView.this.f;
            SpringConfiguratorView.this.setTranslationY(ic.a(SpringConfiguratorView.this.e, f, c, f));
        }

        @Override // com.facebook.rebound.e
        public void c(com.facebook.rebound.b bVar) {
        }

        @Override // com.facebook.rebound.e
        public void d(com.facebook.rebound.b bVar) {
        }
    }

    private class d implements SeekBar.OnSeekBarChangeListener {
        d(a aVar) {
        }

        public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
            if (seekBar == SpringConfiguratorView.this.i) {
                double d = (double) (((((float) i) * 200.0f) / 100000.0f) + 0.0f);
                SpringConfiguratorView.this.n.b = androidx.core.app.b.J0(d);
                String format = SpringConfiguratorView.o.format(d);
                TextView textView = SpringConfiguratorView.this.m;
                textView.setText("T:" + format);
            }
            if (seekBar == SpringConfiguratorView.this.j) {
                double d2 = (double) (((((float) i) * 50.0f) / 100000.0f) + 0.0f);
                SpringConfiguratorView.this.n.a = androidx.core.app.b.z(d2);
                String format2 = SpringConfiguratorView.o.format(d2);
                TextView textView2 = SpringConfiguratorView.this.l;
                textView2.setText("F:" + format2);
            }
        }

        public void onStartTrackingTouch(SeekBar seekBar) {
        }

        public void onStopTrackingTouch(SeekBar seekBar) {
        }
    }

    private class e extends BaseAdapter {
        private final Context a;
        private final List<String> b = new ArrayList();

        public e(Context context) {
            this.a = context;
        }

        public void a(String str) {
            this.b.add(str);
            notifyDataSetChanged();
        }

        public void b() {
            this.b.clear();
            notifyDataSetChanged();
        }

        public int getCount() {
            return this.b.size();
        }

        public Object getItem(int i) {
            return this.b.get(i);
        }

        public long getItemId(int i) {
            return (long) i;
        }

        public View getView(int i, View view, ViewGroup viewGroup) {
            TextView textView;
            if (view == null) {
                textView = new TextView(this.a);
                textView.setLayoutParams(new AbsListView.LayoutParams(-1, -1));
                int w = androidx.core.app.b.w(12.0f, SpringConfiguratorView.this.getResources());
                textView.setPadding(w, w, w, w);
                textView.setTextColor(SpringConfiguratorView.this.h);
            } else {
                textView = (TextView) view;
            }
            textView.setText(this.b.get(i));
            return textView;
        }
    }

    private class f implements AdapterView.OnItemSelectedListener {
        f(a aVar) {
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
            SpringConfiguratorView springConfiguratorView = SpringConfiguratorView.this;
            springConfiguratorView.n = (com.facebook.rebound.c) springConfiguratorView.c.get(i);
            SpringConfiguratorView springConfiguratorView2 = SpringConfiguratorView.this;
            SpringConfiguratorView.j(springConfiguratorView2, springConfiguratorView2.n);
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onNothingSelected(AdapterView<?> adapterView) {
        }
    }

    public SpringConfiguratorView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    static void c(SpringConfiguratorView springConfiguratorView) {
        double d2 = springConfiguratorView.d.d();
        com.facebook.rebound.b bVar = springConfiguratorView.d;
        double d3 = 1.0d;
        if (d2 == 1.0d) {
            d3 = 0.0d;
        }
        bVar.h(d3);
    }

    static void j(SpringConfiguratorView springConfiguratorView, com.facebook.rebound.c cVar) {
        Objects.requireNonNull(springConfiguratorView);
        double d2 = cVar.b;
        double d3 = 0.0d;
        int round = Math.round(((((float) (d2 == 0.0d ? 0.0d : ((d2 - 194.0d) / 3.62d) + 30.0d)) - 0.0f) * 100000.0f) / 200.0f);
        double d4 = cVar.a;
        if (d4 != 0.0d) {
            d3 = ((d4 - 25.0d) / 3.0d) + 8.0d;
        }
        int round2 = Math.round(((((float) d3) - 0.0f) * 100000.0f) / 50.0f);
        springConfiguratorView.i.setProgress(round);
        springConfiguratorView.j.setProgress(round2);
    }

    @TargetApi(11)
    public SpringConfiguratorView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        ArrayList arrayList = new ArrayList();
        this.c = arrayList;
        int argb = Color.argb(255, 225, 225, 225);
        this.h = argb;
        g b2 = g.b();
        com.facebook.rebound.d b3 = com.facebook.rebound.d.b();
        this.g = b3;
        e eVar = new e(context);
        this.b = eVar;
        Resources resources = getResources();
        this.f = (float) androidx.core.app.b.w(40.0f, resources);
        this.e = (float) androidx.core.app.b.w(280.0f, resources);
        com.facebook.rebound.b c2 = b2.c();
        this.d = c2;
        c cVar = new c(null);
        c2.g(1.0d);
        c2.h(1.0d);
        c2.a(cVar);
        Resources resources2 = getResources();
        int w = androidx.core.app.b.w(5.0f, resources2);
        int w2 = androidx.core.app.b.w(10.0f, resources2);
        int w3 = androidx.core.app.b.w(20.0f, resources2);
        TableLayout.LayoutParams layoutParams = new TableLayout.LayoutParams(0, -2, 1.0f);
        layoutParams.setMargins(0, 0, w, 0);
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, androidx.core.app.b.w(300.0f, resources2)));
        FrameLayout frameLayout2 = new FrameLayout(context);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -1);
        layoutParams2.setMargins(0, w3, 0, 0);
        frameLayout2.setLayoutParams(layoutParams2);
        frameLayout2.setBackgroundColor(Color.argb(100, 0, 0, 0));
        frameLayout.addView(frameLayout2);
        this.k = new Spinner(context, 0);
        FrameLayout.LayoutParams t = androidx.core.app.b.t();
        t.gravity = 48;
        t.setMargins(w2, w2, w2, 0);
        this.k.setLayoutParams(t);
        frameLayout2.addView(this.k);
        LinearLayout linearLayout = new LinearLayout(context);
        FrameLayout.LayoutParams t2 = androidx.core.app.b.t();
        t2.setMargins(0, 0, 0, androidx.core.app.b.w(80.0f, resources2));
        t2.gravity = 80;
        linearLayout.setLayoutParams(t2);
        linearLayout.setOrientation(1);
        frameLayout2.addView(linearLayout);
        LinearLayout linearLayout2 = new LinearLayout(context);
        FrameLayout.LayoutParams t3 = androidx.core.app.b.t();
        t3.setMargins(w2, w2, w2, w3);
        linearLayout2.setPadding(w2, w2, w2, w2);
        linearLayout2.setLayoutParams(t3);
        linearLayout2.setOrientation(0);
        linearLayout.addView(linearLayout2);
        SeekBar seekBar = new SeekBar(context);
        this.i = seekBar;
        seekBar.setLayoutParams(layoutParams);
        linearLayout2.addView(this.i);
        TextView textView = new TextView(getContext());
        this.m = textView;
        textView.setTextColor(argb);
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(androidx.core.app.b.w(50.0f, resources2), -1);
        this.m.setGravity(19);
        this.m.setLayoutParams(layoutParams3);
        this.m.setMaxLines(1);
        linearLayout2.addView(this.m);
        LinearLayout linearLayout3 = new LinearLayout(context);
        FrameLayout.LayoutParams t4 = androidx.core.app.b.t();
        t4.setMargins(w2, w2, w2, w3);
        linearLayout3.setPadding(w2, w2, w2, w2);
        linearLayout3.setLayoutParams(t4);
        linearLayout3.setOrientation(0);
        linearLayout.addView(linearLayout3);
        SeekBar seekBar2 = new SeekBar(context);
        this.j = seekBar2;
        seekBar2.setLayoutParams(layoutParams);
        linearLayout3.addView(this.j);
        TextView textView2 = new TextView(getContext());
        this.l = textView2;
        textView2.setTextColor(argb);
        FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(androidx.core.app.b.w(50.0f, resources2), -1);
        this.l.setGravity(19);
        this.l.setLayoutParams(layoutParams4);
        this.l.setMaxLines(1);
        linearLayout3.addView(this.l);
        View view = new View(context);
        FrameLayout.LayoutParams layoutParams5 = new FrameLayout.LayoutParams(androidx.core.app.b.w(60.0f, resources2), androidx.core.app.b.w(40.0f, resources2));
        layoutParams5.gravity = 49;
        view.setLayoutParams(layoutParams5);
        view.setOnTouchListener(new b(null));
        view.setBackgroundColor(Color.argb(255, 0, 164, 209));
        frameLayout.addView(view);
        addView(frameLayout);
        d dVar = new d(null);
        this.i.setMax(100000);
        this.i.setOnSeekBarChangeListener(dVar);
        this.j.setMax(100000);
        this.j.setOnSeekBarChangeListener(dVar);
        this.k.setAdapter((SpinnerAdapter) eVar);
        this.k.setOnItemSelectedListener(new f(null));
        Map<com.facebook.rebound.c, String> a2 = b3.a();
        eVar.b();
        arrayList.clear();
        for (Map.Entry<com.facebook.rebound.c, String> entry : a2.entrySet()) {
            if (entry.getKey() != com.facebook.rebound.c.c) {
                this.c.add(entry.getKey());
                this.b.a(entry.getValue());
            }
        }
        this.c.add(com.facebook.rebound.c.c);
        this.b.a(a2.get(com.facebook.rebound.c.c));
        this.b.notifyDataSetChanged();
        if (this.c.size() > 0) {
            this.k.setSelection(0);
        }
        setTranslationY(this.e);
    }
}
