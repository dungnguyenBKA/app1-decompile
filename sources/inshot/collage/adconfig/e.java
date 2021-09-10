package inshot.collage.adconfig;

import android.content.Context;
import androidx.core.app.b;
import com.google.ads.ADRequestList;
import com.vungle.warren.model.AdvertisementDBAdapter;
import com.vungle.warren.omsdk.BuildConfig;
import com.zjsoft.zjad.a;
import photoeditor.cutout.backgrounderaser.R;

public final class e {
    private static c a = new c();

    public static final ADRequestList a(Context context, ADRequestList aDRequestList) {
        gg0.e(context, "context");
        gg0.e(aDRequestList, "requestList");
        id0 a2 = a.a();
        boolean f = a.f();
        jb0 jb0 = new jb0("");
        jb0.b().putInt("layout_id", R.layout.dh);
        aDRequestList.add(new lb0(a.a, ADRequestList.ORDER_NULL, jb0));
        if (d.a(context, "Admob")) {
            String b = b(context, a2.c());
            if (b.length() > 0) {
                String str = com.zjsoft.admob.a.b;
                if (f) {
                    b = "ca-app-pub-3940256099942544/2247696110";
                }
                jb0 jb02 = new jb0(b);
                jb02.b().putInt("layout_id", R.layout.dh);
                aDRequestList.add(new lb0(str, ADRequestList.ORDER_H, jb02));
            }
            String b2 = b(context, a2.a());
            String str2 = "ca-app-pub-3940256099942544/6300978111";
            if (b2.length() > 0) {
                String str3 = com.zjsoft.admob.a.a;
                if (f) {
                    b2 = str2;
                }
                aDRequestList.add(new lb0(str3, ADRequestList.ORDER_H, new jb0(b2)));
            }
            String b3 = b(context, a2.b());
            if (b3.length() > 0) {
                String str4 = com.zjsoft.admob.a.a;
                if (f) {
                    b3 = str2;
                }
                aDRequestList.add(new lb0(str4, ADRequestList.ORDER_M, new jb0(b3)));
            }
            String b4 = b(context, a2.d());
            if (b4.length() > 0) {
                String str5 = com.zjsoft.admob.a.a;
                if (!f) {
                    str2 = b4;
                }
                aDRequestList.add(new lb0(str5, ADRequestList.ORDER_R, new jb0(str2)));
            }
        }
        if (d.a(context, "Fan")) {
            String b5 = b(context, a2.f());
            if (b5.length() > 0) {
                String str6 = com.zjsoft.fan.a.b;
                if (f) {
                    b5 = kc0.c(b5);
                }
                jb0 jb03 = new jb0(b5);
                jb03.b().putInt("layout_id", R.layout.di);
                aDRequestList.add(new lb0(str6, ADRequestList.ORDER_H, jb03));
            }
            String b6 = b(context, a2.e());
            if (b6.length() > 0) {
                String str7 = com.zjsoft.fan.a.a;
                if (f) {
                    b6 = kc0.a(b6);
                }
                aDRequestList.add(new lb0(str7, ADRequestList.ORDER_H, new jb0(b6)));
            }
            String b7 = b(context, a2.g());
            if (b7.length() > 0) {
                String str8 = com.zjsoft.fan.a.a;
                if (f) {
                    b7 = kc0.a(b7);
                }
                aDRequestList.add(new lb0(str8, ADRequestList.ORDER_R, new jb0(b7)));
            }
        }
        if (d.a(context, BuildConfig.PARTNER_NAME)) {
            lc0 lc0 = new lc0(b(context, a2.h()), b(context, a2.Q()));
            String a3 = lc0.a();
            gg0.d(a3, "vungleId.appId");
            if (a3.length() > 0) {
                String b8 = lc0.b();
                gg0.d(b8, "vungleId.id");
                if (b8.length() > 0) {
                    String str9 = ad0.a;
                    jb0 jb04 = new jb0(lc0.b());
                    jb04.b().putString(AdvertisementDBAdapter.AdvertisementColumns.COLUMN_APP_ID, lc0.a());
                    aDRequestList.add(new lb0(str9, ADRequestList.ORDER_NULL, jb04));
                }
            }
        }
        a.b(context, aDRequestList);
        return aDRequestList;
    }

    private static final String b(Context context, gd0 gd0) {
        if (gd0 == null) {
            return "";
        }
        if (a.f()) {
            return gd0.a();
        }
        String j = cc0.j(context, gd0.b(), gd0.a());
        gg0.d(j, "ServerData.getCommonRemo…ntext, adId.key, adId.id)");
        return j;
    }

    public static final ADRequestList c(Context context, ADRequestList aDRequestList, j jVar) {
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        gg0.e(context, "context");
        gg0.e(aDRequestList, "requestList");
        gg0.e(jVar, "type");
        id0 a2 = a.a();
        boolean f = a.f();
        int ordinal = jVar.ordinal();
        if (ordinal == 0) {
            if (d.a(context, "Admob")) {
                String b = b(context, a2.y());
                if (b.length() > 0) {
                    String str6 = com.zjsoft.admob.a.d;
                    String str7 = b;
                    if (f) {
                        str7 = b.L();
                    }
                    str = ADRequestList.ORDER_NULL;
                    aDRequestList.add(new lb0(str6, ADRequestList.ORDER_H, new jb0(str7)));
                } else {
                    str = ADRequestList.ORDER_NULL;
                }
                String b2 = b(context, a2.z());
                if (b2.length() > 0) {
                    String str8 = com.zjsoft.admob.a.d;
                    if (f) {
                        b2 = b.L();
                    }
                    aDRequestList.add(new lb0(str8, ADRequestList.ORDER_M, new jb0(b2)));
                }
                String b3 = b(context, a2.A());
                if (b3.length() > 0) {
                    String str9 = com.zjsoft.admob.a.d;
                    if (f) {
                        b3 = b.L();
                    }
                    aDRequestList.add(new lb0(str9, ADRequestList.ORDER_R, new jb0(b3)));
                }
            } else {
                str = ADRequestList.ORDER_NULL;
            }
            if (d.a(context, "Fan")) {
                String b4 = b(context, a2.B());
                if (b4.length() > 0) {
                    String str10 = com.zjsoft.fan.a.d;
                    if (f) {
                        b4 = kc0.b(b4);
                    }
                    aDRequestList.add(new lb0(str10, ADRequestList.ORDER_H, new jb0(b4)));
                }
                String b5 = b(context, a2.C());
                if (b5.length() > 0) {
                    String str11 = com.zjsoft.fan.a.d;
                    if (f) {
                        b5 = kc0.b(b5);
                    }
                    aDRequestList.add(new lb0(str11, ADRequestList.ORDER_R, new jb0(b5)));
                }
            }
            if (d.a(context, BuildConfig.PARTNER_NAME)) {
                lc0 lc0 = new lc0(b(context, a2.D()), b(context, a2.Q()));
                String a3 = lc0.a();
                gg0.d(a3, "vungleId.appId");
                if (a3.length() > 0) {
                    String b6 = lc0.b();
                    gg0.d(b6, "vungleId.id");
                    if (b6.length() > 0) {
                        String str12 = ad0.b;
                        jb0 jb0 = new jb0(lc0.b());
                        jb0.b().putString(AdvertisementDBAdapter.AdvertisementColumns.COLUMN_APP_ID, lc0.a());
                        aDRequestList.add(new lb0(str12, str, jb0));
                    }
                }
            }
        } else if (ordinal == 1) {
            if (d.a(context, "Admob")) {
                String b7 = b(context, a2.s());
                if (b7.length() > 0) {
                    String str13 = com.zjsoft.admob.a.d;
                    String str14 = b7;
                    if (f) {
                        str14 = b.L();
                    }
                    str2 = ADRequestList.ORDER_NULL;
                    aDRequestList.add(new lb0(str13, ADRequestList.ORDER_H, new jb0(str14)));
                } else {
                    str2 = ADRequestList.ORDER_NULL;
                }
                String b8 = b(context, a2.t());
                if (b8.length() > 0) {
                    String str15 = com.zjsoft.admob.a.d;
                    if (f) {
                        b8 = b.L();
                    }
                    aDRequestList.add(new lb0(str15, ADRequestList.ORDER_M, new jb0(b8)));
                }
                String b9 = b(context, a2.u());
                if (b9.length() > 0) {
                    String str16 = com.zjsoft.admob.a.d;
                    if (f) {
                        b9 = b.L();
                    }
                    aDRequestList.add(new lb0(str16, ADRequestList.ORDER_R, new jb0(b9)));
                }
            } else {
                str2 = ADRequestList.ORDER_NULL;
            }
            if (d.a(context, "Fan")) {
                String b10 = b(context, a2.v());
                if (b10.length() > 0) {
                    String str17 = com.zjsoft.fan.a.d;
                    if (f) {
                        b10 = kc0.b(b10);
                    }
                    aDRequestList.add(new lb0(str17, ADRequestList.ORDER_H, new jb0(b10)));
                }
                String b11 = b(context, a2.w());
                if (b11.length() > 0) {
                    String str18 = com.zjsoft.fan.a.d;
                    if (f) {
                        b11 = kc0.b(b11);
                    }
                    aDRequestList.add(new lb0(str18, ADRequestList.ORDER_R, new jb0(b11)));
                }
            }
            if (d.a(context, BuildConfig.PARTNER_NAME)) {
                lc0 lc02 = new lc0(b(context, a2.x()), b(context, a2.Q()));
                String a4 = lc02.a();
                gg0.d(a4, "vungleId.appId");
                if (a4.length() > 0) {
                    String b12 = lc02.b();
                    gg0.d(b12, "vungleId.id");
                    if (b12.length() > 0) {
                        String str19 = ad0.b;
                        jb0 jb02 = new jb0(lc02.b());
                        jb02.b().putString(AdvertisementDBAdapter.AdvertisementColumns.COLUMN_APP_ID, lc02.a());
                        aDRequestList.add(new lb0(str19, str2, jb02));
                    }
                }
            }
        } else if (ordinal == 3) {
            if (d.a(context, "Admob")) {
                String b13 = b(context, a2.K());
                if (b13.length() > 0) {
                    String str20 = com.zjsoft.admob.a.d;
                    String str21 = b13;
                    if (f) {
                        str21 = b.L();
                    }
                    str3 = ADRequestList.ORDER_NULL;
                    aDRequestList.add(new lb0(str20, ADRequestList.ORDER_H, new jb0(str21)));
                } else {
                    str3 = ADRequestList.ORDER_NULL;
                }
                String b14 = b(context, a2.L());
                if (b14.length() > 0) {
                    String str22 = com.zjsoft.admob.a.d;
                    if (f) {
                        b14 = b.L();
                    }
                    aDRequestList.add(new lb0(str22, ADRequestList.ORDER_M, new jb0(b14)));
                }
                String b15 = b(context, a2.M());
                if (b15.length() > 0) {
                    String str23 = com.zjsoft.admob.a.d;
                    if (f) {
                        b15 = b.L();
                    }
                    aDRequestList.add(new lb0(str23, ADRequestList.ORDER_R, new jb0(b15)));
                }
            } else {
                str3 = ADRequestList.ORDER_NULL;
            }
            if (d.a(context, "Fan")) {
                String b16 = b(context, a2.N());
                if (b16.length() > 0) {
                    String str24 = com.zjsoft.fan.a.d;
                    if (f) {
                        b16 = kc0.b(b16);
                    }
                    aDRequestList.add(new lb0(str24, ADRequestList.ORDER_H, new jb0(b16)));
                }
                String b17 = b(context, a2.O());
                if (b17.length() > 0) {
                    String str25 = com.zjsoft.fan.a.d;
                    if (f) {
                        b17 = kc0.b(b17);
                    }
                    aDRequestList.add(new lb0(str25, ADRequestList.ORDER_R, new jb0(b17)));
                }
            }
            if (d.a(context, BuildConfig.PARTNER_NAME)) {
                lc0 lc03 = new lc0(b(context, a2.P()), b(context, a2.Q()));
                String a5 = lc03.a();
                gg0.d(a5, "vungleId.appId");
                if (a5.length() > 0) {
                    String b18 = lc03.b();
                    gg0.d(b18, "vungleId.id");
                    if (b18.length() > 0) {
                        String str26 = ad0.b;
                        jb0 jb03 = new jb0(lc03.b());
                        jb03.b().putString(AdvertisementDBAdapter.AdvertisementColumns.COLUMN_APP_ID, lc03.a());
                        aDRequestList.add(new lb0(str26, str3, jb03));
                    }
                }
            }
        } else if (ordinal == 4) {
            if (d.a(context, "Admob")) {
                boolean g = cc0.g(context, "AD_SplashSkipInit", true);
                String b19 = b(context, a2.E());
                String str27 = b19;
                if (b19.length() > 0) {
                    String str28 = com.zjsoft.admob.a.d;
                    str5 = ADRequestList.ORDER_NULL;
                    if (f) {
                        str27 = b.L();
                    }
                    str4 = AdvertisementDBAdapter.AdvertisementColumns.COLUMN_APP_ID;
                    jb0 jb04 = new jb0(str27);
                    jb04.b().putBoolean("skip_init", g);
                    aDRequestList.add(new lb0(str28, ADRequestList.ORDER_H, jb04));
                } else {
                    str4 = AdvertisementDBAdapter.AdvertisementColumns.COLUMN_APP_ID;
                    str5 = ADRequestList.ORDER_NULL;
                }
                String b20 = b(context, a2.F());
                if (b20.length() > 0) {
                    String str29 = com.zjsoft.admob.a.d;
                    if (f) {
                        b20 = b.L();
                    }
                    jb0 jb05 = new jb0(b20);
                    jb05.b().putBoolean("skip_init", g);
                    aDRequestList.add(new lb0(str29, ADRequestList.ORDER_M, jb05));
                }
                String b21 = b(context, a2.G());
                if (b21.length() > 0) {
                    String str30 = com.zjsoft.admob.a.d;
                    if (f) {
                        b21 = b.L();
                    }
                    jb0 jb06 = new jb0(b21);
                    jb06.b().putBoolean("skip_init", g);
                    aDRequestList.add(new lb0(str30, ADRequestList.ORDER_R, jb06));
                }
            } else {
                str4 = AdvertisementDBAdapter.AdvertisementColumns.COLUMN_APP_ID;
                str5 = ADRequestList.ORDER_NULL;
            }
            if (d.a(context, "Fan")) {
                String b22 = b(context, a2.H());
                if (b22.length() > 0) {
                    String str31 = com.zjsoft.fan.a.d;
                    if (f) {
                        b22 = kc0.b(b22);
                    }
                    aDRequestList.add(new lb0(str31, ADRequestList.ORDER_H, new jb0(b22)));
                }
                String b23 = b(context, a2.I());
                if (b23.length() > 0) {
                    String str32 = com.zjsoft.fan.a.d;
                    if (f) {
                        b23 = kc0.b(b23);
                    }
                    aDRequestList.add(new lb0(str32, ADRequestList.ORDER_R, new jb0(b23)));
                }
            }
            if (d.a(context, BuildConfig.PARTNER_NAME)) {
                lc0 lc04 = new lc0(b(context, a2.J()), b(context, a2.Q()));
                String a6 = lc04.a();
                gg0.d(a6, "vungleId.appId");
                if (a6.length() > 0) {
                    String b24 = lc04.b();
                    gg0.d(b24, "vungleId.id");
                    if (b24.length() > 0) {
                        String str33 = ad0.b;
                        jb0 jb07 = new jb0(lc04.b());
                        jb07.b().putString(str4, lc04.a());
                        aDRequestList.add(new lb0(str33, str5, jb07));
                    }
                }
            }
        }
        a.c(context, aDRequestList, jVar);
        return aDRequestList;
    }

    public static final ADRequestList d(Context context, ADRequestList aDRequestList, i iVar) {
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        gg0.e(context, "context");
        gg0.e(aDRequestList, "requestList");
        gg0.e(iVar, "type");
        id0 a2 = a.a();
        float c = ((float) p.c(context)) * 0.9f;
        boolean f = a.f();
        int ordinal = iVar.ordinal();
        if (ordinal == 0) {
            if (d.a(context, "Admob")) {
                boolean g = cc0.g(context, "AD_HomeCardSkipInit", false);
                String b = b(context, a2.i());
                String str7 = b;
                if (b.length() > 0) {
                    String str8 = com.zjsoft.admob.a.c;
                    str2 = "no_click_area";
                    if (f) {
                        str7 = b.N();
                    }
                    str = "ResultCard";
                    jb0 jb0 = new jb0(str7);
                    str6 = "Fan";
                    jb0.b().putInt("layout_id", R.layout.dj);
                    jb0.b().putFloat("cover_width", c);
                    jb0.b().putBoolean("skip_init", g);
                    aDRequestList.add(new lb0(str8, ADRequestList.ORDER_H, jb0));
                } else {
                    str6 = "Fan";
                    str = "ResultCard";
                    str2 = "no_click_area";
                }
                String b2 = b(context, a2.j());
                if (b2.length() > 0) {
                    String str9 = com.zjsoft.admob.a.c;
                    if (f) {
                        b2 = b.N();
                    }
                    jb0 jb02 = new jb0(b2);
                    jb02.b().putInt("layout_id", R.layout.dj);
                    jb02.b().putFloat("cover_width", c);
                    jb02.b().putBoolean("skip_init", g);
                    aDRequestList.add(new lb0(str9, ADRequestList.ORDER_M, jb02));
                }
                String b3 = b(context, a2.k());
                if (b3.length() > 0) {
                    String str10 = com.zjsoft.admob.a.c;
                    if (f) {
                        b3 = b.N();
                    }
                    jb0 jb03 = new jb0(b3);
                    jb03.b().putInt("layout_id", R.layout.dj);
                    jb03.b().putFloat("cover_width", c);
                    jb03.b().putBoolean("skip_init", g);
                    aDRequestList.add(new lb0(str10, ADRequestList.ORDER_R, jb03));
                }
                str3 = str6;
            } else {
                str = "ResultCard";
                str2 = "no_click_area";
                str3 = "Fan";
            }
            if (d.a(context, str3)) {
                String b4 = b(context, a2.l());
                if (b4.length() > 0) {
                    String str11 = com.zjsoft.fan.a.c;
                    if (f) {
                        b4 = kc0.d(b4);
                    }
                    jb0 jb04 = new jb0(b4);
                    jb04.b().putFloat("cover_width", c);
                    str5 = str;
                    str4 = str2;
                    jb04.b().putString(str4, cc0.n(context, str5));
                    jb04.b().putInt("layout_id", R.layout.dk);
                    aDRequestList.add(new lb0(str11, ADRequestList.ORDER_H, jb04));
                } else {
                    str4 = str2;
                    str5 = str;
                }
                String b5 = b(context, a2.m());
                if (b5.length() > 0) {
                    String str12 = com.zjsoft.fan.a.c;
                    if (f) {
                        b5 = kc0.d(b5);
                    }
                    jb0 jb05 = new jb0(b5);
                    jb05.b().putFloat("cover_width", c);
                    jb05.b().putString(str4, cc0.n(context, str5));
                    jb05.b().putInt("layout_id", R.layout.dk);
                    aDRequestList.add(new lb0(str12, ADRequestList.ORDER_R, jb05));
                }
            }
        } else if (ordinal == 1) {
            if (d.a(context, "Admob")) {
                String b6 = b(context, a2.n());
                if (b6.length() > 0) {
                    String str13 = com.zjsoft.admob.a.c;
                    String str14 = b6;
                    if (f) {
                        str14 = b.N();
                    }
                    aDRequestList.add(new lb0(str13, ADRequestList.ORDER_H, new jb0(str14)));
                }
                String b7 = b(context, a2.o());
                if (b7.length() > 0) {
                    String str15 = com.zjsoft.admob.a.c;
                    if (f) {
                        b7 = b.N();
                    }
                    aDRequestList.add(new lb0(str15, ADRequestList.ORDER_M, new jb0(b7)));
                }
                String b8 = b(context, a2.p());
                if (b8.length() > 0) {
                    String str16 = com.zjsoft.admob.a.c;
                    if (f) {
                        b8 = b.N();
                    }
                    aDRequestList.add(new lb0(str16, ADRequestList.ORDER_R, new jb0(b8)));
                }
            }
            if (d.a(context, "Fan")) {
                String b9 = b(context, a2.q());
                if (b9.length() > 0) {
                    String str17 = com.zjsoft.fan.a.c;
                    if (f) {
                        b9 = kc0.d(b9);
                    }
                    jb0 jb06 = new jb0(b9);
                    jb06.b().putFloat("cover_width", c);
                    jb06.b().putString("no_click_area", cc0.n(context, "ResultCard"));
                    aDRequestList.add(new lb0(str17, ADRequestList.ORDER_H, jb06));
                }
                String b10 = b(context, a2.r());
                if (b10.length() > 0) {
                    String str18 = com.zjsoft.fan.a.c;
                    if (f) {
                        b10 = kc0.d(b10);
                    }
                    jb0 jb07 = new jb0(b10);
                    jb07.b().putFloat("cover_width", c);
                    jb07.b().putString("no_click_area", cc0.n(context, "ResultCard"));
                    aDRequestList.add(new lb0(str18, ADRequestList.ORDER_R, jb07));
                }
            }
        } else if (ordinal == 2) {
            aDRequestList.add(new lb0(a.b, ADRequestList.ORDER_NULL, new jb0("")));
            return aDRequestList;
        }
        a.d(context, aDRequestList, iVar);
        return aDRequestList;
    }
}
