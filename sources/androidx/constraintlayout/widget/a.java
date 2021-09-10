package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.util.Xml;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Constraints;
import com.google.ads.AdSize;
import com.google.ads.mediation.facebook.FacebookAdapter;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import com.vungle.warren.error.VungleException;
import com.vungle.warren.ui.presenter.LocalAdPresenter;
import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import org.apache.http.util.LangUtils;
import org.xmlpull.v1.XmlPullParserException;

public class a {
    private static final int[] b = {0, 4, 8};
    private static SparseIntArray c;
    private HashMap<Integer, b> a = new HashMap<>();

    /* access modifiers changed from: private */
    public static class b {
        public int A;
        public int B;
        public int C;
        public int D;
        public int E;
        public int F;
        public int G;
        public int H;
        public int I;
        public int J;
        public int K;
        public int L;
        public int M;
        public int N;
        public int O;
        public int P;
        public float Q;
        public float R;
        public int S;
        public int T;
        public float U;
        public boolean V;
        public float W;
        public float X;
        public float Y;
        public float Z;
        boolean a;
        public float a0;
        public int b;
        public float b0;
        public int c;
        public float c0;
        int d;
        public float d0;
        public int e;
        public float e0;
        public int f;
        public float f0;
        public float g;
        public float g0;
        public int h;
        public boolean h0;
        public int i;
        public boolean i0;
        public int j;
        public int j0;
        public int k;
        public int k0;
        public int l;
        public int l0;
        public int m;
        public int m0;
        public int n;
        public int n0;
        public int o;
        public int o0;
        public int p;
        public float p0;
        public int q;
        public float q0;
        public int r;
        public boolean r0;
        public int s;
        public int s0;
        public int t;
        public int t0;
        public float u;
        public int[] u0;
        public float v;
        public String v0;
        public String w;
        public int x;
        public int y;
        public float z;

        private b() {
            this.a = false;
            this.e = -1;
            this.f = -1;
            this.g = -1.0f;
            this.h = -1;
            this.i = -1;
            this.j = -1;
            this.k = -1;
            this.l = -1;
            this.m = -1;
            this.n = -1;
            this.o = -1;
            this.p = -1;
            this.q = -1;
            this.r = -1;
            this.s = -1;
            this.t = -1;
            this.u = 0.5f;
            this.v = 0.5f;
            this.w = null;
            this.x = -1;
            this.y = 0;
            this.z = 0.0f;
            this.A = -1;
            this.B = -1;
            this.C = -1;
            this.D = -1;
            this.E = -1;
            this.F = -1;
            this.G = -1;
            this.H = -1;
            this.I = -1;
            this.J = 0;
            this.K = -1;
            this.L = -1;
            this.M = -1;
            this.N = -1;
            this.O = -1;
            this.P = -1;
            this.Q = 0.0f;
            this.R = 0.0f;
            this.S = 0;
            this.T = 0;
            this.U = 1.0f;
            this.V = false;
            this.W = 0.0f;
            this.X = 0.0f;
            this.Y = 0.0f;
            this.Z = 0.0f;
            this.a0 = 1.0f;
            this.b0 = 1.0f;
            this.c0 = Float.NaN;
            this.d0 = Float.NaN;
            this.e0 = 0.0f;
            this.f0 = 0.0f;
            this.g0 = 0.0f;
            this.h0 = false;
            this.i0 = false;
            this.j0 = 0;
            this.k0 = 0;
            this.l0 = -1;
            this.m0 = -1;
            this.n0 = -1;
            this.o0 = -1;
            this.p0 = 1.0f;
            this.q0 = 1.0f;
            this.r0 = false;
            this.s0 = -1;
            this.t0 = -1;
        }

        static void a(b bVar, ConstraintHelper constraintHelper, int i2, Constraints.LayoutParams layoutParams) {
            bVar.d(i2, layoutParams);
            if (constraintHelper instanceof Barrier) {
                bVar.t0 = 1;
                Barrier barrier = (Barrier) constraintHelper;
                bVar.s0 = barrier.i();
                bVar.u0 = Arrays.copyOf(barrier.b, barrier.c);
            }
        }

        /* access modifiers changed from: private */
        /* access modifiers changed from: public */
        private void d(int i2, Constraints.LayoutParams layoutParams) {
            this.d = i2;
            this.h = layoutParams.d;
            this.i = layoutParams.e;
            this.j = layoutParams.f;
            this.k = layoutParams.g;
            this.l = layoutParams.h;
            this.m = layoutParams.i;
            this.n = layoutParams.j;
            this.o = layoutParams.k;
            this.p = layoutParams.l;
            this.q = layoutParams.p;
            this.r = layoutParams.q;
            this.s = layoutParams.r;
            this.t = layoutParams.s;
            this.u = layoutParams.z;
            this.v = layoutParams.A;
            this.w = layoutParams.B;
            this.x = layoutParams.m;
            this.y = layoutParams.n;
            this.z = layoutParams.o;
            this.A = layoutParams.P;
            this.B = layoutParams.Q;
            this.C = layoutParams.R;
            this.g = layoutParams.c;
            this.e = layoutParams.a;
            this.f = layoutParams.b;
            this.b = ((ViewGroup.MarginLayoutParams) layoutParams).width;
            this.c = ((ViewGroup.MarginLayoutParams) layoutParams).height;
            this.D = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
            this.E = ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
            this.F = ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
            this.G = ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
            this.Q = layoutParams.E;
            this.R = layoutParams.D;
            this.T = layoutParams.G;
            this.S = layoutParams.F;
            boolean z2 = layoutParams.S;
            this.h0 = z2;
            this.i0 = layoutParams.T;
            this.j0 = layoutParams.H;
            this.k0 = layoutParams.I;
            this.h0 = z2;
            this.l0 = layoutParams.L;
            this.m0 = layoutParams.M;
            this.n0 = layoutParams.J;
            this.o0 = layoutParams.K;
            this.p0 = layoutParams.N;
            this.q0 = layoutParams.O;
            this.H = layoutParams.getMarginEnd();
            this.I = layoutParams.getMarginStart();
            this.U = layoutParams.l0;
            this.X = layoutParams.o0;
            this.Y = layoutParams.p0;
            this.Z = layoutParams.q0;
            this.a0 = layoutParams.r0;
            this.b0 = layoutParams.s0;
            this.c0 = layoutParams.t0;
            this.d0 = layoutParams.u0;
            this.e0 = layoutParams.v0;
            this.f0 = layoutParams.w0;
            this.g0 = 0.0f;
            this.W = layoutParams.n0;
            this.V = layoutParams.m0;
        }

        public void c(ConstraintLayout.LayoutParams layoutParams) {
            layoutParams.d = this.h;
            layoutParams.e = this.i;
            layoutParams.f = this.j;
            layoutParams.g = this.k;
            layoutParams.h = this.l;
            layoutParams.i = this.m;
            layoutParams.j = this.n;
            layoutParams.k = this.o;
            layoutParams.l = this.p;
            layoutParams.p = this.q;
            layoutParams.q = this.r;
            layoutParams.r = this.s;
            layoutParams.s = this.t;
            ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin = this.D;
            ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin = this.E;
            ((ViewGroup.MarginLayoutParams) layoutParams).topMargin = this.F;
            ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin = this.G;
            layoutParams.x = this.P;
            layoutParams.y = this.O;
            layoutParams.z = this.u;
            layoutParams.A = this.v;
            layoutParams.m = this.x;
            layoutParams.n = this.y;
            layoutParams.o = this.z;
            layoutParams.B = this.w;
            layoutParams.P = this.A;
            layoutParams.Q = this.B;
            layoutParams.E = this.Q;
            layoutParams.D = this.R;
            layoutParams.G = this.T;
            layoutParams.F = this.S;
            layoutParams.S = this.h0;
            layoutParams.T = this.i0;
            layoutParams.H = this.j0;
            layoutParams.I = this.k0;
            layoutParams.L = this.l0;
            layoutParams.M = this.m0;
            layoutParams.J = this.n0;
            layoutParams.K = this.o0;
            layoutParams.N = this.p0;
            layoutParams.O = this.q0;
            layoutParams.R = this.C;
            layoutParams.c = this.g;
            layoutParams.a = this.e;
            layoutParams.b = this.f;
            ((ViewGroup.MarginLayoutParams) layoutParams).width = this.b;
            ((ViewGroup.MarginLayoutParams) layoutParams).height = this.c;
            layoutParams.setMarginStart(this.I);
            layoutParams.setMarginEnd(this.H);
            layoutParams.a();
        }

        public Object clone() {
            b bVar = new b();
            bVar.a = this.a;
            bVar.b = this.b;
            bVar.c = this.c;
            bVar.e = this.e;
            bVar.f = this.f;
            bVar.g = this.g;
            bVar.h = this.h;
            bVar.i = this.i;
            bVar.j = this.j;
            bVar.k = this.k;
            bVar.l = this.l;
            bVar.m = this.m;
            bVar.n = this.n;
            bVar.o = this.o;
            bVar.p = this.p;
            bVar.q = this.q;
            bVar.r = this.r;
            bVar.s = this.s;
            bVar.t = this.t;
            bVar.u = this.u;
            bVar.v = this.v;
            bVar.w = this.w;
            bVar.A = this.A;
            bVar.B = this.B;
            bVar.u = this.u;
            bVar.u = this.u;
            bVar.u = this.u;
            bVar.u = this.u;
            bVar.u = this.u;
            bVar.C = this.C;
            bVar.D = this.D;
            bVar.E = this.E;
            bVar.F = this.F;
            bVar.G = this.G;
            bVar.H = this.H;
            bVar.I = this.I;
            bVar.J = this.J;
            bVar.K = this.K;
            bVar.L = this.L;
            bVar.M = this.M;
            bVar.N = this.N;
            bVar.O = this.O;
            bVar.P = this.P;
            bVar.Q = this.Q;
            bVar.R = this.R;
            bVar.S = this.S;
            bVar.T = this.T;
            bVar.U = this.U;
            bVar.V = this.V;
            bVar.W = this.W;
            bVar.X = this.X;
            bVar.Y = this.Y;
            bVar.Z = this.Z;
            bVar.a0 = this.a0;
            bVar.b0 = this.b0;
            bVar.c0 = this.c0;
            bVar.d0 = this.d0;
            bVar.e0 = this.e0;
            bVar.f0 = this.f0;
            bVar.g0 = this.g0;
            bVar.h0 = this.h0;
            bVar.i0 = this.i0;
            bVar.j0 = this.j0;
            bVar.k0 = this.k0;
            bVar.l0 = this.l0;
            bVar.m0 = this.m0;
            bVar.n0 = this.n0;
            bVar.o0 = this.o0;
            bVar.p0 = this.p0;
            bVar.q0 = this.q0;
            bVar.s0 = this.s0;
            bVar.t0 = this.t0;
            int[] iArr = this.u0;
            if (iArr != null) {
                bVar.u0 = Arrays.copyOf(iArr, iArr.length);
            }
            bVar.x = this.x;
            bVar.y = this.y;
            bVar.z = this.z;
            bVar.r0 = this.r0;
            return bVar;
        }
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        c = sparseIntArray;
        sparseIntArray.append(55, 25);
        c.append(56, 26);
        c.append(58, 29);
        c.append(59, 30);
        c.append(64, 36);
        c.append(63, 35);
        c.append(37, 4);
        c.append(36, 3);
        c.append(34, 1);
        c.append(72, 6);
        c.append(73, 7);
        c.append(44, 17);
        c.append(45, 18);
        c.append(46, 19);
        c.append(0, 27);
        c.append(60, 32);
        c.append(61, 33);
        c.append(43, 10);
        c.append(42, 9);
        c.append(76, 13);
        c.append(79, 16);
        c.append(77, 14);
        c.append(74, 11);
        c.append(78, 15);
        c.append(75, 12);
        c.append(67, 40);
        c.append(53, 39);
        c.append(52, 41);
        c.append(66, 42);
        c.append(51, 20);
        c.append(65, 37);
        c.append(41, 5);
        c.append(54, 75);
        c.append(62, 75);
        c.append(57, 75);
        c.append(35, 75);
        c.append(33, 75);
        c.append(5, 24);
        c.append(7, 28);
        c.append(23, 31);
        c.append(24, 8);
        c.append(6, 34);
        c.append(8, 2);
        c.append(3, 23);
        c.append(4, 21);
        c.append(2, 22);
        c.append(13, 43);
        c.append(26, 44);
        c.append(21, 45);
        c.append(22, 46);
        c.append(20, 60);
        c.append(18, 47);
        c.append(19, 48);
        c.append(14, 49);
        c.append(15, 50);
        c.append(16, 51);
        c.append(17, 52);
        c.append(25, 53);
        c.append(68, 54);
        c.append(47, 55);
        c.append(69, 56);
        c.append(48, 57);
        c.append(70, 58);
        c.append(49, 59);
        c.append(38, 61);
        c.append(40, 62);
        c.append(39, 63);
        c.append(1, 38);
        c.append(71, 69);
        c.append(50, 70);
        c.append(29, 71);
        c.append(28, 72);
        c.append(30, 73);
        c.append(27, 74);
    }

    private int[] c(View view, String str) {
        int i;
        Object b2;
        String[] split = str.split(",");
        Context context = view.getContext();
        int[] iArr = new int[split.length];
        int i2 = 0;
        int i3 = 0;
        while (i2 < split.length) {
            String trim = split[i2].trim();
            try {
                i = R$id.class.getField(trim).getInt(null);
            } catch (Exception unused) {
                i = 0;
            }
            if (i == 0) {
                i = context.getResources().getIdentifier(trim, FacebookAdapter.KEY_ID, context.getPackageName());
            }
            if (i == 0 && view.isInEditMode() && (view.getParent() instanceof ConstraintLayout) && (b2 = ((ConstraintLayout) view.getParent()).b(0, trim)) != null && (b2 instanceof Integer)) {
                i = ((Integer) b2).intValue();
            }
            iArr[i3] = i;
            i2++;
            i3++;
        }
        return i3 != split.length ? Arrays.copyOf(iArr, i3) : iArr;
    }

    private b d(Context context, AttributeSet attributeSet) {
        b bVar = new b();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.c);
        int indexCount = obtainStyledAttributes.getIndexCount();
        for (int i = 0; i < indexCount; i++) {
            int index = obtainStyledAttributes.getIndex(i);
            int i2 = c.get(index);
            switch (i2) {
                case 1:
                    int resourceId = obtainStyledAttributes.getResourceId(index, bVar.p);
                    if (resourceId == -1) {
                        resourceId = obtainStyledAttributes.getInt(index, -1);
                    }
                    bVar.p = resourceId;
                    break;
                case 2:
                    bVar.G = obtainStyledAttributes.getDimensionPixelSize(index, bVar.G);
                    break;
                case 3:
                    int resourceId2 = obtainStyledAttributes.getResourceId(index, bVar.o);
                    if (resourceId2 == -1) {
                        resourceId2 = obtainStyledAttributes.getInt(index, -1);
                    }
                    bVar.o = resourceId2;
                    break;
                case 4:
                    int resourceId3 = obtainStyledAttributes.getResourceId(index, bVar.n);
                    if (resourceId3 == -1) {
                        resourceId3 = obtainStyledAttributes.getInt(index, -1);
                    }
                    bVar.n = resourceId3;
                    break;
                case 5:
                    bVar.w = obtainStyledAttributes.getString(index);
                    break;
                case 6:
                    bVar.A = obtainStyledAttributes.getDimensionPixelOffset(index, bVar.A);
                    break;
                case 7:
                    bVar.B = obtainStyledAttributes.getDimensionPixelOffset(index, bVar.B);
                    break;
                case 8:
                    bVar.H = obtainStyledAttributes.getDimensionPixelSize(index, bVar.H);
                    break;
                case 9:
                    int resourceId4 = obtainStyledAttributes.getResourceId(index, bVar.t);
                    if (resourceId4 == -1) {
                        resourceId4 = obtainStyledAttributes.getInt(index, -1);
                    }
                    bVar.t = resourceId4;
                    break;
                case 10:
                    int resourceId5 = obtainStyledAttributes.getResourceId(index, bVar.s);
                    if (resourceId5 == -1) {
                        resourceId5 = obtainStyledAttributes.getInt(index, -1);
                    }
                    bVar.s = resourceId5;
                    break;
                case 11:
                    bVar.N = obtainStyledAttributes.getDimensionPixelSize(index, bVar.N);
                    break;
                case VungleException.NO_AUTO_CACHED_PLACEMENT /*{ENCODED_INT: 12}*/:
                    bVar.O = obtainStyledAttributes.getDimensionPixelSize(index, bVar.O);
                    break;
                case 13:
                    bVar.K = obtainStyledAttributes.getDimensionPixelSize(index, bVar.K);
                    break;
                case VungleException.SERVER_RETRY_ERROR /*{ENCODED_INT: 14}*/:
                    bVar.M = obtainStyledAttributes.getDimensionPixelSize(index, bVar.M);
                    break;
                case VungleException.ALREADY_PLAYING_ANOTHER_AD /*{ENCODED_INT: 15}*/:
                    bVar.P = obtainStyledAttributes.getDimensionPixelSize(index, bVar.P);
                    break;
                case VungleException.NO_SPACE_TO_INIT /*{ENCODED_INT: 16}*/:
                    bVar.L = obtainStyledAttributes.getDimensionPixelSize(index, bVar.L);
                    break;
                case 17:
                    bVar.e = obtainStyledAttributes.getDimensionPixelOffset(index, bVar.e);
                    break;
                case VungleException.NO_SPACE_TO_LOAD_AD_AUTO_CACHED /*{ENCODED_INT: 18}*/:
                    bVar.f = obtainStyledAttributes.getDimensionPixelOffset(index, bVar.f);
                    break;
                case VungleException.NO_SPACE_TO_DOWNLOAD_ASSETS /*{ENCODED_INT: 19}*/:
                    bVar.g = obtainStyledAttributes.getFloat(index, bVar.g);
                    break;
                case 20:
                    bVar.u = obtainStyledAttributes.getFloat(index, bVar.u);
                    break;
                case VungleException.SERVER_ERROR /*{ENCODED_INT: 21}*/:
                    bVar.c = obtainStyledAttributes.getLayoutDimension(index, bVar.c);
                    break;
                case VungleException.SERVER_TEMPORARY_UNAVAILABLE /*{ENCODED_INT: 22}*/:
                    int i3 = obtainStyledAttributes.getInt(index, bVar.J);
                    bVar.J = i3;
                    bVar.J = b[i3];
                    break;
                case VungleException.ASSET_DOWNLOAD_RECOVERABLE /*{ENCODED_INT: 23}*/:
                    bVar.b = obtainStyledAttributes.getLayoutDimension(index, bVar.b);
                    break;
                case VungleException.ASSET_DOWNLOAD_ERROR /*{ENCODED_INT: 24}*/:
                    bVar.D = obtainStyledAttributes.getDimensionPixelSize(index, bVar.D);
                    break;
                case VungleException.OPERATION_CANCELED /*{ENCODED_INT: 25}*/:
                    int resourceId6 = obtainStyledAttributes.getResourceId(index, bVar.h);
                    if (resourceId6 == -1) {
                        resourceId6 = obtainStyledAttributes.getInt(index, -1);
                    }
                    bVar.h = resourceId6;
                    break;
                case VungleException.DB_ERROR /*{ENCODED_INT: 26}*/:
                    int resourceId7 = obtainStyledAttributes.getResourceId(index, bVar.i);
                    if (resourceId7 == -1) {
                        resourceId7 = obtainStyledAttributes.getInt(index, -1);
                    }
                    bVar.i = resourceId7;
                    break;
                case VungleException.RENDER_ERROR /*{ENCODED_INT: 27}*/:
                    bVar.C = obtainStyledAttributes.getInt(index, bVar.C);
                    break;
                case VungleException.INVALID_SIZE /*{ENCODED_INT: 28}*/:
                    bVar.E = obtainStyledAttributes.getDimensionPixelSize(index, bVar.E);
                    break;
                case VungleException.INCORRECT_DEFAULT_API_USAGE /*{ENCODED_INT: 29}*/:
                    int resourceId8 = obtainStyledAttributes.getResourceId(index, bVar.j);
                    if (resourceId8 == -1) {
                        resourceId8 = obtainStyledAttributes.getInt(index, -1);
                    }
                    bVar.j = resourceId8;
                    break;
                case VungleException.INCORRECT_BANNER_API_USAGE /*{ENCODED_INT: 30}*/:
                    int resourceId9 = obtainStyledAttributes.getResourceId(index, bVar.k);
                    if (resourceId9 == -1) {
                        resourceId9 = obtainStyledAttributes.getInt(index, -1);
                    }
                    bVar.k = resourceId9;
                    break;
                case VungleException.WEB_CRASH /*{ENCODED_INT: 31}*/:
                    bVar.I = obtainStyledAttributes.getDimensionPixelSize(index, bVar.I);
                    break;
                case 32:
                    int resourceId10 = obtainStyledAttributes.getResourceId(index, bVar.q);
                    if (resourceId10 == -1) {
                        resourceId10 = obtainStyledAttributes.getInt(index, -1);
                    }
                    bVar.q = resourceId10;
                    break;
                case VungleException.NETWORK_UNREACHABLE /*{ENCODED_INT: 33}*/:
                    int resourceId11 = obtainStyledAttributes.getResourceId(index, bVar.r);
                    if (resourceId11 == -1) {
                        resourceId11 = obtainStyledAttributes.getInt(index, -1);
                    }
                    bVar.r = resourceId11;
                    break;
                case VungleException.NETWORK_PERMISSIONS_NOT_GRANTED /*{ENCODED_INT: 34}*/:
                    bVar.F = obtainStyledAttributes.getDimensionPixelSize(index, bVar.F);
                    break;
                case VungleException.OK_HTTP_NOT_SUPPORTED_PLATFORM /*{ENCODED_INT: 35}*/:
                    int resourceId12 = obtainStyledAttributes.getResourceId(index, bVar.m);
                    if (resourceId12 == -1) {
                        resourceId12 = obtainStyledAttributes.getInt(index, -1);
                    }
                    bVar.m = resourceId12;
                    break;
                case 36:
                    int resourceId13 = obtainStyledAttributes.getResourceId(index, bVar.l);
                    if (resourceId13 == -1) {
                        resourceId13 = obtainStyledAttributes.getInt(index, -1);
                    }
                    bVar.l = resourceId13;
                    break;
                case LangUtils.HASH_OFFSET /*{ENCODED_INT: 37}*/:
                    bVar.v = obtainStyledAttributes.getFloat(index, bVar.v);
                    break;
                case 38:
                    bVar.d = obtainStyledAttributes.getResourceId(index, bVar.d);
                    break;
                case 39:
                    bVar.R = obtainStyledAttributes.getFloat(index, bVar.R);
                    break;
                case 40:
                    bVar.Q = obtainStyledAttributes.getFloat(index, bVar.Q);
                    break;
                case 41:
                    bVar.S = obtainStyledAttributes.getInt(index, bVar.S);
                    break;
                case 42:
                    bVar.T = obtainStyledAttributes.getInt(index, bVar.T);
                    break;
                case 43:
                    bVar.U = obtainStyledAttributes.getFloat(index, bVar.U);
                    break;
                case 44:
                    bVar.V = true;
                    bVar.W = obtainStyledAttributes.getDimension(index, bVar.W);
                    break;
                case 45:
                    bVar.Y = obtainStyledAttributes.getFloat(index, bVar.Y);
                    break;
                case ModuleDescriptor.MODULE_VERSION /*{ENCODED_INT: 46}*/:
                    bVar.Z = obtainStyledAttributes.getFloat(index, bVar.Z);
                    break;
                case 47:
                    bVar.a0 = obtainStyledAttributes.getFloat(index, bVar.a0);
                    break;
                case 48:
                    bVar.b0 = obtainStyledAttributes.getFloat(index, bVar.b0);
                    break;
                case 49:
                    bVar.c0 = obtainStyledAttributes.getFloat(index, bVar.c0);
                    break;
                case AdSize.PORTRAIT_AD_HEIGHT /*{ENCODED_INT: 50}*/:
                    bVar.d0 = obtainStyledAttributes.getFloat(index, bVar.d0);
                    break;
                case 51:
                    bVar.e0 = obtainStyledAttributes.getDimension(index, bVar.e0);
                    break;
                case 52:
                    bVar.f0 = obtainStyledAttributes.getDimension(index, bVar.f0);
                    break;
                case 53:
                    bVar.g0 = obtainStyledAttributes.getDimension(index, bVar.g0);
                    break;
                default:
                    switch (i2) {
                        case 60:
                            bVar.X = obtainStyledAttributes.getFloat(index, bVar.X);
                            continue;
                        case 61:
                            int resourceId14 = obtainStyledAttributes.getResourceId(index, bVar.x);
                            if (resourceId14 == -1) {
                                resourceId14 = obtainStyledAttributes.getInt(index, -1);
                            }
                            bVar.x = resourceId14;
                            continue;
                        case 62:
                            bVar.y = obtainStyledAttributes.getDimensionPixelSize(index, bVar.y);
                            continue;
                        case 63:
                            bVar.z = obtainStyledAttributes.getFloat(index, bVar.z);
                            continue;
                        default:
                            switch (i2) {
                                case 69:
                                    bVar.p0 = obtainStyledAttributes.getFloat(index, 1.0f);
                                    continue;
                                    continue;
                                case 70:
                                    bVar.q0 = obtainStyledAttributes.getFloat(index, 1.0f);
                                    continue;
                                case 71:
                                    Log.e("ConstraintSet", "CURRENTLY UNSUPPORTED");
                                    continue;
                                case 72:
                                    bVar.s0 = obtainStyledAttributes.getInt(index, bVar.s0);
                                    continue;
                                case 73:
                                    bVar.v0 = obtainStyledAttributes.getString(index);
                                    continue;
                                case 74:
                                    bVar.r0 = obtainStyledAttributes.getBoolean(index, bVar.r0);
                                    continue;
                                case LocalAdPresenter.INCENTIVIZED_TRESHOLD /*{ENCODED_INT: 75}*/:
                                    StringBuilder q = ic.q("unused attribute 0x");
                                    q.append(Integer.toHexString(index));
                                    q.append("   ");
                                    q.append(c.get(index));
                                    Log.w("ConstraintSet", q.toString());
                                    continue;
                                default:
                                    StringBuilder q2 = ic.q("Unknown attribute 0x");
                                    q2.append(Integer.toHexString(index));
                                    q2.append("   ");
                                    q2.append(c.get(index));
                                    Log.w("ConstraintSet", q2.toString());
                                    continue;
                            }
                    }
            }
        }
        obtainStyledAttributes.recycle();
        return bVar;
    }

    /* access modifiers changed from: package-private */
    public void a(ConstraintLayout constraintLayout) {
        int childCount = constraintLayout.getChildCount();
        HashSet hashSet = new HashSet(this.a.keySet());
        for (int i = 0; i < childCount; i++) {
            View childAt = constraintLayout.getChildAt(i);
            int id = childAt.getId();
            if (id != -1) {
                if (this.a.containsKey(Integer.valueOf(id))) {
                    hashSet.remove(Integer.valueOf(id));
                    b bVar = this.a.get(Integer.valueOf(id));
                    if (childAt instanceof Barrier) {
                        bVar.t0 = 1;
                    }
                    int i2 = bVar.t0;
                    if (i2 != -1 && i2 == 1) {
                        Barrier barrier = (Barrier) childAt;
                        barrier.setId(id);
                        barrier.k(bVar.s0);
                        barrier.j(bVar.r0);
                        int[] iArr = bVar.u0;
                        if (iArr != null) {
                            barrier.d(iArr);
                        } else {
                            String str = bVar.v0;
                            if (str != null) {
                                int[] c2 = c(barrier, str);
                                bVar.u0 = c2;
                                barrier.d(c2);
                            }
                        }
                    }
                    ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) childAt.getLayoutParams();
                    bVar.c(layoutParams);
                    childAt.setLayoutParams(layoutParams);
                    childAt.setVisibility(bVar.J);
                    int i3 = Build.VERSION.SDK_INT;
                    childAt.setAlpha(bVar.U);
                    childAt.setRotation(bVar.X);
                    childAt.setRotationX(bVar.Y);
                    childAt.setRotationY(bVar.Z);
                    childAt.setScaleX(bVar.a0);
                    childAt.setScaleY(bVar.b0);
                    if (!Float.isNaN(bVar.c0)) {
                        childAt.setPivotX(bVar.c0);
                    }
                    if (!Float.isNaN(bVar.d0)) {
                        childAt.setPivotY(bVar.d0);
                    }
                    childAt.setTranslationX(bVar.e0);
                    childAt.setTranslationY(bVar.f0);
                    if (i3 >= 21) {
                        childAt.setTranslationZ(bVar.g0);
                        if (bVar.V) {
                            childAt.setElevation(bVar.W);
                        }
                    }
                }
            } else {
                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
            }
        }
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            Integer num = (Integer) it.next();
            b bVar2 = this.a.get(num);
            int i4 = bVar2.t0;
            if (i4 != -1 && i4 == 1) {
                Barrier barrier2 = new Barrier(constraintLayout.getContext());
                barrier2.setId(num.intValue());
                int[] iArr2 = bVar2.u0;
                if (iArr2 != null) {
                    barrier2.d(iArr2);
                } else {
                    String str2 = bVar2.v0;
                    if (str2 != null) {
                        int[] c3 = c(barrier2, str2);
                        bVar2.u0 = c3;
                        barrier2.d(c3);
                    }
                }
                barrier2.k(bVar2.s0);
                ConstraintLayout.LayoutParams a2 = constraintLayout.generateDefaultLayoutParams();
                barrier2.h();
                bVar2.c(a2);
                constraintLayout.addView(barrier2, a2);
            }
            if (bVar2.a) {
                View guideline = new Guideline(constraintLayout.getContext());
                guideline.setId(num.intValue());
                ConstraintLayout.LayoutParams a3 = constraintLayout.generateDefaultLayoutParams();
                bVar2.c(a3);
                constraintLayout.addView(guideline, a3);
            }
        }
    }

    public void b(Constraints constraints) {
        int childCount = constraints.getChildCount();
        this.a.clear();
        for (int i = 0; i < childCount; i++) {
            View childAt = constraints.getChildAt(i);
            Constraints.LayoutParams layoutParams = (Constraints.LayoutParams) childAt.getLayoutParams();
            int id = childAt.getId();
            if (id != -1) {
                if (!this.a.containsKey(Integer.valueOf(id))) {
                    this.a.put(Integer.valueOf(id), new b());
                }
                b bVar = this.a.get(Integer.valueOf(id));
                if (childAt instanceof ConstraintHelper) {
                    b.a(bVar, (ConstraintHelper) childAt, id, layoutParams);
                }
                bVar.d(id, layoutParams);
            } else {
                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
            }
        }
    }

    public void e(Context context, int i) {
        XmlResourceParser xml = context.getResources().getXml(i);
        try {
            for (int eventType = xml.getEventType(); eventType != 1; eventType = xml.next()) {
                if (eventType == 0) {
                    xml.getName();
                } else if (eventType == 2) {
                    String name = xml.getName();
                    b d = d(context, Xml.asAttributeSet(xml));
                    if (name.equalsIgnoreCase("Guideline")) {
                        d.a = true;
                    }
                    this.a.put(Integer.valueOf(d.d), d);
                }
            }
        } catch (XmlPullParserException e) {
            e.printStackTrace();
        } catch (IOException e2) {
            e2.printStackTrace();
        }
    }
}
