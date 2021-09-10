package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.Nullable;
import com.facebook.ads.Ad;
import com.facebook.ads.AdError;
import com.facebook.ads.AdSettings;
import com.facebook.ads.ExtraHints;
import com.facebook.ads.MediaView;
import com.facebook.ads.NativeAd;
import com.facebook.ads.NativeAdBase;
import com.facebook.ads.NativeAdLayout;
import com.facebook.ads.NativeAdListener;
import com.facebook.ads.NativeBannerAd;
import com.facebook.ads.internal.api.AdNativeComponentView;
import com.facebook.ads.internal.api.NativeAdBaseApi;
import com.facebook.ads.internal.api.NativeAdImageApi;
import com.facebook.ads.internal.api.Repairable;
import com.facebook.ads.internal.protocol.AdErrorType;
import com.facebook.ads.internal.protocol.AdPlacementType;
import com.facebook.ads.internal.settings.AdInternalSettings;
import com.facebook.proguard.annotations.DoNotStrip;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.lang.ref.WeakReference;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import java.util.UUID;
import java.util.WeakHashMap;
import org.apache.http.HttpStatus;

/* renamed from: com.facebook.ads.redexgen.X.cD  reason: case insensitive filesystem */
public final class C1143cD implements Ad, NativeAdBaseApi, Repairable, AbstractC0584Jg {
    public static AnonymousClass7D A0i;
    public static byte[] A0j;
    public static String[] A0k;
    public static final String A0l = C1143cD.class.getSimpleName();
    public static final WeakHashMap<View, WeakReference<C1143cD>> A0m = new WeakHashMap<>();
    public long A00;
    @Nullable
    public Drawable A01;
    public View.OnTouchListener A02;
    @Nullable
    public View A03;
    public View A04;
    @Nullable
    public View A05;
    @Nullable
    public NativeAdLayout A06;
    public EnumC01470z A07;
    @Nullable
    public C0800Rv A08;
    public F4 A09;
    @Nullable
    public SP A0A;
    @Nullable
    public AnonymousClass7I A0B;
    @Nullable
    public C03418x A0C;
    public JS A0D;
    public View$OnClickListenerC1141cB A0E;
    @Nullable
    public AbstractC1144cE A0F;
    public C0578Ja A0G;
    public EnumC0579Jb A0H;
    public EnumC0593Jr A0I;
    public C0654Md A0J;
    @Nullable
    public C0676Na A0K;
    @Nullable
    public P1 A0L;
    @Nullable
    @DoNotStrip
    public QD A0M;
    @Nullable
    @DoNotStrip
    public QD A0N;
    @Nullable
    public QE A0O;
    public QE A0P;
    public String A0Q;
    @Nullable
    public String A0R;
    public WeakReference<TT> A0S;
    public WeakReference<QD> A0T;
    public boolean A0U;
    public boolean A0V;
    public boolean A0W;
    public boolean A0X;
    @Nullable
    public C0794Rp A0Y;
    public final AnonymousClass7D A0Z;
    public final XJ A0a;
    public final JX A0b;
    public final C0586Ji A0c;
    public final C0625La A0d;
    public final String A0e;
    public final String A0f;
    public final List<View> A0g;
    public volatile boolean A0h;

    public static String A0T(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0j, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 40);
        }
        return new String(copyOfRange);
    }

    public static void A0a() {
        A0j = new byte[]{90, -118, 96, -116, 89, 89, 90, -114, -90, -41, -89, -89, -42, -41, -88, -72, -78, -70, -77, -79, -72, -74, -26, -25, 10, -58, 20, 21, 26, -58, 18, 21, 7, 10, 11, 10, 125, -96, -112, -95, -87, -84, -88, -99, -80, -95, 92, 99, 97, -81, 99, 92, -91, -81, 92, -86, -85, -80, 92, -99, 92, -86, -99, -80, -91, -78, -95, 92, -99, -96, -62, -66, -67, -15, -32, -27, -31, -22, -33, -31, -54, -31, -16, -13, -21, -18, -25, -105, -78, -70, -67, -74, -75, 113, -59, -64, 113, -67, -64, -78, -75, 113, -98, -74, -75, -70, -78, Byte.MAX_VALUE, -83, -56, -48, -45, -52, -53, -121, -37, -42, -121, -42, -55, -37, -56, -48, -43, -121, -37, -52, -44, -41, -45, -56, -37, -52, -121, -80, -85, -121, -51, -39, -42, -44, -121, -55, -48, -53, -121, -41, -56, -32, -45, -42, -56, -53, -121, -114, -116, -38, -114, -93, -56, -50, -65, -52, -56, -69, -58, 122, -65, -52, -52, -55, -52, -120, 100, -79, -42, -34, -55, -44, -47, -52, -120, -37, -51, -36, -120, -41, -50, -120, -53, -44, -47, -53, -45, -55, -54, -44, -51, -120, -34, -47, -51, -33, -37, -43, -19, -20, -15, -23, -34, -15, -19, -1, -88, -18, -9, -6, -88, -15, -21, -9, -10, -88, -15, -5, -88, -15, -5, -88, -11, -15, -5, -5, -15, -10, -17, -74, -73, -49, -50, -45, -53, -64, -45, -49, -31, -118, -45, -35, -118, -41, -45, -35, -35, -45, -40, -47, -104, -71, -31, -33, -32, -116, -36, -34, -37, -30, -43, -48, -47, -116, -51, -116, -62, -43, -47, -29, -116, -97, -78, -89, -76, -93, 94, Byte.MAX_VALUE, -94, 94, -75, -97, -79, 94, -97, -86, -80, -93, -97, -94, -73, 94, -80, -93, -91, -89, -79, -78, -93, -80, -93, -94, 94, -75, -89, -78, -90, 94, -97, 94, -108, -89, -93, -75, 108, 94, Byte.MAX_VALUE, -77, -78, -83, 94, -77, -84, -80, -93, -91, -89, -79, -78, -93, -80, -89, -84, -91, 94, -97, -84, -94, 94, -82, -80, -83, -95, -93, -93, -94, -89, -84, -91, 108, -49, -30, -11, -22, -9, -26, -95, -30, -27, -95, -27, -26, -12, -11, -13, -16, -6, -26, -27, -115, -96, -77, -88, -75, -92, 95, -96, -93, 95, -85, -82, -96, -93, 95, -79, -92, -80, -76, -92, -78, -77, -92, -93, -32, -13, -17, 1, -86, -21, -10, -4, -17, -21, -18, 3, -86, -4, -17, -15, -13, -3, -2, -17, -4, -17, -18, -86, 1, -13, -2, -14, -86, -21, -86, -40, -21, -2, -13, 0, -17, -53, -18, -72, -86, -53, -1, -2, -7, -86, -1, -8, -4, -17, -15, -13, -3, -2, -17, -4, -13, -8, -15, -86, -21, -8, -18, -86, -6, -4, -7, -19, -17, -17, -18, -13, -8, -15, -72, -115, -96, -100, -82, 87, -91, -90, -85, 87, -87, -100, -98, -96, -86, -85, -100, -87, -100, -101, 87, -82, -96, -85, -97, 87, -85, -97, -96, -86, 87, -123, -104, -85, -96, -83, -100, 120, -101, -47, -44, -112, -35, -43, -44, -39, -47, -112, -28, -23, -32, -43, -112, -39, -29, -112, -34, -33, -28, -112, -29, -27, -32, -32, -33, -30, -28, -43, -44, -98, -104, -101, -106, -85, -87, -104, -91, -86, -93, -104, -85, -96, -90, -91, -116, -113, -95, -112, -99, -97, -108, -98, -112, -99, -118, -103, -116, -104, -112, -112, -97, -104, -104, -91, -102, -81, -2, -4, 7, 7, -6, 15, 10, -6, -4, -2, 15, 4, 10, 9, -27, -26, -12, -11, -13, -16, -6, -63, -66, -70, -67, -59, -62, -57, -66, -63, -66, -61, -64, -76, -71, -70, -56, -72, -57, -66, -59, -55, -66, -60, -61, 4, 7, -7, -4, -39, -4, -86, -83, -97, -94, Byte.MAX_VALUE, -94, 102, 103, 94, -95, -97, -86, -86, -93, -94, 94, -85, -83, -80, -93, 94, -78, -90, -97, -84, 94, -83, -84, -95, -93, -52, -65, -46, -57, -44, -61, -71, -86, -66, -68, -82, -88, -67, -69, -86, -73, -68, -75, -86, -67, -78, -72, -73, -87, -91, -102, -78, -104, -83, -85, -102, -89, -84, -91, -102, -83, -94, -88, -89, -90, -88, -91, -93, -91, -86, -101, -102, -107, -86, -88, -105, -92, -87, -94, -105, -86, -97, -91, -92, -23, -27, -39, -33, -41, -30, -43, -39, -27, -28, -22, -37, -18, -22, -41, -44, -45, -46, -41, -45, -42, -55, -56, -61, -40, -42, -59, -46, -41, -48, -59, -40, -51, -45, -46};
    }

    public static void A0b() {
        A0k = new String[]{"Bl7Z7O36thNMsAQG86cT5hXAswukL2TU", "w0l3kgVUfrf8f1EzcfbBJ9JqF1JIQyF1", "3FYeVZ4P9Hva0brxRfDXnSutu97odoaf", "TkemScCQ72wM3yeu7V5OcaIZTlgQuG0T", "aV5nfdXEnoj7uvLi", "brDFWAS69jf159nGVdOYVvf", "WGIwYSb5Wjcv", "W7skGFSknqdZoaqu210O1mF"};
    }

    static {
        A0b();
        A0a();
    }

    public C1143cD(Context context, String str, JX jx, boolean z) {
        this.A0f = UUID.randomUUID().toString();
        this.A0I = EnumC0593Jr.A05;
        this.A0S = new WeakReference<>(null);
        this.A0g = new ArrayList();
        this.A0d = new C0625La();
        this.A0X = false;
        this.A0W = false;
        this.A0D = JS.A04;
        this.A07 = EnumC01470z.A03;
        this.A00 = -1;
        if (!z) {
            this.A0a = AnonymousClass56.A04(context);
        } else {
            this.A0a = AnonymousClass56.A02(context);
        }
        this.A0a.A0C(this);
        this.A0e = str;
        this.A0b = jx;
        AnonymousClass7D r0 = A0i;
        if (r0 != null) {
            this.A0Z = r0;
        } else {
            this.A0Z = new AnonymousClass7D(this.A0a);
        }
        this.A04 = new View(context);
        this.A0c = new C0586Ji(this.A0a, this);
    }

    public C1143cD(XJ xj, C0794Rp rp, @Nullable C03418x r5, JX jx) {
        this((Context) xj, (String) null, jx, true);
        this.A0Y = rp;
        this.A0C = r5;
        this.A0h = true;
        this.A04 = new View(xj);
    }

    public C1143cD(XJ xj, C0794Rp rp, @Nullable C03418x r3, JX jx, @Nullable SP sp) {
        this(xj, rp, r3, jx);
        this.A0A = sp;
    }

    public C1143cD(C1143cD cDVar) {
        this((Context) cDVar.A0a, (String) null, cDVar.A0b, true);
        this.A0C = cDVar.A0C;
        this.A0Y = cDVar.A0Y;
        this.A0A = cDVar.A0A;
        this.A0h = true;
        this.A04 = new View(this.A0a);
    }

    private int A00() {
        C03418x r0 = this.A0C;
        if (r0 != null) {
            return r0.A04();
        }
        F4 f4 = this.A09;
        if (f4 == null || f4.A0H() == null) {
            return 1;
        }
        return this.A09.A0H().A04();
    }

    private int A01() {
        C03418x r0 = this.A0C;
        if (r0 != null) {
            return r0.A07();
        }
        C0794Rp rp = this.A0Y;
        if (rp != null) {
            int A0H2 = rp.A0H();
            String[] strArr = A0k;
            if (strArr[1].charAt(16) != strArr[3].charAt(16)) {
                String[] strArr2 = A0k;
                strArr2[7] = "EUscbuPuA5cZxxPx7y6ncGc";
                strArr2[5] = "07NrZ6juCFttxvE5hiFlF8c";
                return A0H2;
            }
            throw new RuntimeException();
        }
        F4 f4 = this.A09;
        if (f4 == null || f4.A0H() == null) {
            return 0;
        }
        return this.A09.A0H().A07();
    }

    private int A02() {
        C03418x r0 = this.A0C;
        if (r0 != null) {
            return r0.A08();
        }
        C0794Rp rp = this.A0Y;
        if (rp != null) {
            int A0I2 = rp.A0I();
            String[] strArr = A0k;
            if (strArr[0].charAt(5) != strArr[2].charAt(5)) {
                String[] strArr2 = A0k;
                strArr2[1] = "wlXrbCoONy6aNPfJSLZ4JGG9g8lWOQWJ";
                strArr2[3] = "zMDzXw8vWIk5v34E7N5RdIcOKoPIh5je";
                return A0I2;
            }
            throw new RuntimeException();
        }
        F4 f4 = this.A09;
        String[] strArr3 = A0k;
        if (strArr3[4].length() != strArr3[6].length()) {
            String[] strArr4 = A0k;
            strArr4[7] = "IJhE7OuQr9AUmHg0gZAU0NE";
            strArr4[5] = "Tpbr9nnLmrgR8Cas3OKWnYo";
            if (f4 == null) {
                return AdError.NETWORK_ERROR_CODE;
            }
        } else {
            String[] strArr5 = A0k;
            strArr5[0] = "x7i9CQzVOJPdqJX1dHOWNRL80PPtBuUS";
            strArr5[2] = "xh5QtfSCbDAINUU48h4MV8p0ljd4aaCa";
            if (f4 == null) {
                return AdError.NETWORK_ERROR_CODE;
            }
        }
        if (f4.A0H() != null) {
            return this.A09.A0H().A08();
        }
        return AdError.NETWORK_ERROR_CODE;
    }

    private int A03() {
        C03418x r0 = this.A0C;
        if (r0 != null) {
            return r0.A09();
        }
        F4 f4 = this.A09;
        if (f4 == null || f4.A0H() == null) {
            return 0;
        }
        return this.A09.A0H().A09();
    }

    public static Drawable A05(XJ xj, Bitmap bitmap, boolean z, @Nullable String str) {
        BitmapDrawable A002;
        BitmapDrawable bitmapDrawable = new BitmapDrawable(xj.getResources(), bitmap);
        if (!z || (A002 = P0.A00(xj, str)) == null) {
            return bitmapDrawable;
        }
        return new LayerDrawable(new Drawable[]{bitmapDrawable, A002});
    }

    public static NativeAdBase A0A(Context context, String str, String str2) throws C0589Jm {
        EnumC0593Jr A002 = C0598Jw.A00(str2);
        if (A002 != null) {
            EnumC0593Jr jr = EnumC0593Jr.A04;
            String[] strArr = A0k;
            if (strArr[7].length() != strArr[5].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0k;
            strArr2[0] = "9sjWaS9CbZxjWOFrlYfgckD2h0ahWze6";
            strArr2[2] = "CgLfFBC4KJYZcdRIWMiGUMQeYT9XpqO1";
            if (A002 == jr) {
                return new NativeBannerAd(context, str);
            }
            if (A002 == EnumC0593Jr.A05) {
                return new NativeAd(context, str);
            }
            throw new C0589Jm(AdErrorType.BID_PAYLOAD_ERROR, String.format(Locale.US, A0T(36, 34, 20), A002));
        }
        throw new C0589Jm(AdErrorType.BID_PAYLOAD_ERROR, String.format(Locale.US, A0T(FacebookMediationAdapter.ERROR_MAPPING_NATIVE_ASSETS, 50, 63), str2));
    }

    @Nullable
    private final C0794Rp A0C() {
        C0794Rp rp = this.A0Y;
        if (rp == null || !rp.A0i()) {
            return null;
        }
        return rp;
    }

    public static JX A0I() {
        return new C1140cA();
    }

    public static C1143cD A0J(NativeAdBaseApi nativeAdBaseApi) {
        if (nativeAdBaseApi instanceof Proxy) {
            return (C1143cD) ((C02424r) Proxy.getInvocationHandler(nativeAdBaseApi)).A05();
        }
        return (C1143cD) nativeAdBaseApi;
    }

    /* access modifiers changed from: private */
    @Nullable
    /* renamed from: A0K */
    public final JY getAdChoicesIcon() {
        if (!isAdLoaded()) {
            return null;
        }
        return this.A0Y.A0K();
    }

    /* access modifiers changed from: private */
    @Nullable
    /* renamed from: A0M */
    public final JZ getAdStarRating() {
        if (!isAdLoaded()) {
            return null;
        }
        return this.A0Y.A0N();
    }

    private AdPlacementType A0P() {
        if (this.A0I == EnumC0593Jr.A05) {
            return AdPlacementType.NATIVE;
        }
        return AdPlacementType.NATIVE_BANNER;
    }

    private void A0W() {
        for (View view : this.A0g) {
            view.setOnClickListener(null);
            view.setOnTouchListener(null);
            view.setOnLongClickListener(null);
        }
        this.A0g.clear();
    }

    private void A0X() {
        if (!TextUtils.isEmpty(getAdChoicesLinkUrl())) {
            C0623Ky.A09(new C0623Ky(), this.A0a, Uri.parse(getAdChoicesLinkUrl()), A1A());
        }
    }

    /* access modifiers changed from: private */
    public void A0Y() {
        this.A0d.A06();
        this.A0c.A05();
    }

    /* access modifiers changed from: private */
    public void A0Z() {
        QE qe = this.A0O;
        if (qe != null) {
            qe.A0W();
            this.A0a.A0A().A96();
            this.A0O = null;
        }
    }

    public static void A0c(@Nullable Drawable drawable, ImageView imageView) {
        imageView.setScaleType(ImageView.ScaleType.FIT_XY);
        if (drawable != null) {
            imageView.setImageDrawable(drawable);
        }
        if (Build.VERSION.SDK_INT >= 16) {
            imageView.setBackground(null);
        } else {
            imageView.setBackgroundDrawable(null);
        }
    }

    /* JADX INFO: Multiple debug info for r11v0 android.view.View: [D('error' com.facebook.ads.redexgen.X.Jl), D('invalidSetOfClickableViews' java.lang.String)] */
    private void A0d(View view, View view2, List<View> list, boolean z) {
        boolean z2;
        boolean z3;
        AbstractC1144cE cEVar;
        View view3 = view2;
        if (!A0q()) {
            this.A0a.A0A().ACy();
        }
        if (view == null) {
            String A0T2 = A0T(258, 19, 68);
            if (!A0q()) {
                this.A0a.A0A().ACx(A0T2);
            }
            throw new IllegalArgumentException(A0T2);
        } else if (list == null || list.size() == 0) {
            String A0T3 = A0T(174, 30, 64);
            if (!A0q()) {
                this.A0a.A0A().ACx(A0T3);
            }
            throw new IllegalArgumentException(A0T3);
        } else {
            C0794Rp A0C2 = A0C();
            if (A0C2 == null) {
                String A0T4 = A0T(23, 13, 126);
                if (!A0q()) {
                    this.A0a.A0A().ACx(A0T4);
                }
                Log.e(A0l, A0T4);
                C0588Jl jl = new C0588Jl(AdErrorType.NATIVE_AD_IS_NOT_LOADED, A0T4);
                A11().A0A().A2d(LZ.A01(this.A00), jl.A04().getErrorCode(), jl.A05());
                if (J4.A1g(this.A0a) && (cEVar = this.A0F) != null) {
                    cEVar.AA7(jl);
                    return;
                }
                return;
            }
            String str = this.A0R;
            boolean z4 = view instanceof FrameLayout;
            String[] strArr = A0k;
            if (strArr[7].length() != strArr[5].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0k;
            strArr2[0] = "EctJGKY0XxsuqG0UQd3u1zsk6i1LiKEB";
            strArr2[2] = "xfmrtxxFdZMJNwdY4ICwqytBKlocc6OO";
            if (z4 && str != null) {
                A0e((FrameLayout) view, str);
            }
            NativeAdLayout nativeAdLayout = this.A06;
            if (nativeAdLayout != null) {
                ((C0837Ti) nativeAdLayout.getNativeAdLayoutApi()).A03();
            }
            TT tt = this.A0S.get();
            if (tt != null && A0C2.A0B() == 1) {
                tt.A03(EnumC0640Lp.AN_INFO_ICON);
            }
            if (view3 != null) {
                if (!(view3 instanceof AdNativeComponentView) || ((AdNativeComponentView) view3).getAdContentsView() == null) {
                    z2 = false;
                } else {
                    z2 = true;
                }
                if (!z || !(view3 instanceof ImageView)) {
                    z3 = false;
                } else {
                    z3 = true;
                }
                if (z2 || z3) {
                    if (this.A03 != null) {
                        Log.w(A0l, A0T(277, 80, 22));
                        String[] strArr3 = A0k;
                        if (strArr3[7].length() != strArr3[5].length()) {
                            throw new RuntimeException();
                        }
                        String[] strArr4 = A0k;
                        strArr4[7] = "Yitqb4l5O5wHhToyiUZG328";
                        strArr4[5] = "n4uNZUYEyoiQJdMJgH58rRy";
                        unregisterView();
                    }
                    if (A0m.containsKey(view) && A0m.get(view).get() != null) {
                        Log.w(A0l, A0T(HttpStatus.SC_BAD_REQUEST, 75, 98));
                        A0m.get(view).get().unregisterView();
                    }
                    this.A0E = new View$OnClickListenerC1141cB(this, this.A0a, null);
                    this.A03 = view;
                    this.A05 = view3;
                    if (view instanceof ViewGroup) {
                        this.A0J = new C0654Md(this.A0a, new C1138c7(this));
                        ((ViewGroup) view).addView(this.A0J);
                    }
                    if (A0C2.A0j()) {
                        this.A0M = new C1139c8(this);
                        this.A0O = new QE(view, 1, new WeakReference(this.A0M), this.A0a);
                        this.A0O.A0Z(false);
                        this.A0O.A0Y(A0C2.A0E());
                        this.A0O.A0V();
                        this.A0a.A0A().A95();
                    }
                    ArrayList<View> arrayList = new ArrayList(list);
                    View view4 = this.A04;
                    if (view4 != null) {
                        arrayList.add(view4);
                    }
                    for (View view5 : arrayList) {
                        A1K(view5);
                    }
                    int A002 = A00();
                    this.A0N = new c9(this, view3, z3, A0C2);
                    if (view3 instanceof AdNativeComponentView) {
                        view3 = ((AdNativeComponentView) view3).getAdContentsView();
                    }
                    this.A0P = new QE(view3, A002, A03(), true, new WeakReference(this.A0N), this.A0a);
                    this.A0P.A0Z(!A0q());
                    this.A0P.A0X(A01());
                    this.A0P.A0Y(A02());
                    if (view3 instanceof NQ) {
                        ((NQ) view3).A07(this.A0P);
                    }
                    this.A08 = new C0800Rv(this.A0a, new C1142cC(this, null), this.A0P, this.A0Y);
                    this.A08.A0E(arrayList);
                    A0m.put(view, new WeakReference<>(this));
                    if (Build.VERSION.SDK_INT >= 18 && J4.A0t(this.A0a)) {
                        this.A0K = new C0676Na();
                        this.A0K.A0D(this.A0e);
                        this.A0K.A0C(this.A0a.getPackageName());
                        this.A0K.A0B(this.A0P);
                        if (this.A0Y.A0C() > 0) {
                            this.A0K.A09(this.A0Y.A0C(), this.A0Y.A0D());
                        }
                        C03418x r0 = this.A0C;
                        if (r0 != null) {
                            this.A0K.A0A(r0.A0C());
                        } else {
                            F4 f4 = this.A09;
                            if (!(f4 == null || f4.A0H() == null)) {
                                this.A0K.A0A(this.A09.A0H().A0C());
                            }
                        }
                        this.A03.getOverlay().add(this.A0K);
                    }
                } else if (this.A0F != null) {
                    C0588Jl jl2 = new C0588Jl(AdErrorType.UNSUPPORTED_AD_ASSET_NATIVEAD, A0T(513, 31, 72));
                    A11().A0A().A2d(LZ.A01(this.A00), jl2.A04().getErrorCode(), jl2.A05());
                    this.A0F.AA7(jl2);
                }
            } else if (this.A0I == EnumC0593Jr.A05) {
                AdErrorType adErrorType = AdErrorType.NO_MEDIAVIEW_IN_NATIVEAD;
                String A0T5 = A0T(237, 21, 66);
                C0588Jl jl3 = new C0588Jl(adErrorType, A0T5);
                A11().A0A().A2d(LZ.A01(this.A00), jl3.A04().getErrorCode(), jl3.A05());
                AbstractC1144cE cEVar2 = this.A0F;
                if (cEVar2 != null) {
                    cEVar2.AA7(jl3);
                }
                if (AdInternalSettings.isDebugBuild()) {
                    Log.e(A0l, A0T5);
                }
            } else {
                AdErrorType adErrorType2 = AdErrorType.NO_MEDIAVIEW_IN_NATIVEBANNERAD;
                String A0T6 = A0T(HttpStatus.SC_NO_CONTENT, 33, 96);
                C0588Jl jl4 = new C0588Jl(adErrorType2, A0T6);
                A11().A0A().A2d(LZ.A01(this.A00), jl4.A04().getErrorCode(), jl4.A05());
                AbstractC1144cE cEVar3 = this.A0F;
                if (cEVar3 != null) {
                    cEVar3.AA7(jl4);
                }
                if (AdInternalSettings.isDebugBuild()) {
                    Log.e(A0l, A0T6);
                }
            }
        }
    }

    private void A0e(FrameLayout frameLayout, String str) {
        P1 p1 = this.A0L;
        if (p1 != null) {
            frameLayout.removeView(p1);
        }
        this.A0L = P0.A01(AnonymousClass56.A02(this.A0a), str);
        P1 p12 = this.A0L;
        if (p12 != null) {
            frameLayout.addView(p12, new FrameLayout.LayoutParams(-1, -1));
            frameLayout.bringChildToFront(this.A0L);
        }
    }

    /* access modifiers changed from: private */
    public void A0f(@Nullable C0794Rp rp, boolean z) {
        if (rp != null) {
            if (this.A0D.equals(JS.A04)) {
                String A5x = rp.A5x();
                if (!TextUtils.isEmpty(A5x)) {
                    this.A0Z.A0Z(new JJ(A5x, this.A0a.A06()));
                }
                if (rp.A0M() != null) {
                    AnonymousClass7A r4 = new AnonymousClass7A(rp.A0M().getUrl(), rp.A0M().getHeight(), rp.A0M().getWidth(), rp.A0T(), A0T(661, 6, 54));
                    r4.A00 = this.A0B;
                    this.A0Z.A0R();
                    this.A0Z.A0T(r4);
                }
                if (!this.A0I.equals(EnumC0593Jr.A04)) {
                    if (rp.A0L() != null) {
                        this.A0Z.A0T(new AnonymousClass7A(rp.A0L().getUrl(), rp.A0L().getHeight(), rp.A0L().getWidth(), rp.A0T(), A0T(661, 6, 54)));
                    }
                    List<C1143cD> A0X2 = rp.A0X();
                    String[] strArr = A0k;
                    if (strArr[1].charAt(16) != strArr[3].charAt(16)) {
                        String[] strArr2 = A0k;
                        strArr2[1] = "BiVeVWtUTguxpSjeMqAkCwQXeKWOVTz4";
                        strArr2[3] = "8sdR9nWPZ664Gt9BvBocaDJi5It1hBkX";
                        if (A0X2 != null) {
                            for (C1143cD cDVar : rp.A0X()) {
                                if (cDVar.getAdCoverImage() != null) {
                                    this.A0Z.A0T(new AnonymousClass7A(cDVar.getAdCoverImage().getUrl(), cDVar.getAdCoverImage().getHeight(), cDVar.getAdCoverImage().getWidth(), rp.A0T(), A0T(661, 6, 54)));
                                }
                            }
                        }
                        String A0V2 = rp.A0V();
                        if (!TextUtils.isEmpty(A0V2)) {
                            this.A0Z.A0Y(new AnonymousClass7C(A0V2, rp.A0T(), A0T(661, 6, 54), rp.A0P().longValue()));
                        }
                    } else {
                        throw new RuntimeException();
                    }
                }
            }
            this.A0Z.A0S(new C1137c6(this, rp, z), new AnonymousClass76(rp.A0T(), A0T(661, 6, 54)));
        }
    }

    /* access modifiers changed from: private */
    public void A0g(AnonymousClass11 r2) {
        C0794Rp rp = this.A0Y;
        if (rp != null) {
            rp.A0Z(r2);
        }
    }

    public static void A0h(NativeAdImageApi nativeAdImageApi, ImageView imageView, XJ xj) {
        if (nativeAdImageApi != null && imageView != null) {
            new AsyncTaskC1017aA(imageView, xj).A06(nativeAdImageApi.getHeight(), nativeAdImageApi.getWidth()).A08(nativeAdImageApi.getUrl());
        }
    }

    private final void A0m(AbstractC1144cE cEVar) {
        this.A0F = cEVar;
    }

    private final void A0n(String str) {
        this.A0Q = str;
    }

    private void A0o(List<View> list, View view) {
        JX jx = this.A0b;
        if (jx != null && jx.ADx(view)) {
            return;
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                View childAt = viewGroup.getChildAt(i);
                String[] strArr = A0k;
                if (strArr[7].length() != strArr[5].length()) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A0k;
                strArr2[1] = "SQxDsveS3BVeMl0nUnJayKxDlwKiSRwM";
                strArr2[3] = "CPUPH8uU8pe6dd8URnD7AGDEQ4lKFlLs";
                A0o(list, childAt);
            }
            return;
        }
        list.add(view);
    }

    /* access modifiers changed from: private */
    public boolean A0p() {
        if (A17() == EnumC0581Jd.A05 || A17() == EnumC0581Jd.A03) {
            return true;
        }
        return false;
    }

    /* access modifiers changed from: private */
    public boolean A0q() {
        C0794Rp rp = this.A0Y;
        return rp != null && rp.A0k();
    }

    public final long A0x() {
        return this.A00;
    }

    @Nullable
    public final C0794Rp A0y() {
        return this.A0Y;
    }

    public final AnonymousClass16 A0z() {
        return A0y().A0J();
    }

    public final AnonymousClass7D A10() {
        return this.A0Z;
    }

    public final XJ A11() {
        return this.A0a;
    }

    @Nullable
    /* renamed from: A12 */
    public final JY getAdCoverImage() {
        if (!isAdLoaded()) {
            return null;
        }
        return this.A0Y.A0L();
    }

    @Nullable
    /* renamed from: A13 */
    public final JY getAdIcon() {
        if (!isAdLoaded()) {
            return null;
        }
        return this.A0Y.A0M();
    }

    @Nullable
    public final AbstractC1144cE A14() {
        return this.A0F;
    }

    public final C0578Ja A15() {
        return this.A0G;
    }

    public final EnumC0579Jb A16() {
        return this.A0H;
    }

    public final EnumC0581Jd A17() {
        if (!isAdLoaded()) {
            return EnumC0581Jd.A03;
        }
        return this.A0Y.A0O();
    }

    public final C0625La A18() {
        return this.A0d;
    }

    public final QE A19() {
        return this.A0P;
    }

    @Nullable
    public final String A1A() {
        if (!isAdLoaded()) {
            return null;
        }
        return this.A0Y.A5x();
    }

    @Nullable
    public final String A1B() {
        return this.A0R;
    }

    @Nullable
    public final String A1C() {
        return A1G(A0T(667, 17, 33));
    }

    @Nullable
    public final String A1D() {
        return A1G(A0T(684, 16, 17));
    }

    @Nullable
    public final String A1E() {
        if (!isAdLoaded()) {
            return null;
        }
        return this.A0Y.A0U();
    }

    @Nullable
    public final String A1F() {
        if (!isAdLoaded() || TextUtils.isEmpty(this.A0Y.A0V())) {
            return null;
        }
        return this.A0Z.A0O(this.A0Y.A0V());
    }

    @Nullable
    public final String A1G(String str) {
        if (!isAdLoaded()) {
            return null;
        }
        return this.A0Y.A0W(str);
    }

    @Nullable
    public final List<C1143cD> A1H() {
        if (!isAdLoaded()) {
            return null;
        }
        return this.A0Y.A0X();
    }

    public final void A1I() {
        if (!AnonymousClass28.A0Q(this.A0a.A00(), false)) {
            A0X();
            return;
        }
        XJ xj = this.A0a;
        AbstractC0660Mj A012 = C0661Mk.A01(xj, xj.A06(), A1A(), this.A06);
        if (A012 == null) {
            A0X();
            return;
        }
        ((C0837Ti) this.A06.getNativeAdLayoutApi()).A04(A012);
        A012.A0J();
    }

    public final void A1J(@Nullable Drawable drawable) {
        boolean z;
        this.A01 = drawable;
        if (drawable != null) {
            z = true;
        } else {
            z = false;
        }
        A1b(z, true);
        String[] strArr = A0k;
        if (strArr[4].length() != strArr[6].length()) {
            String[] strArr2 = A0k;
            strArr2[4] = "Q96JEqttX0oIb74l";
            strArr2[6] = "mqYIcYUMJzEb";
            return;
        }
        throw new RuntimeException();
    }

    public final void A1K(View view) {
        this.A0g.add(view);
        view.setOnClickListener(this.A0E);
        view.setOnTouchListener(this.A0E);
        if (Build.VERSION.SDK_INT >= 18) {
            boolean A0t = J4.A0t(view.getContext());
            String[] strArr = A0k;
            if (strArr[1].charAt(16) != strArr[3].charAt(16)) {
                String[] strArr2 = A0k;
                strArr2[4] = "GeTsVetQiODT9yUx";
                strArr2[6] = "UPeG8QvAHkrx";
                if (A0t) {
                    view.setOnLongClickListener(this.A0E);
                    return;
                }
                return;
            }
            throw new RuntimeException();
        }
    }

    public final void A1L(View view, ImageView imageView) {
        ArrayList arrayList = new ArrayList();
        A0o(arrayList, view);
        A0d(view, imageView, arrayList, true);
    }

    public final void A1M(View view, ImageView imageView, List<View> list) {
        A0d(view, imageView, list, true);
    }

    public final void A1N(View view, AdNativeComponentView adNativeComponentView) {
        ArrayList arrayList = new ArrayList();
        A0o(arrayList, view);
        A0d(view, adNativeComponentView, arrayList, false);
    }

    public final void A1O(View view, AdNativeComponentView adNativeComponentView, List<View> list) {
        A0d(view, adNativeComponentView, list, false);
    }

    public final void A1P(MediaView mediaView) {
        if (mediaView != null) {
            this.A0W = true;
        }
    }

    public final void A1Q(MediaView mediaView) {
        if (mediaView != null) {
            this.A0X = true;
        }
    }

    public final void A1R(@Nullable NativeAdLayout nativeAdLayout) {
        this.A06 = nativeAdLayout;
    }

    public final void A1S(NativeAdListener nativeAdListener, NativeAdBase nativeAdBase) {
        if (nativeAdListener != null) {
            A0m(new BH(nativeAdListener, nativeAdBase));
        }
    }

    public final void A1T(@Nullable TT tt) {
        this.A0S = new WeakReference<>(tt);
    }

    /* JADX INFO: Multiple debug info for r8v0 'this'  com.facebook.ads.redexgen.X.cD: [D('adControllerConfig' com.facebook.ads.redexgen.X.1m), D('integrationErrorMode' com.facebook.ads.AdSettings$IntegrationErrorMode)] */
    public final void A1U(JS js, @Nullable String str, AnonymousClass7I r11) {
        if (str == null) {
            this.A0a.A0A().A2g();
        } else {
            this.A0a.A0A().A2f();
        }
        this.A00 = System.currentTimeMillis();
        if (this.A0h) {
            AdSettings.IntegrationErrorMode A002 = C01621o.A00(this.A0a);
            String A0T2 = A0T(631, 30, 22);
            if (!AdSettings.IntegrationErrorMode.INTEGRATION_ERROR_CRASH_DEBUG_MODE.equals(A002)) {
                C0588Jl jl = new C0588Jl(AdErrorType.LOAD_AD_CALLED_MORE_THAN_ONCE, A0T(631, 30, 22));
                A11().A0A().A2d(LZ.A01(this.A00), jl.A04().getErrorCode(), jl.A05());
                AbstractC1144cE cEVar = this.A0F;
                if (cEVar != null) {
                    cEVar.AA7(jl);
                } else {
                    Log.e(A0T(70, 17, 84), A0T2);
                }
                C03238f r5 = new C03238f(A0T2);
                A11().A04().A8V(A0T(573, 3, 7), C03228e.A0R, r5);
            } else {
                throw new C01671t(A0T2);
            }
        }
        this.A0h = true;
        this.A0D = js;
        if (js.equals(JS.A05)) {
            this.A07 = EnumC01470z.A05;
        }
        this.A0B = r11;
        C01601m r2 = new C01601m(this.A0e, this.A0I, A0P(), null, 1);
        r2.A04(js);
        r2.A05(this.A0Q);
        r2.A06(this.A0R);
        this.A09 = new F4(this.A0a, r2);
        this.A09.A0R(new C1136c5(this));
        this.A09.A0U(str);
    }

    public final void A1V(C0578Ja ja) {
        this.A0G = ja;
    }

    public final void A1W(EnumC0579Jb jb) {
        this.A0H = jb;
    }

    public final void A1X(EnumC0593Jr jr) {
        if (!A0q()) {
            if (EnumC0593Jr.A04.equals(jr)) {
                XJ xj = this.A0a;
                String[] strArr = A0k;
                if (strArr[7].length() != strArr[5].length()) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A0k;
                strArr2[7] = "er71GFUENUkH6mVEmd80tsw";
                strArr2[5] = "eRFgtOOg0hnVr16Te1PNaNs";
                xj.A0A().A2j(AdPlacementType.NATIVE_BANNER.toString(), this.A0e);
            } else {
                this.A0a.A0A().A2j(AdPlacementType.NATIVE.toString(), this.A0e);
            }
        }
        this.A0I = jr;
    }

    public final void A1Y(QD qd) {
        this.A0T = new WeakReference<>(qd);
    }

    public final void A1Z(boolean z) {
        this.A0U = z;
    }

    public final void A1a(boolean z) {
        this.A0V = z;
    }

    /* JADX INFO: Multiple debug info for r6v0 'this'  com.facebook.ads.redexgen.X.cD: [D('adapter' com.facebook.ads.redexgen.X.Rp), D('error' com.facebook.ads.redexgen.X.Jl)] */
    /* JADX WARNING: Code restructure failed: missing block: B:18:0x006b, code lost:
        if (r3 != null) goto L_0x006d;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:29:0x00e4, code lost:
        if (r3 != null) goto L_0x006d;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:30:0x00e7, code lost:
        r2 = A0T(0, 0, 21);
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void A1b(boolean r7, boolean r8) {
        /*
        // Method dump skipped, instructions count: 246
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C1143cD.A1b(boolean, boolean):void");
    }

    public final boolean A1c() {
        return this.A06 == null;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0584Jg
    public final int A66() {
        View view = this.A05;
        if (!(view instanceof AdNativeComponentView)) {
            return -1;
        }
        View videoView = ((AdNativeComponentView) view).getAdContentsView();
        if (videoView instanceof PM) {
            return ((PM) videoView).getCurrentPosition();
        }
        return -1;
    }

    @Override // com.facebook.ads.internal.api.NativeAdBaseApi
    public final NativeAdBase.NativeAdLoadConfigBuilder buildLoadAdConfig(NativeAdBase nativeAdBase) {
        return new C0582Je(this, nativeAdBase);
    }

    @Override // com.facebook.ads.Ad, com.facebook.ads.internal.api.NativeAdBaseApi
    public final void destroy() {
        C0601Jz.A05(A0T(594, 7, 89), A0T(357, 19, 89), A0T(0, 8, 0));
        if (!A0q()) {
            this.A0a.A0A().A2k();
        }
        F4 f4 = this.A09;
        if (f4 != null) {
            f4.A0W(true);
            this.A09 = null;
        }
    }

    @Override // com.facebook.ads.internal.api.NativeAdBaseApi
    public final void downloadMedia() {
        if (this.A0D.equals(JS.A05)) {
            this.A07 = EnumC01470z.A04;
        }
        this.A0D = JS.A04;
        A0f(this.A0Y, false);
    }

    @Override // com.facebook.ads.internal.api.NativeAdBaseApi
    @Nullable
    public final String getAdBodyText() {
        if (isAdLoaded()) {
            return this.A0Y.A0Q();
        }
        String[] strArr = A0k;
        if (strArr[0].charAt(5) != strArr[2].charAt(5)) {
            String[] strArr2 = A0k;
            strArr2[0] = "hTgZwGr1QjZPArcNv2XISvdh6HkvBsNu";
            strArr2[2] = "WdfIathAKVLlC1caO5TsuRke00xxoQup";
            return null;
        }
        throw new RuntimeException();
    }

    @Override // com.facebook.ads.internal.api.NativeAdBaseApi
    @Nullable
    public final String getAdCallToAction() {
        return A1G(A0T(580, 14, 115));
    }

    @Override // com.facebook.ads.internal.api.NativeAdBaseApi
    @Nullable
    public final String getAdChoicesImageUrl() {
        if (getAdChoicesIcon() == null) {
            return null;
        }
        JY A0K2 = getAdChoicesIcon();
        String[] strArr = A0k;
        if (strArr[0].charAt(5) != strArr[2].charAt(5)) {
            String[] strArr2 = A0k;
            strArr2[7] = "MRTmAh7YnfwjJHGdoro5GGF";
            strArr2[5] = "5NAjexdbITBZf7E7VHPXfXw";
            return A0K2.getUrl();
        }
        throw new RuntimeException();
    }

    @Override // com.facebook.ads.internal.api.NativeAdBaseApi
    @Nullable
    public final String getAdChoicesLinkUrl() {
        if (!isAdLoaded()) {
            return null;
        }
        return this.A0Y.A0R();
    }

    @Override // com.facebook.ads.internal.api.NativeAdBaseApi
    @Nullable
    public final String getAdChoicesText() {
        if (!isAdLoaded()) {
            return null;
        }
        return this.A0Y.A0S();
    }

    @Override // com.facebook.ads.internal.api.NativeAdBaseApi
    @Nullable
    public final String getAdHeadline() {
        return A1G(A0T(601, 8, 49));
    }

    @Override // com.facebook.ads.internal.api.NativeAdBaseApi
    @Nullable
    public final String getAdLinkDescription() {
        return A1G(A0T(609, 16, 45));
    }

    @Override // com.facebook.ads.internal.api.NativeAdBaseApi
    @Nullable
    public final String getAdSocialContext() {
        return A1G(A0T(720, 14, 78));
    }

    @Override // com.facebook.ads.internal.api.NativeAdBaseApi
    @Nullable
    public final String getAdTranslation() {
        return A1G(A0T(544, 14, 15));
    }

    @Override // com.facebook.ads.internal.api.NativeAdBaseApi
    @Nullable
    public final String getAdUntrimmedBodyText() {
        return A1G(A0T(576, 4, 14));
    }

    @Override // com.facebook.ads.internal.api.NativeAdBaseApi
    @Nullable
    public final String getAdvertiserName() {
        return A1G(A0T(558, 15, 3));
    }

    @Override // com.facebook.ads.internal.api.NativeAdBaseApi
    public final float getAspectRatio() {
        C0794Rp rp = this.A0Y;
        if (rp == null) {
            return 0.0f;
        }
        JY A0L2 = rp.A0L();
        int width = A0L2.getWidth();
        String[] strArr = A0k;
        if (strArr[7].length() != strArr[5].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0k;
        strArr2[1] = "Gk0JtmCCXYpL8dPDyrRdSPBqQO7pSw2M";
        strArr2[3] = "hZFl2ZrFl9W40ZKmdwMt57qcTxbjzHrP";
        int height = A0L2.getHeight();
        if (height > 0) {
            return ((float) width) / ((float) height);
        }
        return 0.0f;
    }

    @Override // com.facebook.ads.internal.api.NativeAdBaseApi
    @Nullable
    public final String getId() {
        if (!isAdLoaded()) {
            return null;
        }
        String str = this.A0f;
        String[] strArr = A0k;
        if (strArr[4].length() != strArr[6].length()) {
            String[] strArr2 = A0k;
            strArr2[7] = "iawtn5ImZtHDfKUJHK1ePg9";
            strArr2[5] = "61vZsTsWUXSHOR043CjOsZn";
            return str;
        }
        throw new RuntimeException();
    }

    @Override // com.facebook.ads.Ad, com.facebook.ads.internal.api.NativeAdBaseApi
    public final String getPlacementId() {
        return this.A0e;
    }

    @Override // com.facebook.ads.internal.api.NativeAdBaseApi
    @Nullable
    public final Drawable getPreloadedIconViewDrawable() {
        JY adIcon;
        Bitmap A0I2;
        C0794Rp rp = this.A0Y;
        if (rp == null || (adIcon = rp.A0M()) == null || (A0I2 = this.A0Z.A0I(adIcon.getUrl())) == null) {
            return null;
        }
        XJ A11 = A11();
        boolean A1c = A1c();
        String[] strArr = A0k;
        if (strArr[0].charAt(5) != strArr[2].charAt(5)) {
            String[] strArr2 = A0k;
            strArr2[4] = "5rXv1LFjMRKkpcU7";
            strArr2[6] = "SFgDKFOuseBk";
            return A05(A11, A0I2, A1c, A1B());
        }
        throw new RuntimeException();
    }

    @Override // com.facebook.ads.internal.api.NativeAdBaseApi
    @Nullable
    public final String getPromotedTranslation() {
        return A1G(A0T(700, 20, 14));
    }

    @Override // com.facebook.ads.internal.api.NativeAdBaseApi
    @Nullable
    public final String getSponsoredTranslation() {
        return A1G(A0T(734, 21, 60));
    }

    @Override // com.facebook.ads.internal.api.NativeAdBaseApi
    public final boolean hasCallToAction() {
        C0794Rp rp = this.A0Y;
        return rp != null && rp.A0h();
    }

    @Override // com.facebook.ads.Ad, com.facebook.ads.internal.api.NativeAdBaseApi
    public final boolean isAdInvalidated() {
        boolean z = true;
        F4 f4 = this.A09;
        if (f4 != null) {
            z = f4.A0X();
        } else {
            SP sp = this.A0A;
            String[] strArr = A0k;
            if (strArr[1].charAt(16) != strArr[3].charAt(16)) {
                String[] strArr2 = A0k;
                strArr2[7] = "v5uFzvuQ32LyebguaenlI2Y";
                strArr2[5] = "nsJGpwd0QPZOfVeZMyNRGWR";
                if (sp != null) {
                    z = sp.A0B();
                }
            } else {
                throw new RuntimeException();
            }
        }
        this.A0a.A0A().A4Y(z);
        return z;
    }

    @Override // com.facebook.ads.internal.api.NativeAdBaseApi
    public final boolean isAdLoaded() {
        C0794Rp rp = this.A0Y;
        return rp != null && rp.A0i();
    }

    @Override // com.facebook.ads.Ad, com.facebook.ads.internal.api.NativeAdBaseApi
    public final void loadAd() {
        C0601Jz.A05(A0T(625, 6, 112), A0T(376, 24, 23), A0T(15, 8, 89));
        A1U(JS.A00(NativeAdBase.MediaCacheFlag.ALL), null, new AnonymousClass7I(false, -1, -1));
    }

    @Override // com.facebook.ads.internal.api.NativeAdBaseApi
    public final void loadAd(NativeAdBase.NativeLoadAdConfig nativeLoadAdConfig) {
        C0601Jz.A05(A0T(625, 6, 112), A0T(376, 24, 23), A0T(8, 7, 76));
        ((C0582Je) nativeLoadAdConfig).A00();
    }

    @Override // com.facebook.ads.internal.api.NativeAdBaseApi
    public final void onCtaBroadcast() {
        this.A04.performClick();
    }

    @Override // com.facebook.ads.internal.api.Repairable
    public final void repair(Throwable th) {
        View view = this.A03;
        if (view != null) {
            view.post(new C1134c3(this));
        }
        String str = A0T(158, 16, 50) + LQ.A03(this.A0a, th);
        A11().A0A().A2d(LZ.A01(this.A00), AdError.INTERNAL_ERROR_CODE, str);
        AbstractC1144cE cEVar = this.A0F;
        if (cEVar != null) {
            cEVar.AA7(new C0588Jl((int) AdError.INTERNAL_ERROR_CODE, str));
        }
    }

    @Override // com.facebook.ads.Ad, com.facebook.ads.internal.api.NativeAdBaseApi
    public final void setExtraHints(ExtraHints extraHints) {
        if (extraHints != null) {
            A0n(extraHints.getHints());
            this.A0R = extraHints.getMediationData();
        }
    }

    @Override // com.facebook.ads.internal.api.NativeAdBaseApi
    public final void setOnTouchListener(View.OnTouchListener onTouchListener) {
        this.A02 = onTouchListener;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:18:0x0072, code lost:
        if (r5.containsKey(r4) != false) goto L_0x0074;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:45:0x0100, code lost:
        if (r5.containsKey(r4) != false) goto L_0x0074;
     */
    @Override // com.facebook.ads.internal.api.NativeAdBaseApi
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void unregisterView() {
        /*
        // Method dump skipped, instructions count: 282
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C1143cD.unregisterView():void");
    }
}
