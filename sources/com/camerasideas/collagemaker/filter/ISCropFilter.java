package com.camerasideas.collagemaker.filter;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;

public class ISCropFilter implements ISFilter {
    public static final Parcelable.Creator<ISCropFilter> CREATOR = new a();
    private float b = 0.0f;
    private float c = 0.0f;
    private float d = 1.0f;
    private float e = 1.0f;
    private float f = 1.0f;
    private Matrix g = new Matrix();
    private boolean h = false;
    private boolean i = false;
    private float j = 0.0f;
    private float k = 0.0f;
    private float l = 0.0f;
    private float m = 1.0f;
    private float n = 1.0f;
    private int o;

    class a implements Parcelable.Creator<ISCropFilter> {
        a() {
        }

        /* Return type fixed from 'java.lang.Object' to match base method */
        @Override // android.os.Parcelable.Creator
        public ISCropFilter createFromParcel(Parcel parcel) {
            ISCropFilter iSCropFilter = new ISCropFilter();
            iSCropFilter.b = parcel.readFloat();
            iSCropFilter.c = parcel.readFloat();
            iSCropFilter.d = parcel.readFloat();
            iSCropFilter.e = parcel.readFloat();
            iSCropFilter.f = parcel.readFloat();
            boolean z = false;
            iSCropFilter.h = parcel.readByte() != 0;
            if (parcel.readByte() != 0) {
                z = true;
            }
            iSCropFilter.i = z;
            iSCropFilter.j = parcel.readFloat();
            iSCropFilter.k = parcel.readFloat();
            iSCropFilter.l = parcel.readFloat();
            iSCropFilter.m = parcel.readFloat();
            iSCropFilter.n = parcel.readFloat();
            iSCropFilter.o = parcel.readInt();
            float[] fArr = new float[9];
            parcel.readFloatArray(fArr);
            iSCropFilter.g.setValues(fArr);
            return iSCropFilter;
        }

        /* Return type fixed from 'java.lang.Object[]' to match base method */
        @Override // android.os.Parcelable.Creator
        public ISCropFilter[] newArray(int i) {
            return new ISCropFilter[i];
        }
    }

    public ISCropFilter() {
    }

    @Override // java.lang.Object
    public Object clone() {
        ISCropFilter iSCropFilter = new ISCropFilter();
        iSCropFilter.b = this.b;
        iSCropFilter.c = this.c;
        iSCropFilter.d = this.d;
        iSCropFilter.e = this.e;
        iSCropFilter.f = this.f;
        iSCropFilter.h = this.h;
        iSCropFilter.i = this.i;
        iSCropFilter.j = this.j;
        iSCropFilter.g.set(this.g);
        iSCropFilter.k = this.k;
        iSCropFilter.l = this.l;
        iSCropFilter.m = this.m;
        iSCropFilter.n = this.n;
        iSCropFilter.o = this.o;
        return iSCropFilter;
    }

    public int describeContents() {
        return 0;
    }

    public Bitmap p(Bitmap bitmap) {
        Bitmap bitmap2;
        if (!((this.b == 0.0f && this.c == 0.0f && this.d == 1.0f && this.e == 1.0f && this.g.isIdentity()) ? false : true) || !wq.o(bitmap)) {
            return bitmap;
        }
        if (this.d <= 0.0f || this.e <= 0.0f) {
            rq.m(new IllegalArgumentException("(ISCropFilter::doFilterException)mCropWidth or mCropHeight is smaller then zero"));
            return bitmap;
        }
        int i2 = this.o;
        if (i2 > 0) {
            float width = ((float) i2) / ((float) bitmap.getWidth());
            Matrix matrix = new Matrix();
            matrix.postScale(width, width);
            this.g.set(matrix);
        }
        Bitmap f2 = wq.f(bitmap, this.g, bitmap.getWidth(), bitmap.getHeight());
        int width2 = (int) (((float) f2.getWidth()) * this.b);
        int height = (int) (((float) f2.getHeight()) * this.c);
        int width3 = (int) (((float) f2.getWidth()) * this.d);
        int height2 = (int) (((float) f2.getHeight()) * this.e);
        em.h("ISCropFilter", "cropX = " + width2 + ", cropY=" + height + ",cropWidth=" + width3 + ",cropHeight=" + height2);
        if (width3 <= 0 || height2 <= 0) {
            return null;
        }
        try {
            bitmap2 = wq.d(width3, height2, Bitmap.Config.ARGB_8888);
        } catch (OutOfMemoryError e2) {
            em.h("ISCropFilter", "doFilter error retry :" + e2);
            System.gc();
            try {
                bitmap2 = wq.d(width3, height2, Bitmap.Config.ARGB_8888);
            } catch (OutOfMemoryError e3) {
                em.h("ISCropFilter", "doFilter error :" + e3);
                e3.printStackTrace();
                return f2;
            }
        }
        Canvas canvas = new Canvas(bitmap2);
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        paint.setFilterBitmap(true);
        canvas.drawBitmap(f2, new Rect(width2, height, width2 + width3, height + height2), new Rect(0, 0, width3, height2), paint);
        f2.recycle();
        return bitmap2;
    }

    public float q() {
        return this.f;
    }

    public boolean r() {
        return (this.e == 1.0f && this.d == 1.0f && this.b == 0.0f && this.c == 0.0f && this.g.isIdentity()) ? false : true;
    }

    public void s(int i2) {
        this.o = i2;
    }

    public void t(float f2, float f3, float f4, float f5, float f6) {
        this.b = f2;
        this.c = f3;
        this.d = f4;
        this.e = f5;
        this.f = f6;
    }

    public String toString() {
        StringBuilder q = ic.q("ISCropFilter(");
        q.append(this.b);
        q.append(", ");
        q.append(this.c);
        q.append(" - ");
        q.append(this.d);
        q.append(", ");
        q.append(this.e);
        q.append(", ");
        q.append(this.f);
        q.append(")");
        return q.toString();
    }

    public void u(Matrix matrix) {
        this.g = matrix;
    }

    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeFloat(this.b);
        parcel.writeFloat(this.c);
        parcel.writeFloat(this.d);
        parcel.writeFloat(this.e);
        parcel.writeFloat(this.f);
        parcel.writeByte(this.h ? (byte) 1 : 0);
        parcel.writeByte(this.i ? (byte) 1 : 0);
        parcel.writeFloat(this.j);
        parcel.writeFloat(this.k);
        parcel.writeFloat(this.l);
        parcel.writeFloat(this.m);
        parcel.writeFloat(this.n);
        parcel.writeInt(this.o);
        float[] fArr = new float[9];
        this.g.getValues(fArr);
        parcel.writeFloatArray(fArr);
    }

    public ISCropFilter(float f2, float f3, float f4, float f5, float f6) {
        this.b = f2;
        this.k = f2;
        this.c = f3;
        this.l = f3;
        this.d = f4;
        this.m = f4;
        this.e = f5;
        this.n = f5;
        this.f = f6;
    }
}
