package com.google.android.gms.internal.ads;

import android.util.JsonReader;
import com.google.ads.AdSize;
import com.google.ads.mediation.facebook.FacebookAdapter;
import com.google.android.gms.ads.internal.util.zzbh;
import com.google.android.gms.ads.nonagon.transaction.omid.OmidSettings;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import com.vungle.warren.error.VungleException;
import com.vungle.warren.model.AdvertisementDBAdapter;
import java.util.Collections;
import java.util.List;
import org.apache.http.util.LangUtils;
import org.json.JSONObject;

public final class zzdmw {
    public final String id;
    public final boolean zzbpm;
    public final String zzcht;
    public final String zzdlu;
    public final String zzdmf;
    public final String zzdmg;
    public final List<String> zzdmp;
    public final List<String> zzdmq;
    public final String zzdmv;
    public final boolean zzdnc;
    public final boolean zzdnd;
    public final boolean zzdne;
    public final String zzdoq;
    public final List<String> zzdwa;
    public final String zzdwd;
    public final String zzdwg;
    public final zzavj zzdwm;
    public final List<String> zzdwn;
    public final List<String> zzdwo;
    public final boolean zzdww;
    public final boolean zzdwz;
    public final boolean zzdxa;
    public final boolean zzdxt;
    public final String zzeuo;
    public final int zzfto;
    public final boolean zzftp;
    public final boolean zzftq;
    public final String zzfzc;
    public final List<String> zzhix;
    public final int zzhiy;
    public final int zzhiz;
    public final List<String> zzhja;
    public final List<String> zzhjb;
    public final List<String> zzhjc;
    public final List<String> zzhjd;
    public final int zzhje;
    public final List<zzdmz> zzhjf;
    public final zzdnd zzhjg;
    public final List<String> zzhjh;
    public final List<zzdmz> zzhji;
    public final JSONObject zzhjj;
    public final zzawu zzhjk;
    public final JSONObject zzhjl;
    public final JSONObject zzhjm;
    public final String zzhjn;
    public final boolean zzhjo;
    public final int zzhjp;
    public final int zzhjq;
    public final OmidSettings zzhjr;
    public final int zzhjs;
    public final boolean zzhjt;
    public final zzarx zzhju;
    public final zzvu zzhjv;
    public final String zzhjw;
    public final boolean zzhjx;
    public final JSONObject zzhjy;
    public final boolean zzhjz;
    public final JSONObject zzhka;

    zzdmw(JsonReader jsonReader) {
        String str;
        List<zzdmz> list;
        char c;
        List<String> list2;
        List<String> emptyList = Collections.emptyList();
        List<String> emptyList2 = Collections.emptyList();
        List<String> emptyList3 = Collections.emptyList();
        List<String> emptyList4 = Collections.emptyList();
        List<String> emptyList5 = Collections.emptyList();
        Collections.emptyList();
        List<String> emptyList6 = Collections.emptyList();
        List<String> emptyList7 = Collections.emptyList();
        List<String> emptyList8 = Collections.emptyList();
        List<String> emptyList9 = Collections.emptyList();
        List<String> emptyList10 = Collections.emptyList();
        List<zzdmz> emptyList11 = Collections.emptyList();
        List<String> emptyList12 = Collections.emptyList();
        List<zzdmz> emptyList13 = Collections.emptyList();
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        JSONObject jSONObject3 = new JSONObject();
        JSONObject jSONObject4 = new JSONObject();
        JSONObject jSONObject5 = new JSONObject();
        JSONObject jSONObject6 = new JSONObject();
        jsonReader.beginObject();
        String str2 = "";
        String str3 = str2;
        String str4 = str3;
        String str5 = str4;
        String str6 = str5;
        String str7 = str6;
        String str8 = str7;
        String str9 = str8;
        String str10 = str9;
        String str11 = str10;
        String str12 = str11;
        String str13 = str12;
        JSONObject jSONObject7 = jSONObject;
        JSONObject jSONObject8 = jSONObject2;
        JSONObject jSONObject9 = jSONObject3;
        JSONObject jSONObject10 = jSONObject4;
        JSONObject jSONObject11 = jSONObject5;
        JSONObject jSONObject12 = jSONObject6;
        zzavj zzavj = null;
        zzdnd zzdnd2 = null;
        zzawu zzawu = null;
        zzarx zzarx = null;
        zzvu zzvu = null;
        String str14 = null;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        boolean z4 = false;
        boolean z5 = false;
        boolean z6 = false;
        boolean z7 = false;
        int i4 = -1;
        int i5 = 0;
        boolean z8 = false;
        boolean z9 = false;
        boolean z10 = false;
        int i6 = 0;
        int i7 = -1;
        boolean z11 = false;
        boolean z12 = true;
        boolean z13 = false;
        boolean z14 = false;
        List<String> list3 = emptyList12;
        List<zzdmz> list4 = emptyList13;
        List<String> list5 = emptyList10;
        List<zzdmz> list6 = emptyList11;
        List<String> list7 = emptyList8;
        List<String> list8 = emptyList9;
        List<String> list9 = emptyList6;
        List<String> list10 = emptyList7;
        List<String> list11 = emptyList4;
        List<String> list12 = emptyList5;
        List<String> list13 = emptyList2;
        List<String> list14 = emptyList3;
        List<String> list15 = emptyList;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName == null) {
                str = "";
            } else {
                str = nextName;
            }
            switch (str.hashCode()) {
                case -1980587809:
                    list = list4;
                    if (str.equals("debug_signals")) {
                        c = 0;
                        break;
                    }
                    c = 65535;
                    break;
                case -1965512151:
                    list = list4;
                    if (str.equals("omid_settings")) {
                        c = 1;
                        break;
                    }
                    c = 65535;
                    break;
                case -1812055556:
                    list = list4;
                    if (str.equals("play_prewarm_options")) {
                        c = 2;
                        break;
                    }
                    c = 65535;
                    break;
                case -1662989631:
                    list = list4;
                    if (str.equals("is_interscroller")) {
                        c = 3;
                        break;
                    }
                    c = 65535;
                    break;
                case -1620470467:
                    list = list4;
                    if (str.equals("backend_query_id")) {
                        c = 4;
                        break;
                    }
                    c = 65535;
                    break;
                case -1440104884:
                    list = list4;
                    if (str.equals("is_custom_close_blocked")) {
                        c = 5;
                        break;
                    }
                    c = 65535;
                    break;
                case -1439500848:
                    list = list4;
                    if (str.equals("orientation")) {
                        c = 6;
                        break;
                    }
                    c = 65535;
                    break;
                case -1428969291:
                    list = list4;
                    if (str.equals("enable_omid")) {
                        c = 7;
                        break;
                    }
                    c = 65535;
                    break;
                case -1403779768:
                    list = list4;
                    if (str.equals("showable_impression_type")) {
                        c = '\b';
                        break;
                    }
                    c = 65535;
                    break;
                case -1375413093:
                    list = list4;
                    if (str.equals("ad_cover")) {
                        c = '\t';
                        break;
                    }
                    c = 65535;
                    break;
                case -1360811658:
                    list = list4;
                    if (str.equals("ad_sizes")) {
                        c = '\n';
                        break;
                    }
                    c = 65535;
                    break;
                case -1306015996:
                    list = list4;
                    if (str.equals("adapters")) {
                        c = 11;
                        break;
                    }
                    c = 65535;
                    break;
                case -1303332046:
                    list = list4;
                    if (str.equals("test_mode_enabled")) {
                        c = '\f';
                        break;
                    }
                    c = 65535;
                    break;
                case -1289032093:
                    list = list4;
                    if (str.equals("extras")) {
                        c = '\r';
                        break;
                    }
                    c = 65535;
                    break;
                case -1240082064:
                    list = list4;
                    if (str.equals("ad_event_value")) {
                        c = 14;
                        break;
                    }
                    c = 65535;
                    break;
                case -1234181075:
                    list = list4;
                    if (str.equals("allow_pub_rendered_attribution")) {
                        c = 15;
                        break;
                    }
                    c = 65535;
                    break;
                case -1168140544:
                    list = list4;
                    if (str.equals("presentation_error_urls")) {
                        c = 16;
                        break;
                    }
                    c = 65535;
                    break;
                case -1152230954:
                    list = list4;
                    if (str.equals("ad_type")) {
                        c = 17;
                        break;
                    }
                    c = 65535;
                    break;
                case -1146534047:
                    list = list4;
                    if (str.equals("is_scroll_aware")) {
                        c = 18;
                        break;
                    }
                    c = 65535;
                    break;
                case -1115838944:
                    list = list4;
                    if (str.equals("fill_urls")) {
                        c = 19;
                        break;
                    }
                    c = 65535;
                    break;
                case -1081936678:
                    list = list4;
                    if (str.equals("allocation_id")) {
                        c = 20;
                        break;
                    }
                    c = 65535;
                    break;
                case -1078050970:
                    list = list4;
                    if (str.equals("video_complete_urls")) {
                        c = 21;
                        break;
                    }
                    c = 65535;
                    break;
                case -1051269058:
                    list = list4;
                    if (str.equals("active_view")) {
                        c = 22;
                        break;
                    }
                    c = 65535;
                    break;
                case -982608540:
                    list = list4;
                    if (str.equals("valid_from_timestamp")) {
                        c = 23;
                        break;
                    }
                    c = 65535;
                    break;
                case -776859333:
                    list = list4;
                    if (str.equals(AdvertisementDBAdapter.AdvertisementColumns.COLUMN_CLICK_URLS)) {
                        c = 24;
                        break;
                    }
                    c = 65535;
                    break;
                case -544216775:
                    list = list4;
                    if (str.equals("safe_browsing")) {
                        c = 25;
                        break;
                    }
                    c = 65535;
                    break;
                case -437057161:
                    list = list4;
                    if (str.equals("imp_urls")) {
                        c = 26;
                        break;
                    }
                    c = 65535;
                    break;
                case -404433734:
                    list = list4;
                    if (str.equals("rtb_native_required_assets")) {
                        c = 27;
                        break;
                    }
                    c = 65535;
                    break;
                case -404326515:
                    list = list4;
                    if (str.equals("render_timeout_ms")) {
                        c = 28;
                        break;
                    }
                    c = 65535;
                    break;
                case -397704715:
                    list = list4;
                    if (str.equals("ad_close_time_ms")) {
                        c = 29;
                        break;
                    }
                    c = 65535;
                    break;
                case -388807511:
                    list = list4;
                    if (str.equals("content_url")) {
                        c = 30;
                        break;
                    }
                    c = 65535;
                    break;
                case -369773488:
                    list = list4;
                    if (str.equals("is_close_button_enabled")) {
                        c = 31;
                        break;
                    }
                    c = 65535;
                    break;
                case -213424028:
                    list = list4;
                    if (str.equals("watermark")) {
                        c = ' ';
                        break;
                    }
                    c = 65535;
                    break;
                case -154616268:
                    list = list4;
                    if (str.equals("is_offline_ad")) {
                        c = '!';
                        break;
                    }
                    c = 65535;
                    break;
                case -29338502:
                    list = list4;
                    if (str.equals("allow_custom_click_gesture")) {
                        c = '\"';
                        break;
                    }
                    c = 65535;
                    break;
                case 3107:
                    list = list4;
                    if (str.equals("ad")) {
                        c = '#';
                        break;
                    }
                    c = 65535;
                    break;
                case 3355:
                    list = list4;
                    if (str.equals(FacebookAdapter.KEY_ID)) {
                        c = '$';
                        break;
                    }
                    c = 65535;
                    break;
                case 3076010:
                    list = list4;
                    if (str.equals("data")) {
                        c = '%';
                        break;
                    }
                    c = 65535;
                    break;
                case 63195984:
                    list = list4;
                    if (str.equals("render_test_label")) {
                        c = '&';
                        break;
                    }
                    c = 65535;
                    break;
                case 107433883:
                    list = list4;
                    if (str.equals("qdata")) {
                        c = '\'';
                        break;
                    }
                    c = 65535;
                    break;
                case 230323073:
                    list = list4;
                    if (str.equals("ad_load_urls")) {
                        c = '(';
                        break;
                    }
                    c = 65535;
                    break;
                case 418392395:
                    list = list4;
                    if (str.equals("is_closable_area_disabled")) {
                        c = ')';
                        break;
                    }
                    c = 65535;
                    break;
                case 549176928:
                    list = list4;
                    if (str.equals("presentation_error_timeout_ms")) {
                        c = '*';
                        break;
                    }
                    c = 65535;
                    break;
                case 597473788:
                    list = list4;
                    if (str.equals("debug_dialog_string")) {
                        c = '+';
                        break;
                    }
                    c = 65535;
                    break;
                case 673261304:
                    list = list4;
                    if (str.equals("reward_granted_urls")) {
                        c = ',';
                        break;
                    }
                    c = 65535;
                    break;
                case 754887508:
                    list = list4;
                    if (str.equals("container_sizes")) {
                        c = '-';
                        break;
                    }
                    c = 65535;
                    break;
                case 791122864:
                    list = list4;
                    if (str.equals("impression_type")) {
                        c = '.';
                        break;
                    }
                    c = 65535;
                    break;
                case 1010584092:
                    list = list4;
                    if (str.equals("transaction_id")) {
                        c = '/';
                        break;
                    }
                    c = 65535;
                    break;
                case 1100650276:
                    list = list4;
                    if (str.equals("rewards")) {
                        c = '0';
                        break;
                    }
                    c = 65535;
                    break;
                case 1321720943:
                    list = list4;
                    if (str.equals("allow_pub_owned_ad_view")) {
                        c = '1';
                        break;
                    }
                    c = 65535;
                    break;
                case 1637553475:
                    list = list4;
                    if (str.equals("bid_response")) {
                        c = '2';
                        break;
                    }
                    c = 65535;
                    break;
                case 1638957285:
                    list = list4;
                    if (str.equals("video_start_urls")) {
                        c = '3';
                        break;
                    }
                    c = 65535;
                    break;
                case 1686319423:
                    list = list4;
                    if (str.equals("ad_network_class_name")) {
                        c = '4';
                        break;
                    }
                    c = 65535;
                    break;
                case 1688341040:
                    list = list4;
                    if (str.equals("video_reward_urls")) {
                        c = '5';
                        break;
                    }
                    c = 65535;
                    break;
                case 1799285870:
                    list = list4;
                    if (str.equals("use_third_party_container_height")) {
                        c = '6';
                        break;
                    }
                    c = 65535;
                    break;
                case 1839650832:
                    list = list4;
                    if (str.equals("renderers")) {
                        c = '7';
                        break;
                    }
                    c = 65535;
                    break;
                case 1875425491:
                    list = list4;
                    if (str.equals("is_analytics_logging_enabled")) {
                        c = '8';
                        break;
                    }
                    c = 65535;
                    break;
                case 2068142375:
                    list = list4;
                    if (str.equals("rule_line_external_id")) {
                        c = '9';
                        break;
                    }
                    c = 65535;
                    break;
                case 2072888499:
                    list = list4;
                    if (str.equals("manual_tracking_urls")) {
                        c = ':';
                        break;
                    }
                    c = 65535;
                    break;
                default:
                    list = list4;
                    c = 65535;
                    break;
            }
            switch (c) {
                case 0:
                    jSONObject8 = zzbh.zzc(jsonReader);
                    break;
                case 1:
                    jSONObject10 = zzbh.zzc(jsonReader);
                    break;
                case 2:
                    JSONObject zzc = zzbh.zzc(jsonReader);
                    if (zzc == null) {
                        list2 = list3;
                        zzarx = null;
                    } else {
                        list2 = list3;
                        zzarx = new zzarx(zzc.optBoolean("enable_prewarming", false), zzc.optString("prefetch_url", ""));
                    }
                    list3 = list2;
                    break;
                case 3:
                    z13 = jsonReader.nextBoolean();
                    break;
                case 4:
                    str11 = jsonReader.nextString();
                    break;
                case 5:
                    z6 = jsonReader.nextBoolean();
                    break;
                case 6:
                    String nextString = jsonReader.nextString();
                    if (!"landscape".equalsIgnoreCase(nextString)) {
                        if (!"portrait".equalsIgnoreCase(nextString)) {
                            i4 = -1;
                            break;
                        } else {
                            i4 = 7;
                            break;
                        }
                    } else {
                        i4 = 6;
                        break;
                    }
                case 7:
                    z8 = jsonReader.nextBoolean();
                    break;
                case '\b':
                    i6 = jsonReader.nextInt();
                    break;
                case '\t':
                    jSONObject11 = zzbh.zzc(jsonReader);
                    break;
                case '\n':
                    list4 = zzdmz.zze(jsonReader);
                    continue;
                case 11:
                    list3 = zzbh.zza(jsonReader);
                    break;
                case VungleException.NO_AUTO_CACHED_PLACEMENT /*{ENCODED_INT: 12}*/:
                    z5 = jsonReader.nextBoolean();
                    break;
                case '\r':
                    jSONObject9 = zzbh.zzc(jsonReader);
                    break;
                case VungleException.SERVER_RETRY_ERROR /*{ENCODED_INT: 14}*/:
                    zzvu = zzvu.zza(zzbh.zzc(jsonReader));
                    break;
                case VungleException.ALREADY_PLAYING_ANOTHER_AD /*{ENCODED_INT: 15}*/:
                    z = jsonReader.nextBoolean();
                    break;
                case VungleException.NO_SPACE_TO_INIT /*{ENCODED_INT: 16}*/:
                    list8 = zzbh.zza(jsonReader);
                    break;
                case 17:
                    String nextString2 = jsonReader.nextString();
                    if (!"banner".equals(nextString2)) {
                        if (!"interstitial".equals(nextString2)) {
                            if (!"native_express".equals(nextString2)) {
                                if (!"native".equals(nextString2)) {
                                    if (!"rewarded".equals(nextString2)) {
                                        if (!"app_open_ad".equals(nextString2)) {
                                            i = 0;
                                            break;
                                        } else {
                                            i = 6;
                                            break;
                                        }
                                    } else {
                                        i = 5;
                                        break;
                                    }
                                } else {
                                    i = 4;
                                    break;
                                }
                            } else {
                                i = 3;
                                break;
                            }
                        } else {
                            i = 2;
                            break;
                        }
                    } else {
                        i = 1;
                        break;
                    }
                case VungleException.NO_SPACE_TO_LOAD_AD_AUTO_CACHED /*{ENCODED_INT: 18}*/:
                    z10 = jsonReader.nextBoolean();
                    break;
                case VungleException.NO_SPACE_TO_DOWNLOAD_ASSETS /*{ENCODED_INT: 19}*/:
                    list7 = zzbh.zza(jsonReader);
                    break;
                case 20:
                    str4 = jsonReader.nextString();
                    break;
                case VungleException.SERVER_ERROR /*{ENCODED_INT: 21}*/:
                    list10 = zzbh.zza(jsonReader);
                    break;
                case VungleException.SERVER_TEMPORARY_UNAVAILABLE /*{ENCODED_INT: 22}*/:
                    str7 = zzbh.zzc(jsonReader).toString();
                    break;
                case VungleException.ASSET_DOWNLOAD_RECOVERABLE /*{ENCODED_INT: 23}*/:
                    str3 = jsonReader.nextString();
                    break;
                case VungleException.ASSET_DOWNLOAD_ERROR /*{ENCODED_INT: 24}*/:
                    list13 = zzbh.zza(jsonReader);
                    break;
                case VungleException.OPERATION_CANCELED /*{ENCODED_INT: 25}*/:
                    zzawu = zzawu.zzg(zzbh.zzc(jsonReader));
                    break;
                case VungleException.DB_ERROR /*{ENCODED_INT: 26}*/:
                    list14 = zzbh.zza(jsonReader);
                    break;
                case VungleException.RENDER_ERROR /*{ENCODED_INT: 27}*/:
                    jSONObject12 = zzbh.zzc(jsonReader);
                    break;
                case VungleException.INVALID_SIZE /*{ENCODED_INT: 28}*/:
                    i5 = jsonReader.nextInt();
                    break;
                case VungleException.INCORRECT_DEFAULT_API_USAGE /*{ENCODED_INT: 29}*/:
                    i7 = jsonReader.nextInt();
                    break;
                case VungleException.INCORRECT_BANNER_API_USAGE /*{ENCODED_INT: 30}*/:
                    str14 = jsonReader.nextString();
                    break;
                case VungleException.WEB_CRASH /*{ENCODED_INT: 31}*/:
                    z12 = jsonReader.nextBoolean();
                    break;
                case ' ':
                    str10 = jsonReader.nextString();
                    break;
                case VungleException.NETWORK_UNREACHABLE /*{ENCODED_INT: 33}*/:
                    z14 = jsonReader.nextBoolean();
                    break;
                case VungleException.NETWORK_PERMISSIONS_NOT_GRANTED /*{ENCODED_INT: 34}*/:
                    z3 = jsonReader.nextBoolean();
                    break;
                case VungleException.OK_HTTP_NOT_SUPPORTED_PLATFORM /*{ENCODED_INT: 35}*/:
                    zzdnd2 = new zzdnd(jsonReader);
                    break;
                case '$':
                    str5 = jsonReader.nextString();
                    break;
                case LangUtils.HASH_OFFSET /*{ENCODED_INT: 37}*/:
                    jSONObject7 = zzbh.zzc(jsonReader);
                    break;
                case '&':
                    z4 = jsonReader.nextBoolean();
                    break;
                case '\'':
                    str6 = jsonReader.nextString();
                    break;
                case '(':
                    list11 = zzbh.zza(jsonReader);
                    break;
                case ')':
                    z7 = jsonReader.nextBoolean();
                    break;
                case '*':
                    i3 = jsonReader.nextInt();
                    break;
                case '+':
                    str8 = jsonReader.nextString();
                    break;
                case ',':
                    zzbh.zza(jsonReader);
                    break;
                case '-':
                    list6 = zzdmz.zze(jsonReader);
                    break;
                case ModuleDescriptor.MODULE_VERSION:
                    int nextInt = jsonReader.nextInt();
                    if (nextInt != 0 && nextInt != 1) {
                        i2 = 0;
                        break;
                    } else {
                        i2 = nextInt;
                        break;
                    }
                case '/':
                    str2 = jsonReader.nextString();
                    break;
                case '0':
                    zzavj = zzavj.zza(zzbh.zzd(jsonReader));
                    break;
                case '1':
                    z2 = jsonReader.nextBoolean();
                    break;
                case AdSize.PORTRAIT_AD_HEIGHT:
                    str9 = jsonReader.nextString();
                    break;
                case '3':
                    list12 = zzbh.zza(jsonReader);
                    break;
                case '4':
                    str13 = jsonReader.nextString();
                    break;
                case '5':
                    list9 = zzbh.zza(jsonReader);
                    break;
                case '6':
                    z11 = jsonReader.nextBoolean();
                    break;
                case '7':
                    list15 = zzbh.zza(jsonReader);
                    break;
                case '8':
                    z9 = jsonReader.nextBoolean();
                    break;
                case '9':
                    str12 = jsonReader.nextString();
                    break;
                case ':':
                    list5 = zzbh.zza(jsonReader);
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
            list4 = list;
        }
        jsonReader.endObject();
        this.zzhix = list15;
        this.zzhiy = i;
        this.zzdmp = list13;
        this.zzdmq = list14;
        this.zzhja = list11;
        this.zzhiz = i2;
        this.zzdwn = list12;
        this.zzdwo = list9;
        this.zzhjb = list10;
        this.zzdmf = str2;
        this.zzdmg = str3;
        this.zzdwm = zzavj;
        this.zzhjc = list7;
        this.zzhjd = list8;
        this.zzdwa = list5;
        this.zzhje = i3;
        this.zzhjf = list6;
        this.zzhjg = zzdnd2;
        this.zzhjh = list3;
        this.zzhji = list4;
        this.zzdlu = str4;
        this.zzhjj = jSONObject7;
        this.id = str5;
        this.zzdmv = str6;
        this.zzdwg = str7;
        this.zzhjk = zzawu;
        this.zzdwd = str8;
        this.zzhjl = jSONObject8;
        this.zzhjm = jSONObject9;
        this.zzdnc = z;
        this.zzdnd = z2;
        this.zzdne = z3;
        this.zzdxt = z4;
        this.zzhjo = z5;
        this.zzftq = z6;
        this.zzbpm = z7;
        this.zzhjp = i4;
        this.zzhjq = i5;
        this.zzdww = z8;
        this.zzeuo = str9;
        this.zzhjr = new OmidSettings(jSONObject10);
        this.zzdwz = z9;
        this.zzdxa = z10;
        this.zzhjs = i6;
        this.zzdoq = str10;
        this.zzfto = i7;
        this.zzfzc = str11;
        this.zzhjt = z11;
        this.zzhju = zzarx;
        this.zzftp = z12;
        this.zzhjv = zzvu;
        this.zzhjw = str12;
        this.zzhjx = z13;
        this.zzhjy = jSONObject11;
        this.zzhjn = str13;
        this.zzhjz = z14;
        this.zzhka = jSONObject12;
        this.zzcht = str14;
    }
}
