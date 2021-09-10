package dev.drojian.rate;

import android.app.Dialog;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.app.g;
import androidx.appcompat.widget.StarCheckView;
import dev.drojian.rate.a;
import photoeditor.cutout.backgrounderaser.R;

public class b extends a {

    class a implements Runnable {
        final /* synthetic */ ed0 b;

        a(b bVar, ed0 ed0) {
            this.b = ed0;
        }

        public void run() {
            this.b.i();
        }
    }

    @Override // dev.drojian.rate.a
    public Dialog e(Context context, bd0 bd0, ed0 ed0, dd0 dd0) {
        View view;
        cd0 cd0 = new cd0(context);
        if (!bd0.a || bd0.b) {
            view = LayoutInflater.from(context).inflate(R.layout.ck, (ViewGroup) null);
            if (bd0.a) {
                ((ImageView) view.findViewById(R.id.ng)).setScaleX(-1.0f);
                view.findViewById(R.id.k8).setScaleX(-1.0f);
            }
        } else {
            view = LayoutInflater.from(context).inflate(R.layout.cl, (ViewGroup) null);
        }
        this.i = (ImageView) view.findViewById(R.id.nf);
        this.f = (TextView) view.findViewById(R.id.nq);
        this.k = (LinearLayout) view.findViewById(R.id.k7);
        this.j = (TextView) view.findViewById(R.id.k6);
        this.g = (TextView) view.findViewById(R.id.nk);
        this.h = (TextView) view.findViewById(R.id.nj);
        if (bd0.c) {
            view.setBackgroundResource(R.drawable.jc);
            this.f.setTextColor(androidx.core.content.a.b(context, R.color.e2));
            this.g.setTextColor(androidx.core.content.a.b(context, R.color.e2));
            this.h.setTextColor(androidx.core.content.a.b(context, R.color.e2));
        }
        this.i.setImageResource(R.drawable.jd);
        this.f.setText(bd0.d);
        this.f.setVisibility(0);
        this.g.setVisibility(4);
        this.h.setVisibility(4);
        this.j.setEnabled(false);
        this.j.setAlpha(0.5f);
        this.k.setAlpha(0.5f);
        this.j.setText(context.getString(R.string.cp).toUpperCase());
        this.a = (StarCheckView) view.findViewById(R.id.nl);
        this.b = (StarCheckView) view.findViewById(R.id.nm);
        this.c = (StarCheckView) view.findViewById(R.id.nn);
        this.d = (StarCheckView) view.findViewById(R.id.no);
        this.e = (StarCheckView) view.findViewById(R.id.np);
        a.e eVar = new a.e(bd0, dd0);
        this.a.setOnClickListener(eVar);
        this.b.setOnClickListener(eVar);
        this.c.setOnClickListener(eVar);
        this.d.setOnClickListener(eVar);
        this.e.setOnClickListener(eVar);
        cd0.p(view);
        view.postDelayed(new a(this, ed0), 1200);
        g a2 = cd0.a();
        a2.show();
        return a2;
    }
}
