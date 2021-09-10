.class public final Lcom/google/android/gms/internal/ads/zzcbc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzccl;


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final zzbpn:Lcom/google/android/gms/internal/ads/zzazn;

.field private final zzbqg:Lcom/google/android/gms/common/util/d;

.field private final zzesm:Lcom/google/android/gms/internal/ads/zzei;

.field private final zzesr:Lcom/google/android/gms/internal/ads/zzdmw;

.field private final zzfrf:Lcom/google/android/gms/internal/ads/zzdss;

.field private final zzfup:Lcom/google/android/gms/internal/ads/zzcco;

.field private final zzfwy:Lcom/google/android/gms/internal/ads/zzdnp;

.field private final zzgcf:Lorg/json/JSONObject;

.field private final zzgcg:Lcom/google/android/gms/internal/ads/zzcgk;

.field private final zzgch:Lcom/google/android/gms/internal/ads/zzccd;

.field private final zzgci:Lcom/google/android/gms/internal/ads/zzbsd;

.field private final zzgcj:Lcom/google/android/gms/internal/ads/zzbrl;

.field private final zzgck:Lcom/google/android/gms/internal/ads/zzbjz;

.field private final zzgcl:Lcom/google/android/gms/internal/ads/zzcdg;

.field private final zzgcm:Lcom/google/android/gms/internal/ads/zzbxz;

.field private zzgcn:Z

.field private zzgco:Z

.field private zzgcp:Z

.field private zzgcq:Z

.field private zzgcr:Landroid/graphics/Point;

.field private zzgcs:Landroid/graphics/Point;

.field private zzgct:J

.field private zzgcu:J

.field private zzgcv:Lcom/google/android/gms/internal/ads/zzyj;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcco;Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/zzcgk;Lcom/google/android/gms/internal/ads/zzccd;Lcom/google/android/gms/internal/ads/zzei;Lcom/google/android/gms/internal/ads/zzbsd;Lcom/google/android/gms/internal/ads/zzbrl;Lcom/google/android/gms/internal/ads/zzdmw;Lcom/google/android/gms/internal/ads/zzazn;Lcom/google/android/gms/internal/ads/zzdnp;Lcom/google/android/gms/internal/ads/zzbjz;Lcom/google/android/gms/internal/ads/zzcdg;Lcom/google/android/gms/common/util/d;Lcom/google/android/gms/internal/ads/zzbxz;Lcom/google/android/gms/internal/ads/zzdss;)V
    .locals 3

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzcbc;->zzgcn:Z

    .line 3
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzcbc;->zzgcp:Z

    .line 4
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzcbc;->zzgcq:Z

    .line 5
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzcbc;->zzgcr:Landroid/graphics/Point;

    .line 6
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzcbc;->zzgcs:Landroid/graphics/Point;

    const-wide/16 v1, 0x0

    .line 7
    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzcbc;->zzgct:J

    .line 8
    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzcbc;->zzgcu:J

    move-object v1, p1

    .line 9
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzcbc;->context:Landroid/content/Context;

    move-object v1, p2

    .line 10
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzcbc;->zzfup:Lcom/google/android/gms/internal/ads/zzcco;

    move-object v1, p3

    .line 11
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzcbc;->zzgcf:Lorg/json/JSONObject;

    move-object v1, p4

    .line 12
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzcbc;->zzgcg:Lcom/google/android/gms/internal/ads/zzcgk;

    move-object v1, p5

    .line 13
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzcbc;->zzgch:Lcom/google/android/gms/internal/ads/zzccd;

    move-object v1, p6

    .line 14
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzcbc;->zzesm:Lcom/google/android/gms/internal/ads/zzei;

    move-object v1, p7

    .line 15
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzcbc;->zzgci:Lcom/google/android/gms/internal/ads/zzbsd;

    move-object v1, p8

    .line 16
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzcbc;->zzgcj:Lcom/google/android/gms/internal/ads/zzbrl;

    move-object v1, p9

    .line 17
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzcbc;->zzesr:Lcom/google/android/gms/internal/ads/zzdmw;

    move-object v1, p10

    .line 18
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzcbc;->zzbpn:Lcom/google/android/gms/internal/ads/zzazn;

    move-object v1, p11

    .line 19
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzcbc;->zzfwy:Lcom/google/android/gms/internal/ads/zzdnp;

    move-object v1, p12

    .line 20
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzcbc;->zzgck:Lcom/google/android/gms/internal/ads/zzbjz;

    move-object/from16 v1, p13

    .line 21
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzcbc;->zzgcl:Lcom/google/android/gms/internal/ads/zzcdg;

    move-object/from16 v1, p14

    .line 22
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzcbc;->zzbqg:Lcom/google/android/gms/common/util/d;

    move-object/from16 v1, p15

    .line 23
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzcbc;->zzgcm:Lcom/google/android/gms/internal/ads/zzbxz;

    move-object/from16 v1, p16

    .line 24
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzcbc;->zzfrf:Lcom/google/android/gms/internal/ads/zzdss;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzcbc;)Lcom/google/android/gms/internal/ads/zzbsd;
    .locals 0

    .line 168
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcbc;->zzgci:Lcom/google/android/gms/internal/ads/zzbsd;

    return-object p0
.end method

.method private final zza(Landroid/view/View;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;ZZ)V
    .locals 4

    const-string v0, "has_custom_click_handler"

    const-string v1, "performClick must be called on the main UI thread."

    .line 50
    invoke-static {v1}, Lcom/google/android/gms/common/internal/n;->d(Ljava/lang/String;)V

    .line 51
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "ad"

    .line 52
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcbc;->zzgcf:Lorg/json/JSONObject;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "asset_view_signal"

    .line 53
    invoke-virtual {v1, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "ad_view_signal"

    .line 54
    invoke-virtual {v1, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "click_signal"

    .line 55
    invoke-virtual {v1, p2, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "scroll_view_signal"

    .line 56
    invoke-virtual {v1, p2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "lock_screen_signal"

    .line 57
    invoke-virtual {v1, p2, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcbc;->zzfup:Lcom/google/android/gms/internal/ads/zzcco;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzcbc;->zzgch:Lcom/google/android/gms/internal/ads/zzccd;

    .line 59
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzccd;->getCustomTemplateId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzcco;->zzgb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzafx;

    move-result-object p2

    const/4 p3, 0x0

    const/4 p4, 0x1

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 60
    :goto_0
    invoke-virtual {v1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p2, "provided_signals"

    .line 61
    invoke-virtual {v1, p2, p8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 62
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    const-string p5, "asset_id"

    .line 63
    invoke-virtual {p2, p5, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p5, "template"

    .line 64
    iget-object p6, p0, Lcom/google/android/gms/internal/ads/zzcbc;->zzgch:Lcom/google/android/gms/internal/ads/zzccd;

    invoke-virtual {p6}, Lcom/google/android/gms/internal/ads/zzccd;->zzanu()I

    move-result p6

    invoke-virtual {p2, p5, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p5, "view_aware_api_used"

    .line 65
    invoke-virtual {p2, p5, p9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p5, "custom_mute_requested"

    .line 66
    iget-object p6, p0, Lcom/google/android/gms/internal/ads/zzcbc;->zzfwy:Lcom/google/android/gms/internal/ads/zzdnp;

    iget-object p6, p6, Lcom/google/android/gms/internal/ads/zzdnp;->zzdoe:Lcom/google/android/gms/internal/ads/zzaeh;

    if-eqz p6, :cond_1

    iget-boolean p6, p6, Lcom/google/android/gms/internal/ads/zzaeh;->zzbnx:Z

    if-eqz p6, :cond_1

    const/4 p6, 0x1

    goto :goto_1

    :cond_1
    const/4 p6, 0x0

    .line 67
    :goto_1
    invoke-virtual {p2, p5, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p5, "custom_mute_enabled"

    .line 68
    iget-object p6, p0, Lcom/google/android/gms/internal/ads/zzcbc;->zzgch:Lcom/google/android/gms/internal/ads/zzccd;

    invoke-virtual {p6}, Lcom/google/android/gms/internal/ads/zzccd;->getMuteThisAdReasons()Ljava/util/List;

    move-result-object p6

    invoke-interface {p6}, Ljava/util/List;->isEmpty()Z

    move-result p6

    if-nez p6, :cond_2

    iget-object p6, p0, Lcom/google/android/gms/internal/ads/zzcbc;->zzgch:Lcom/google/android/gms/internal/ads/zzccd;

    .line 69
    invoke-virtual {p6}, Lcom/google/android/gms/internal/ads/zzccd;->zzanx()Lcom/google/android/gms/internal/ads/zzzu;

    move-result-object p6

    if-eqz p6, :cond_2

    const/4 p6, 0x1

    goto :goto_2

    :cond_2
    const/4 p6, 0x0

    .line 70
    :goto_2
    invoke-virtual {p2, p5, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 71
    iget-object p5, p0, Lcom/google/android/gms/internal/ads/zzcbc;->zzgcl:Lcom/google/android/gms/internal/ads/zzcdg;

    invoke-virtual {p5}, Lcom/google/android/gms/internal/ads/zzcdg;->zzapd()Lcom/google/android/gms/internal/ads/zzagm;

    move-result-object p5

    if-eqz p5, :cond_3

    iget-object p5, p0, Lcom/google/android/gms/internal/ads/zzcbc;->zzgcf:Lorg/json/JSONObject;

    const-string p6, "custom_one_point_five_click_enabled"

    .line 72
    invoke-virtual {p5, p6, p3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p5

    if-eqz p5, :cond_3

    const-string p5, "custom_one_point_five_click_eligible"

    .line 73
    invoke-virtual {p2, p5, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_3
    const-string p5, "timestamp"

    .line 74
    iget-object p6, p0, Lcom/google/android/gms/internal/ads/zzcbc;->zzbqg:Lcom/google/android/gms/common/util/d;

    invoke-interface {p6}, Lcom/google/android/gms/common/util/d;->a()J

    move-result-wide p6

    invoke-virtual {p2, p5, p6, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 75
    iget-boolean p5, p0, Lcom/google/android/gms/internal/ads/zzcbc;->zzgcq:Z

    if-eqz p5, :cond_4

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcbc;->zzani()Z

    move-result p5

    if-eqz p5, :cond_4

    const-string p5, "custom_click_gesture_eligible"

    .line 76
    invoke-virtual {p2, p5, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_4
    if-eqz p10, :cond_5

    const-string p5, "is_custom_click_gesture"

    .line 77
    invoke-virtual {p2, p5, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 78
    :cond_5
    iget-object p5, p0, Lcom/google/android/gms/internal/ads/zzcbc;->zzfup:Lcom/google/android/gms/internal/ads/zzcco;

    iget-object p6, p0, Lcom/google/android/gms/internal/ads/zzcbc;->zzgch:Lcom/google/android/gms/internal/ads/zzccd;

    .line 79
    invoke-virtual {p6}, Lcom/google/android/gms/internal/ads/zzccd;->getCustomTemplateId()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p5, p6}, Lcom/google/android/gms/internal/ads/zzcco;->zzgb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzafx;

    move-result-object p5

    if-eqz p5, :cond_6

    const/4 p3, 0x1

    .line 80
    :cond_6
    invoke-virtual {p2, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p3, "click_signals"

    .line 81
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzcbc;->zzx(Landroid/view/View;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    sget-object p1, Lcom/google/android/gms/internal/ads/zzabp;->zzcuu:Lcom/google/android/gms/internal/ads/zzaba;

    .line 83
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object p1

    .line 84
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "open_chrome_custom_tab"

    .line 85
    invoke-virtual {p2, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 86
    :cond_7
    sget-object p1, Lcom/google/android/gms/internal/ads/zzabp;->zzdaj:Lcom/google/android/gms/internal/ads/zzaba;

    .line 87
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object p1

    .line 88
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-static {}, Lcom/google/android/gms/common/util/c;->d()Z

    move-result p1

    if-eqz p1, :cond_8

    const-string p1, "try_fallback_for_deep_link"

    .line 89
    invoke-virtual {p2, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 90
    :cond_8
    sget-object p1, Lcom/google/android/gms/internal/ads/zzabp;->zzdak:Lcom/google/android/gms/internal/ads/zzaba;

    .line 91
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object p1

    .line 92
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-static {}, Lcom/google/android/gms/common/util/c;->d()Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p1, "in_app_link_handling_for_android_11_enabled"

    .line 93
    invoke-virtual {p2, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_9
    const-string p1, "click"

    .line 94
    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 95
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 96
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcbc;->zzbqg:Lcom/google/android/gms/common/util/d;

    invoke-interface {p2}, Lcom/google/android/gms/common/util/d;->a()J

    move-result-wide p2

    const-string p4, "time_from_last_touch_down"

    .line 97
    iget-wide p5, p0, Lcom/google/android/gms/internal/ads/zzcbc;->zzgct:J

    sub-long p5, p2, p5

    invoke-virtual {p1, p4, p5, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p4, "time_from_last_touch"

    .line 98
    iget-wide p5, p0, Lcom/google/android/gms/internal/ads/zzcbc;->zzgcu:J

    sub-long/2addr p2, p5

    invoke-virtual {p1, p4, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p2, "touch_signal"

    .line 99
    invoke-virtual {v1, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 100
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcbc;->zzgcg:Lcom/google/android/gms/internal/ads/zzcgk;

    const-string p2, "google.afma.nativeAds.handleClick"

    .line 101
    invoke-virtual {p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzcgk;->zzc(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p1

    const-string p2, "Error during performing handleClick"

    .line 102
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzazw;->zza(Lcom/google/android/gms/internal/ads/zzdzw;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "Unable to create click JSON."

    .line 103
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzazk;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private final zza(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;Z)Z
    .locals 3

    const-string v0, "recordImpression must be called on the main UI thread."

    .line 138
    invoke-static {v0}, Lcom/google/android/gms/common/internal/n;->d(Ljava/lang/String;)V

    .line 139
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "ad"

    .line 140
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcbc;->zzgcf:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "asset_view_signal"

    .line 141
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "ad_view_signal"

    .line 142
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "scroll_view_signal"

    .line 143
    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "lock_screen_signal"

    .line 144
    invoke-virtual {v0, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "provided_signals"

    .line 145
    invoke-virtual {v0, p1, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 146
    sget-object p1, Lcom/google/android/gms/internal/ads/zzabp;->zzcsq:Lcom/google/android/gms/internal/ads/zzaba;

    .line 147
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object p1

    .line 148
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "view_signals"

    .line 149
    invoke-virtual {v0, p1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string p1, "policy_validator_enabled"

    .line 150
    invoke-virtual {v0, p1, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p1, "screen"

    .line 151
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcbc;->context:Landroid/content/Context;

    .line 152
    invoke-static {p2}, Lcom/google/android/gms/ads/internal/util/zzbn;->zzbk(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object p2

    .line 153
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 154
    sget-object p1, Lcom/google/android/gms/internal/ads/zzabp;->zzdaf:Lcom/google/android/gms/internal/ads/zzaba;

    .line 155
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object p1

    .line 156
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 157
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcbc;->zzgcg:Lcom/google/android/gms/internal/ads/zzcgk;

    const-string p3, "/clickRecorded"

    new-instance p4, Lcom/google/android/gms/internal/ads/zzcbd;

    invoke-direct {p4, p0, p2}, Lcom/google/android/gms/internal/ads/zzcbd;-><init>(Lcom/google/android/gms/internal/ads/zzcbc;Lcom/google/android/gms/internal/ads/zzcbb;)V

    invoke-virtual {p1, p3, p4}, Lcom/google/android/gms/internal/ads/zzcgk;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaif;)V

    goto :goto_0

    .line 158
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcbc;->zzgcg:Lcom/google/android/gms/internal/ads/zzcgk;

    const-string p3, "/logScionEvent"

    new-instance p4, Lcom/google/android/gms/internal/ads/zzcbe;

    invoke-direct {p4, p0, p2}, Lcom/google/android/gms/internal/ads/zzcbe;-><init>(Lcom/google/android/gms/internal/ads/zzcbc;Lcom/google/android/gms/internal/ads/zzcbb;)V

    invoke-virtual {p1, p3, p4}, Lcom/google/android/gms/internal/ads/zzcgk;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaif;)V

    .line 159
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcbc;->zzgcg:Lcom/google/android/gms/internal/ads/zzcgk;

    const-string p3, "/nativeImpression"

    new-instance p4, Lcom/google/android/gms/internal/ads/zzcbg;

    invoke-direct {p4, p0, p2}, Lcom/google/android/gms/internal/ads/zzcbg;-><init>(Lcom/google/android/gms/internal/ads/zzcbc;Lcom/google/android/gms/internal/ads/zzcbb;)V

    invoke-virtual {p1, p3, p4}, Lcom/google/android/gms/internal/ads/zzcgk;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaif;)V

    .line 160
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcbc;->zzgcg:Lcom/google/android/gms/internal/ads/zzcgk;

    const-string p2, "google.afma.nativeAds.handleImpression"

    .line 161
    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzcgk;->zzc(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p1

    const-string p2, "Error during performing handleImpression"

    .line 162
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzazw;->zza(Lcom/google/android/gms/internal/ads/zzdzw;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcbc;->zzgcn:Z

    if-nez p1, :cond_2

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcbc;->zzesr:Lcom/google/android/gms/internal/ads/zzdmw;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzdmw;->zzhjl:Lorg/json/JSONObject;

    if-eqz p2, :cond_2

    .line 164
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlb()Lcom/google/android/gms/ads/internal/util/zzam;

    move-result-object p2

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzcbc;->context:Landroid/content/Context;

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzcbc;->zzbpn:Lcom/google/android/gms/internal/ads/zzazn;

    iget-object p4, p4, Lcom/google/android/gms/internal/ads/zzazn;->zzbrp:Ljava/lang/String;

    iget-object p5, p0, Lcom/google/android/gms/internal/ads/zzcbc;->zzesr:Lcom/google/android/gms/internal/ads/zzdmw;

    iget-object p5, p5, Lcom/google/android/gms/internal/ads/zzdmw;->zzhjl:Lorg/json/JSONObject;

    .line 165
    invoke-virtual {p5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p5

    iget-object p6, p0, Lcom/google/android/gms/internal/ads/zzcbc;->zzfwy:Lcom/google/android/gms/internal/ads/zzdnp;

    iget-object p6, p6, Lcom/google/android/gms/internal/ads/zzdnp;->zzhkx:Ljava/lang/String;

    .line 166
    invoke-virtual {p2, p3, p4, p5, p6}, Lcom/google/android/gms/ads/internal/util/zzam;->zzb(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    or-int/2addr p1, p2

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcbc;->zzgcn:Z

    :cond_2
    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    const-string p2, "Unable to create impression JSON."

    .line 167
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzazk;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method private final zzani()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbc;->zzgcf:Lorg/json/JSONObject;

    const-string v1, "allow_custom_click_gesture"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzcbc;)Lcom/google/android/gms/internal/ads/zzbrl;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcbc;->zzgcj:Lcom/google/android/gms/internal/ads/zzbrl;

    return-object p0
.end method

.method private final zzb(Landroid/view/View;Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 3
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcbc;->zzgch:Lcom/google/android/gms/internal/ads/zzccd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzccd;->zzanu()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_4

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3

    const/4 p2, 0x6

    if-eq p1, p2, :cond_2

    const/4 p1, 0x0

    return-object p1

    :cond_2
    const-string p1, "3099"

    return-object p1

    :cond_3
    const-string p1, "2099"

    return-object p1

    :cond_4
    const-string p1, "1099"

    return-object p1
.end method

.method private final zzfv(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbc;->zzgcf:Lorg/json/JSONObject;

    const-string v1, "allow_pub_event_reporting"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method private final zzx(Landroid/view/View;)Ljava/lang/String;
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbc;->zzgcf:Lorg/json/JSONObject;

    const-string v1, "tracking_urls_and_actions"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    const-string v1, "click_string"

    .line 3
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcbc;->zzesm:Lcom/google/android/gms/internal/ads/zzei;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzei;->zzca()Lcom/google/android/gms/internal/ads/zzdy;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcbc;->context:Landroid/content/Context;

    invoke-interface {v1, v2, v0, p1}, Lcom/google/android/gms/internal/ads/zzdy;->zza(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "Exception obtaining click signals"

    .line 5
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzazk;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private final zzy(Landroid/view/View;)Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabp;->zzcsq:Lcom/google/android/gms/internal/ads/zzaba;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 4
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbc;->zzesm:Lcom/google/android/gms/internal/ads/zzei;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzei;->zzca()Lcom/google/android/gms/internal/ads/zzdy;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcbc;->context:Landroid/content/Context;

    invoke-interface {v0, v2, p1, v1}, Lcom/google/android/gms/internal/ads/zzdy;->zza(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const-string p1, "Exception getting data."

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzazk;->zzev(Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public final cancelUnconfirmedClick()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbc;->zzgcf:Lorg/json/JSONObject;

    const-string v1, "custom_one_point_five_click_enabled"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbc;->zzgcl:Lcom/google/android/gms/internal/ads/zzcdg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcdg;->cancelUnconfirmedClick()V

    return-void
.end method

.method public final destroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbc;->zzgcg:Lcom/google/android/gms/internal/ads/zzcgk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcgk;->destroy()V

    return-void
.end method

.method public final isCustomClickGestureEnabled()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcbc;->zzani()Z

    move-result v0

    return v0
.end method

.method public final setClickConfirmingView(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbc;->zzgcf:Lorg/json/JSONObject;

    const-string v1, "custom_one_point_five_click_enabled"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "setClickConfirmingView: Your account need to be in the allow list to use this feature.\nContact your account manager for more information."

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzazk;->zzex(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbc;->zzgcl:Lcom/google/android/gms/internal/ads/zzcdg;

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x1

    .line 5
    invoke-virtual {p1, v1}, Landroid/view/View;->setClickable(Z)V

    .line 6
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzcdg;->zzggj:Ljava/lang/ref/WeakReference;

    :cond_1
    return-void
.end method

.method public final zza(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbc;->context:Landroid/content/Context;

    .line 115
    invoke-static {v0, p2, p3, p1}, Lcom/google/android/gms/ads/internal/util/zzbn;->zza(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object p2

    .line 116
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzcbc;->context:Landroid/content/Context;

    invoke-static {p3, p1}, Lcom/google/android/gms/ads/internal/util/zzbn;->zza(Landroid/content/Context;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object p3

    .line 117
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzbn;->zzt(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v0

    .line 118
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcbc;->context:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/google/android/gms/ads/internal/util/zzbn;->zzb(Landroid/content/Context;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object p1

    .line 119
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "asset_view_signal"

    .line 120
    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "ad_view_signal"

    .line 121
    invoke-virtual {v1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "scroll_view_signal"

    .line 122
    invoke-virtual {v1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "lock_screen_signal"

    .line 123
    invoke-virtual {v1, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    const-string p2, "Unable to create native ad view signals JSON."

    .line 124
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzazk;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final zza(Landroid/view/View;Landroid/view/MotionEvent;Landroid/view/View;)V
    .locals 2

    .line 104
    invoke-static {p2, p3}, Lcom/google/android/gms/ads/internal/util/zzbn;->zza(Landroid/view/MotionEvent;Landroid/view/View;)Landroid/graphics/Point;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcbc;->zzgcr:Landroid/graphics/Point;

    .line 105
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcbc;->zzbqg:Lcom/google/android/gms/common/util/d;

    invoke-interface {p1}, Lcom/google/android/gms/common/util/d;->a()J

    move-result-wide v0

    .line 106
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcbc;->zzgcu:J

    .line 107
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    .line 108
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcbc;->zzgct:J

    .line 109
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcbc;->zzgcr:Landroid/graphics/Point;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcbc;->zzgcs:Landroid/graphics/Point;

    .line 110
    :cond_0
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 111
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcbc;->zzgcr:Landroid/graphics/Point;

    iget p3, p2, Landroid/graphics/Point;->x:I

    int-to-float p3, p3

    iget p2, p2, Landroid/graphics/Point;->y:I

    int-to-float p2, p2

    invoke-virtual {p1, p3, p2}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 112
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcbc;->zzesm:Lcom/google/android/gms/internal/ads/zzei;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzei;->zza(Landroid/view/MotionEvent;)V

    .line 113
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method public final zza(Landroid/view/View;Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Z)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;Z)V"
        }
    .end annotation

    move-object v11, p0

    move-object v0, p2

    move-object v1, p3

    .line 25
    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzcbc;->context:Landroid/content/Context;

    move-object/from16 v3, p4

    .line 26
    invoke-static {v2, p3, v3, p2}, Lcom/google/android/gms/ads/internal/util/zzbn;->zza(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v3

    .line 27
    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzcbc;->context:Landroid/content/Context;

    invoke-static {v2, p2}, Lcom/google/android/gms/ads/internal/util/zzbn;->zza(Landroid/content/Context;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v2

    .line 28
    invoke-static {p2}, Lcom/google/android/gms/ads/internal/util/zzbn;->zzt(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v4

    .line 29
    iget-object v5, v11, Lcom/google/android/gms/internal/ads/zzcbc;->context:Landroid/content/Context;

    invoke-static {v5, p2}, Lcom/google/android/gms/ads/internal/util/zzbn;->zzb(Landroid/content/Context;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v5

    move-object v6, p1

    .line 30
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/ads/zzcbc;->zzb(Landroid/view/View;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v7

    .line 31
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzcbc;->context:Landroid/content/Context;

    iget-object v8, v11, Lcom/google/android/gms/internal/ads/zzcbc;->zzgcs:Landroid/graphics/Point;

    iget-object v9, v11, Lcom/google/android/gms/internal/ads/zzcbc;->zzgcr:Landroid/graphics/Point;

    .line 32
    invoke-static {v7, v1, v8, v9}, Lcom/google/android/gms/ads/internal/util/zzbn;->zza(Ljava/lang/String;Landroid/content/Context;Landroid/graphics/Point;Landroid/graphics/Point;)Lorg/json/JSONObject;

    move-result-object v8

    .line 33
    sget-object v1, Lcom/google/android/gms/internal/ads/zzabp;->zzcsr:Lcom/google/android/gms/internal/ads/zzaba;

    .line 34
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v9

    invoke-virtual {v9, v1}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v1

    .line 35
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    move-object v1, v6

    :goto_0
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move/from16 v9, p5

    .line 36
    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/ads/zzcbc;->zza(Landroid/view/View;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;ZZ)V

    return-void
.end method

.method public final zza(Landroid/view/View;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;)V"
        }
    .end annotation

    .line 21
    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcbc;->zzgcr:Landroid/graphics/Point;

    .line 22
    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcbc;->zzgcs:Landroid/graphics/Point;

    .line 23
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcbc;->zzgcm:Lcom/google/android/gms/internal/ads/zzbxz;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbxz;->zzw(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 24
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcbc;->zzgco:Z

    return-void
.end method

.method public final zza(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Landroid/view/View$OnTouchListener;Landroid/view/View$OnClickListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;",
            "Landroid/view/View$OnTouchListener;",
            "Landroid/view/View$OnClickListener;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbc;->zzgcr:Landroid/graphics/Point;

    .line 2
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbc;->zzgcs:Landroid/graphics/Point;

    .line 3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcbc;->zzgco:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbc;->zzgcm:Lcom/google/android/gms/internal/ads/zzbxz;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbxz;->zzv(Landroid/view/View;)V

    .line 5
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcbc;->zzgco:Z

    .line 6
    :cond_0
    invoke-virtual {p1, p4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 7
    invoke-virtual {p1, v1}, Landroid/view/View;->setClickable(Z)V

    .line 8
    invoke-virtual {p1, p5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcbc;->zzgck:Lcom/google/android/gms/internal/ads/zzbjz;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzbjz;->zzn(Ljava/lang/Object;)V

    .line 10
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcbc;->zzbpn:Lcom/google/android/gms/internal/ads/zzazn;

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzazn;->zzehz:I

    .line 11
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzbn;->zzdh(I)Z

    move-result p1

    if-eqz p2, :cond_3

    .line 12
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 13
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_2

    .line 14
    invoke-virtual {v0, p4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 15
    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 16
    invoke-virtual {v0, p5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_3
    if-eqz p3, :cond_6

    .line 17
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 18
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/ref/WeakReference;

    invoke-virtual {p3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    if-eqz p3, :cond_4

    if-eqz p1, :cond_5

    .line 19
    invoke-virtual {p3, p4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_5
    const/4 p5, 0x0

    .line 20
    invoke-virtual {p3, p5}, Landroid/view/View;->setClickable(Z)V

    goto :goto_1

    :cond_6
    return-void
.end method

.method public final zza(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Z)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;Z)V"
        }
    .end annotation

    move-object v11, p0

    move-object v1, p1

    move-object v0, p2

    .line 37
    iget-boolean v2, v11, Lcom/google/android/gms/internal/ads/zzcbc;->zzgcq:Z

    if-nez v2, :cond_0

    const-string v0, "Custom click reporting failed. enableCustomClickGesture is not set."

    .line 38
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzazk;->zzdy(Ljava/lang/String;)V

    return-void

    .line 39
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcbc;->zzani()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v0, "Custom click reporting failed. Ad unit id not in the allow list."

    .line 40
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzazk;->zzdy(Ljava/lang/String;)V

    return-void

    .line 41
    :cond_1
    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzcbc;->context:Landroid/content/Context;

    move-object v3, p3

    .line 42
    invoke-static {v2, p2, p3, p1}, Lcom/google/android/gms/ads/internal/util/zzbn;->zza(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v3

    .line 43
    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzcbc;->context:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/google/android/gms/ads/internal/util/zzbn;->zza(Landroid/content/Context;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v2

    .line 44
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzbn;->zzt(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v4

    .line 45
    iget-object v5, v11, Lcom/google/android/gms/internal/ads/zzcbc;->context:Landroid/content/Context;

    invoke-static {v5, p1}, Lcom/google/android/gms/ads/internal/util/zzbn;->zzb(Landroid/content/Context;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v5

    const/4 v6, 0x0

    .line 46
    invoke-direct {p0, v6, p2}, Lcom/google/android/gms/internal/ads/zzcbc;->zzb(Landroid/view/View;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    .line 47
    iget-object v0, v11, Lcom/google/android/gms/internal/ads/zzcbc;->context:Landroid/content/Context;

    iget-object v7, v11, Lcom/google/android/gms/internal/ads/zzcbc;->zzgcs:Landroid/graphics/Point;

    iget-object v8, v11, Lcom/google/android/gms/internal/ads/zzcbc;->zzgcr:Landroid/graphics/Point;

    .line 48
    invoke-static {v6, v0, v7, v8}, Lcom/google/android/gms/ads/internal/util/zzbn;->zza(Ljava/lang/String;Landroid/content/Context;Landroid/graphics/Point;Landroid/graphics/Point;)Lorg/json/JSONObject;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v10, 0x1

    move-object v0, p0

    move-object v1, p1

    move/from16 v9, p4

    .line 49
    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/ads/zzcbc;->zza(Landroid/view/View;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;ZZ)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzagm;)V
    .locals 3

    .line 125
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbc;->zzgcf:Lorg/json/JSONObject;

    const-string v1, "custom_one_point_five_click_enabled"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "setUnconfirmedClickListener: Your account need to be in the allow list to use this feature.\nContact your account manager for more information."

    .line 126
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzazk;->zzex(Ljava/lang/String;)V

    return-void

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbc;->zzgcl:Lcom/google/android/gms/internal/ads/zzcdg;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcdg;->zza(Lcom/google/android/gms/internal/ads/zzagm;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzyj;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcbc;->zzgcv:Lcom/google/android/gms/internal/ads/zzyj;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzyn;)V
    .locals 2

    .line 128
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcbc;->zzgcp:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 129
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcbc;->zzgch:Lcom/google/android/gms/internal/ads/zzccd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzccd;->zzanx()Lcom/google/android/gms/internal/ads/zzzu;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 130
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcbc;->zzgcp:Z

    .line 131
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcbc;->zzfrf:Lcom/google/android/gms/internal/ads/zzdss;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbc;->zzgch:Lcom/google/android/gms/internal/ads/zzccd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzccd;->zzanx()Lcom/google/android/gms/internal/ads/zzzu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzzu;->zzre()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzdss;->zzel(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcbc;->zzank()V

    return-void

    .line 133
    :cond_1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcbc;->zzgcp:Z

    .line 134
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbc;->zzfrf:Lcom/google/android/gms/internal/ads/zzdss;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzyn;->zzre()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdss;->zzel(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcbc;->zzank()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 136
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzazk;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzanj()V
    .locals 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    .line 1
    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzcbc;->zza(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;Z)Z

    return-void
.end method

.method public final zzank()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbc;->zzgcv:Lcom/google/android/gms/internal/ads/zzyj;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzyj;->onAdMuted()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 3
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzazk;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzanl()V
    .locals 3

    const-string v0, "recordDownloadedImpression must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/n;->d(Ljava/lang/String;)V

    .line 2
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "ad"

    .line 3
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcbc;->zzgcf:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcbc;->zzgcg:Lcom/google/android/gms/internal/ads/zzcgk;

    const-string v2, "google.afma.nativeAds.handleDownloadedImpression"

    .line 5
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzcgk;->zzc(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object v0

    const-string v1, "Error during performing handleDownloadedImpression"

    .line 6
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzazw;->zza(Lcom/google/android/gms/internal/ads/zzdzw;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, ""

    .line 7
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzazk;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzb(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;)V"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbc;->context:Landroid/content/Context;

    .line 7
    invoke-static {v0, p2, p3, p1}, Lcom/google/android/gms/ads/internal/util/zzbn;->zza(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v3

    .line 8
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcbc;->context:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/google/android/gms/ads/internal/util/zzbn;->zza(Landroid/content/Context;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v2

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzbn;->zzt(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v4

    .line 10
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcbc;->context:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/google/android/gms/ads/internal/util/zzbn;->zzb(Landroid/content/Context;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v5

    .line 11
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzcbc;->zzy(Landroid/view/View;)Ljava/lang/String;

    move-result-object v6

    .line 12
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcbc;->context:Landroid/content/Context;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcbc;->zzesr:Lcom/google/android/gms/internal/ads/zzdmw;

    .line 13
    invoke-static {p1, p2}, Lcom/google/android/gms/ads/internal/util/zzbn;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzdmw;)Z

    move-result v8

    const/4 v7, 0x0

    move-object v1, p0

    .line 14
    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/zzcbc;->zza(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;Z)Z

    return-void
.end method

.method public final zzf(Landroid/os/Bundle;)V
    .locals 13

    if-nez p1, :cond_0

    const-string p1, "Click data is null. No click is reported."

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzazk;->zzdy(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "click_reporting"

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzcbc;->zzfv(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "The ad slot cannot handle external click events. You must be part of the allow list to be able to report your click events."

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzazk;->zzev(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v0, "click_signal"

    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-string v2, "asset_id"

    .line 5
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    goto :goto_0

    :cond_2
    move-object v8, v1

    .line 6
    :goto_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkr()Lcom/google/android/gms/ads/internal/util/zzj;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/ads/internal/util/zzj;->zza(Landroid/os/Bundle;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v10

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v2, p0

    .line 7
    invoke-direct/range {v2 .. v12}, Lcom/google/android/gms/internal/ads/zzcbc;->zza(Landroid/view/View;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;ZZ)V

    return-void
.end method

.method public final zzfw(Ljava/lang/String;)V
    .locals 11

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v6, p1

    .line 1
    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/ads/zzcbc;->zza(Landroid/view/View;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;ZZ)V

    return-void
.end method

.method public final zzg(Landroid/os/Bundle;)V
    .locals 3

    if-nez p1, :cond_0

    const-string p1, "Touch event data is null. No touch event is reported."

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzazk;->zzdy(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "touch_reporting"

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzcbc;->zzfv(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "The ad slot cannot handle external touch events. You must be in the allow list to be able to report your touch events."

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzazk;->zzev(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v0, "x"

    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    const-string v1, "y"

    .line 5
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    const-string v2, "duration_ms"

    .line 6
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 7
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcbc;->zzesm:Lcom/google/android/gms/internal/ads/zzei;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzei;->zzca()Lcom/google/android/gms/internal/ads/zzdy;

    move-result-object v2

    invoke-interface {v2, v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdy;->zza(III)V

    return-void
.end method

.method public final zzh(Landroid/os/Bundle;)Z
    .locals 10

    const-string v0, "impression_reporting"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzcbc;->zzfv(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "The ad slot cannot handle external impression events. You must be in the allow list to be able to report your impression events."

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzazk;->zzev(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkr()Lcom/google/android/gms/ads/internal/util/zzj;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/ads/internal/util/zzj;->zza(Landroid/os/Bundle;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v8

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v2, p0

    .line 4
    invoke-direct/range {v2 .. v9}, Lcom/google/android/gms/internal/ads/zzcbc;->zza(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;Z)Z

    move-result p1

    return p1
.end method

.method public final zztx()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcbc;->zzgcq:Z

    return-void
.end method
