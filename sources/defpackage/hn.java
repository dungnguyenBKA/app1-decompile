package defpackage;

import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.net.Uri;
import com.camerasideas.collagemaker.activity.CollageMakerApplication;
import com.camerasideas.collagemaker.filter.ISCropFilter;
import photoeditor.cutout.backgrounderaser.R;

/* renamed from: hn  reason: default package */
public class hn {
    private int a;
    private String b;
    private Uri c;
    private int d;
    private ShapeDrawable e;
    private ISCropFilter f;
    private boolean g;

    public hn() {
    }

    public Uri a() {
        return this.c;
    }

    public String b() {
        return this.b;
    }

    public ISCropFilter c() {
        return this.f;
    }

    public ShapeDrawable d() {
        return this.e;
    }

    public int e() {
        return this.a;
    }

    public int f() {
        return this.d;
    }

    public boolean g() {
        return this.g;
    }

    public void h(Uri uri) {
        this.c = uri;
    }

    public void i(ISCropFilter iSCropFilter) {
        this.f = iSCropFilter;
    }

    public void j(int i) {
        this.a = i;
    }

    public void k(int i) {
        this.d = i;
    }

    public void l(boolean z) {
        this.g = z;
    }

    public hn(int i, int i2) {
        this.a = i;
        this.d = i2;
    }

    public hn(String str, int i, boolean z) {
        this.g = z;
        this.b = str;
        this.d = i;
        float dimensionPixelSize = (float) CollageMakerApplication.b().getResources().getDimensionPixelSize(R.dimen.om);
        float[] fArr = {dimensionPixelSize, dimensionPixelSize, dimensionPixelSize, dimensionPixelSize, dimensionPixelSize, dimensionPixelSize, dimensionPixelSize, dimensionPixelSize};
        ShapeDrawable shapeDrawable = new ShapeDrawable(new RoundRectShape(fArr, null, fArr));
        this.e = shapeDrawable;
        shapeDrawable.getPaint().setColor(Color.parseColor(str));
        this.e.getPaint().setAntiAlias(true);
        this.e.getPaint().setStyle(Paint.Style.FILL);
    }
}
