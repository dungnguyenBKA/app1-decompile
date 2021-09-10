.class public Lcom/vungle/warren/VungleApiClient;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/warren/VungleApiClient$ClearTextTrafficException;,
        Lcom/vungle/warren/VungleApiClient$ConnectionTypeDetail;,
        Lcom/vungle/warren/VungleApiClient$WrapperFramework;,
        Lcom/vungle/warren/VungleApiClient$GzipRequestInterceptor;
    }
.end annotation


# static fields
.field private static BASE_URL:Ljava/lang/String; = null

.field private static final ID:Ljava/lang/String; = "id"

.field static final MANUFACTURER_AMAZON:Ljava/lang/String; = "Amazon"

.field private static final TAG:Ljava/lang/String; = "com.vungle.warren.VungleApiClient"

.field protected static WRAPPER_FRAMEWORK_SELECTED:Lcom/vungle/warren/VungleApiClient$WrapperFramework;

.field private static headerUa:Ljava/lang/String;

.field private static logInterceptors:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Leh0;",
            ">;"
        }
    .end annotation
.end field

.field private static networkInterceptors:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Leh0;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private api:Lcom/vungle/warren/network/VungleApi;

.field private appBody:Ls60;

.field private cacheManager:Lcom/vungle/warren/persistence/CacheManager;

.field private client:Lgh0;

.field private context:Landroid/content/Context;

.field private defaultIdFallbackDisabled:Z

.field private deviceBody:Ls60;

.field private enableOm:Z

.field private gzipApi:Lcom/vungle/warren/network/VungleApi;

.field private isGooglePlayServicesAvailable:Ljava/lang/Boolean;

.field private logEndpoint:Ljava/lang/String;

.field private newEndpoint:Ljava/lang/String;

.field private final okHttpSupported:Z

.field private final omInjector:Lcom/vungle/warren/omsdk/OMInjector;

.field private reportAdEndpoint:Ljava/lang/String;

.field private repository:Lcom/vungle/warren/persistence/Repository;

.field private requestAdEndpoint:Ljava/lang/String;

.field private retryAfterDataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private riEndpoint:Ljava/lang/String;

.field private timeoutApi:Lcom/vungle/warren/network/VungleApi;

.field private timeoutProvider:Lcom/vungle/warren/utility/TimeoutProvider;

.field private uaString:Ljava/lang/String;

.field private userBody:Ls60;

.field private willPlayAdEnabled:Z

.field private willPlayAdEndpoint:Ljava/lang/String;

.field private willPlayAdTimeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v2, "Amazon"

    .line 2
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "VungleAmazon/"

    goto :goto_0

    :cond_0
    const-string v1, "VungleDroid/"

    :goto_0
    const-string v2, "6.9.1"

    invoke-static {v0, v1, v2}, Lic;->l(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vungle/warren/VungleApiClient;->headerUa:Ljava/lang/String;

    const-string v0, "https://ads.api.vungle.com/"

    .line 3
    sput-object v0, Lcom/vungle/warren/VungleApiClient;->BASE_URL:Ljava/lang/String;

    .line 4
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/vungle/warren/VungleApiClient;->networkInterceptors:Ljava/util/Set;

    .line 5
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/vungle/warren/VungleApiClient;->logInterceptors:Ljava/util/Set;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/vungle/warren/persistence/CacheManager;Lcom/vungle/warren/persistence/Repository;Lcom/vungle/warren/omsdk/OMInjector;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/vungle/warren/VungleApiClient;->retryAfterDataMap:Ljava/util/Map;

    const-string v0, "http.agent"

    .line 3
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/warren/VungleApiClient;->uaString:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/vungle/warren/VungleApiClient;->cacheManager:Lcom/vungle/warren/persistence/CacheManager;

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/vungle/warren/VungleApiClient;->context:Landroid/content/Context;

    .line 6
    iput-object p3, p0, Lcom/vungle/warren/VungleApiClient;->repository:Lcom/vungle/warren/persistence/Repository;

    .line 7
    iput-object p4, p0, Lcom/vungle/warren/VungleApiClient;->omInjector:Lcom/vungle/warren/omsdk/OMInjector;

    .line 8
    new-instance p2, Lcom/vungle/warren/VungleApiClient$1;

    invoke-direct {p2, p0}, Lcom/vungle/warren/VungleApiClient$1;-><init>(Lcom/vungle/warren/VungleApiClient;)V

    .line 9
    new-instance p3, Lgh0$b;

    invoke-direct {p3}, Lgh0$b;-><init>()V

    .line 10
    invoke-virtual {p3, p2}, Lgh0$b;->a(Leh0;)Lgh0$b;

    .line 11
    :try_start_0
    invoke-virtual {p3}, Lgh0$b;->b()Lgh0;

    move-result-object p2

    iput-object p2, p0, Lcom/vungle/warren/VungleApiClient;->client:Lgh0;
    :try_end_0
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p2, 0x1

    .line 12
    iput-boolean p2, p0, Lcom/vungle/warren/VungleApiClient;->okHttpSupported:Z

    .line 13
    new-instance p2, Lcom/vungle/warren/VungleApiClient$GzipRequestInterceptor;

    invoke-direct {p2}, Lcom/vungle/warren/VungleApiClient$GzipRequestInterceptor;-><init>()V

    invoke-virtual {p3, p2}, Lgh0$b;->a(Leh0;)Lgh0$b;

    invoke-virtual {p3}, Lgh0$b;->b()Lgh0;

    move-result-object p2

    .line 14
    new-instance p3, Lcom/vungle/warren/network/APIFactory;

    iget-object p4, p0, Lcom/vungle/warren/VungleApiClient;->client:Lgh0;

    sget-object v0, Lcom/vungle/warren/VungleApiClient;->BASE_URL:Ljava/lang/String;

    invoke-direct {p3, p4, v0}, Lcom/vungle/warren/network/APIFactory;-><init>(Log0$a;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/vungle/warren/network/APIFactory;->createAPI()Lcom/vungle/warren/network/VungleApi;

    move-result-object p3

    iput-object p3, p0, Lcom/vungle/warren/VungleApiClient;->api:Lcom/vungle/warren/network/VungleApi;

    .line 15
    new-instance p3, Lcom/vungle/warren/network/APIFactory;

    sget-object p4, Lcom/vungle/warren/VungleApiClient;->BASE_URL:Ljava/lang/String;

    invoke-direct {p3, p2, p4}, Lcom/vungle/warren/network/APIFactory;-><init>(Log0$a;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/vungle/warren/network/APIFactory;->createAPI()Lcom/vungle/warren/network/VungleApi;

    move-result-object p2

    iput-object p2, p0, Lcom/vungle/warren/VungleApiClient;->gzipApi:Lcom/vungle/warren/network/VungleApi;

    .line 16
    invoke-static {p1}, Lcom/vungle/warren/ServiceLocator;->getInstance(Landroid/content/Context;)Lcom/vungle/warren/ServiceLocator;

    move-result-object p1

    .line 17
    const-class p2, Lcom/vungle/warren/utility/TimeoutProvider;

    invoke-virtual {p1, p2}, Lcom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vungle/warren/utility/TimeoutProvider;

    iput-object p1, p0, Lcom/vungle/warren/VungleApiClient;->timeoutProvider:Lcom/vungle/warren/utility/TimeoutProvider;

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 18
    :goto_0
    sget-object p2, Lcom/vungle/warren/VungleApiClient;->TAG:Ljava/lang/String;

    const-string p3, "Can\'t init OKHttp"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    .line 19
    iput-boolean p1, p0, Lcom/vungle/warren/VungleApiClient;->okHttpSupported:Z

    return-void
.end method

.method static synthetic access$000(Lcom/vungle/warren/VungleApiClient;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/vungle/warren/VungleApiClient;->retryAfterDataMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/vungle/warren/VungleApiClient;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vungle/warren/VungleApiClient;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/vungle/warren/VungleApiClient;->uaString:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$202(Lcom/vungle/warren/VungleApiClient;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/VungleApiClient;->uaString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/vungle/warren/VungleApiClient;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/vungle/warren/VungleApiClient;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/vungle/warren/VungleApiClient;)Ls60;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/vungle/warren/VungleApiClient;->deviceBody:Ls60;

    return-object p0
.end method

.method static synthetic access$500(Lcom/vungle/warren/VungleApiClient;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/vungle/warren/VungleApiClient;->addUserAgentInCookie(Ljava/lang/String;)V

    return-void
.end method

.method private addUserAgentInCookie(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/vungle/warren/model/Cookie;

    const-string v1, "userAgent"

    invoke-direct {v0, v1}, Lcom/vungle/warren/model/Cookie;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0, v1, p1}, Lcom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lcom/vungle/warren/VungleApiClient;->repository:Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {p1, v0}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;)V

    return-void
.end method

.method private getConnectionTypeDetail(I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const-string p1, "unknown"

    return-object p1

    :pswitch_1
    const-string p1, "hrpd"

    return-object p1

    :pswitch_2
    const-string p1, "LTE"

    return-object p1

    :pswitch_3
    const-string p1, "cdma_evdo_b"

    return-object p1

    :pswitch_4
    const-string p1, "hsupa"

    return-object p1

    :pswitch_5
    const-string p1, "hsdpa"

    return-object p1

    :pswitch_6
    const-string p1, "cdma_1xrtt"

    return-object p1

    :pswitch_7
    const-string p1, "cdma_evdo_a"

    return-object p1

    :pswitch_8
    const-string p1, "cdma_evdo_0"

    return-object p1

    :pswitch_9
    const-string p1, "wcdma"

    return-object p1

    :pswitch_a
    const-string p1, "edge"

    return-object p1

    :pswitch_b
    const-string p1, "gprs"

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private getDeviceBody()Ls60;
    .locals 15
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HardwareIds"
        }
    .end annotation

    const-string v0, "ifa"

    const-string v1, "Amazon"

    .line 1
    new-instance v2, Ls60;

    invoke-direct {v2}, Ls60;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 2
    :try_start_0
    sget-object v6, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    const-string v7, "advertising_id"

    if-eqz v6, :cond_1

    .line 3
    :try_start_1
    iget-object v6, p0, Lcom/vungle/warren/VungleApiClient;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "limit_ad_tracking"

    .line 4
    invoke-static {v6, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v8
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    if-ne v8, v5, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    .line 5
    :goto_0
    :try_start_2
    invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_2
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_6

    :catch_0
    move-exception v6

    goto :goto_1

    :catch_1
    move-exception v6

    const/4 v8, 0x1

    .line 6
    :goto_1
    :try_start_3
    sget-object v7, Lcom/vungle/warren/VungleApiClient;->TAG:Ljava/lang/String;

    const-string v9, "Error getting Amazon advertising info"

    invoke-static {v7, v9, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-object v6, v3

    goto :goto_6

    :catch_2
    move v6, v8

    move-object v8, v3

    goto :goto_4

    .line 7
    :cond_1
    :try_start_4
    iget-object v6, p0, Lcom/vungle/warren/VungleApiClient;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 8
    invoke-virtual {v6}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v8
    :try_end_4
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    .line 9
    :try_start_5
    invoke-virtual {v6}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v6
    :try_end_5
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7

    .line 10
    :try_start_6
    iget-object v9, p0, Lcom/vungle/warren/VungleApiClient;->deviceBody:Ls60;

    invoke-virtual {v9, v0, v8}, Ls60;->l(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8

    goto :goto_5

    :catch_3
    move-exception v9

    goto :goto_3

    :catch_4
    move-exception v9

    goto :goto_2

    :cond_2
    move-object v6, v3

    const/4 v8, 0x1

    goto :goto_6

    :catch_5
    move-exception v9

    move-object v8, v3

    :goto_2
    const/4 v6, 0x1

    .line 11
    :goto_3
    :try_start_7
    sget-object v10, Lcom/vungle/warren/VungleApiClient;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Play services Not available: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/NoClassDefFoundError;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    iget-object v9, p0, Lcom/vungle/warren/VungleApiClient;->context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 13
    invoke-static {v9, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8

    move v8, v6

    move-object v6, v7

    goto :goto_6

    :catch_6
    move-object v8, v3

    :catch_7
    const/4 v6, 0x1

    .line 14
    :catch_8
    :goto_4
    sget-object v7, Lcom/vungle/warren/VungleApiClient;->TAG:Ljava/lang/String;

    const-string v9, "Cannot load Advertising ID"

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    move-object v14, v8

    move v8, v6

    move-object v6, v14

    :goto_6
    const-string v7, ""

    if-eqz v6, :cond_4

    .line 15
    sget-object v9, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const-string v9, "amazon_advertising_id"

    goto :goto_7

    :cond_3
    const-string v9, "gaid"

    :goto_7
    invoke-virtual {v2, v9, v6}, Ls60;->l(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget-object v9, p0, Lcom/vungle/warren/VungleApiClient;->deviceBody:Ls60;

    invoke-virtual {v9, v0, v6}, Ls60;->l(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 17
    :cond_4
    iget-object v6, p0, Lcom/vungle/warren/VungleApiClient;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "android_id"

    invoke-static {v6, v9}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 18
    iget-object v10, p0, Lcom/vungle/warren/VungleApiClient;->deviceBody:Ls60;

    iget-boolean v11, p0, Lcom/vungle/warren/VungleApiClient;->defaultIdFallbackDisabled:Z

    if-eqz v11, :cond_6

    :cond_5
    move-object v11, v7

    goto :goto_8

    .line 19
    :cond_6
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    move-object v11, v6

    .line 20
    :goto_8
    invoke-virtual {v10, v0, v11}, Ls60;->l(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/vungle/warren/VungleApiClient;->defaultIdFallbackDisabled:Z

    if-nez v0, :cond_7

    .line 22
    invoke-virtual {v2, v9, v6}, Ls60;->l(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    :cond_7
    :goto_9
    iget-object v0, p0, Lcom/vungle/warren/VungleApiClient;->deviceBody:Ls60;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v8, "lmt"

    invoke-virtual {v0, v8, v6}, Ls60;->k(Ljava/lang/String;Ljava/lang/Number;)V

    .line 24
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/vungle/warren/VungleApiClient;->isGooglePlayServicesAvailable()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 25
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v6, "is_google_play_services_available"

    invoke-virtual {v2, v6, v0}, Ls60;->j(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 26
    iget-object v0, p0, Lcom/vungle/warren/VungleApiClient;->context:Landroid/content/Context;

    if-eqz v0, :cond_8

    new-instance v6, Landroid/content/IntentFilter;

    const-string v8, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v6, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v0, v3, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v3

    :cond_8
    const/4 v0, 0x4

    const/4 v6, 0x2

    const-string v8, "UNKNOWN"

    if-eqz v3, :cond_10

    const-string v9, "level"

    const/4 v10, -0x1

    .line 28
    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    const-string v11, "scale"

    .line 29
    invoke-virtual {v3, v11, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    if-lez v9, :cond_9

    if-lez v11, :cond_9

    int-to-float v9, v9

    int-to-float v11, v11

    div-float/2addr v9, v11

    .line 30
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    const-string v11, "battery_level"

    invoke-virtual {v2, v11, v9}, Ls60;->k(Ljava/lang/String;Ljava/lang/Number;)V

    :cond_9
    const-string v9, "status"

    .line 31
    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v10, :cond_a

    goto :goto_b

    :cond_a
    if-eq v9, v6, :cond_c

    const/4 v11, 0x5

    if-ne v9, v11, :cond_b

    goto :goto_a

    :cond_b
    const-string v3, "NOT_CHARGING"

    goto :goto_c

    :cond_c
    :goto_a
    const-string v9, "plugged"

    .line 32
    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v5, :cond_f

    if-eq v3, v6, :cond_e

    if-eq v3, v0, :cond_d

    const-string v3, "BATTERY_PLUGGED_OTHERS"

    goto :goto_c

    :cond_d
    const-string v3, "BATTERY_PLUGGED_WIRELESS"

    goto :goto_c

    :cond_e
    const-string v3, "BATTERY_PLUGGED_USB"

    goto :goto_c

    :cond_f
    const-string v3, "BATTERY_PLUGGED_AC"

    goto :goto_c

    :cond_10
    :goto_b
    move-object v3, v8

    :goto_c
    const-string v9, "battery_state"

    .line 33
    invoke-virtual {v2, v9, v3}, Ls60;->l(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x15

    if-lt v3, v9, :cond_12

    .line 35
    iget-object v9, p0, Lcom/vungle/warren/VungleApiClient;->context:Landroid/content/Context;

    const-string v10, "power"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/PowerManager;

    if-eqz v9, :cond_11

    .line 36
    invoke-virtual {v9}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v9

    if-eqz v9, :cond_11

    const/4 v9, 0x1

    goto :goto_d

    :cond_11
    const/4 v9, 0x0

    :goto_d
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "battery_saver_enabled"

    invoke-virtual {v2, v10, v9}, Ls60;->k(Ljava/lang/String;Ljava/lang/Number;)V

    .line 37
    :cond_12
    iget-object v9, p0, Lcom/vungle/warren/VungleApiClient;->context:Landroid/content/Context;

    const-string v10, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v9, v10}, Landroidx/core/app/b;->k(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x3

    if-nez v9, :cond_1c

    .line 38
    iget-object v9, p0, Lcom/vungle/warren/VungleApiClient;->context:Landroid/content/Context;

    const-string v11, "connectivity"

    invoke-virtual {v9, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/ConnectivityManager;

    const-string v11, "unknown"

    if-eqz v9, :cond_17

    .line 39
    invoke-virtual {v9}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v12

    if-eqz v12, :cond_17

    .line 40
    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getType()I

    move-result v13

    if-eqz v13, :cond_16

    if-eq v13, v5, :cond_15

    const/4 v12, 0x6

    if-eq v13, v12, :cond_15

    const/4 v12, 0x7

    if-eq v13, v12, :cond_14

    const/16 v12, 0x9

    if-eq v13, v12, :cond_13

    move-object v12, v8

    goto :goto_e

    :cond_13
    const-string v12, "ETHERNET"

    goto :goto_e

    :cond_14
    const-string v12, "BLUETOOTH"

    goto :goto_e

    :cond_15
    const-string v12, "WIFI"

    goto :goto_e

    .line 41
    :cond_16
    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v11

    invoke-direct {p0, v11}, Lcom/vungle/warren/VungleApiClient;->getConnectionTypeDetail(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "MOBILE"

    goto :goto_e

    :cond_17
    const-string v12, "NONE"

    :goto_e
    const-string v13, "connection_type"

    .line 42
    invoke-virtual {v2, v13, v12}, Ls60;->l(Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, "connection_type_detail"

    .line 43
    invoke-virtual {v2, v12, v11}, Ls60;->l(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v11, 0x18

    if-lt v3, v11, :cond_1c

    .line 44
    invoke-virtual {v9}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result v11

    const-string v12, "network_metered"

    const-string v13, "data_saver_status"

    if-eqz v11, :cond_1b

    .line 45
    invoke-virtual {v9}, Landroid/net/ConnectivityManager;->getRestrictBackgroundStatus()I

    move-result v9

    if-eq v9, v5, :cond_1a

    if-eq v9, v6, :cond_19

    if-eq v9, v10, :cond_18

    goto :goto_f

    :cond_18
    const-string v8, "ENABLED"

    goto :goto_f

    :cond_19
    const-string v8, "WHITELISTED"

    goto :goto_f

    :cond_1a
    const-string v8, "DISABLED"

    .line 46
    :goto_f
    invoke-virtual {v2, v13, v8}, Ls60;->l(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v12, v6}, Ls60;->k(Ljava/lang/String;Ljava/lang/Number;)V

    goto :goto_10

    :cond_1b
    const-string v6, "NOT_APPLICABLE"

    .line 48
    invoke-virtual {v2, v13, v6}, Ls60;->l(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v12, v6}, Ls60;->k(Ljava/lang/String;Ljava/lang/Number;)V

    .line 50
    :cond_1c
    :goto_10
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, "locale"

    invoke-virtual {v2, v8, v6}, Ls60;->l(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    const-string v8, "language"

    invoke-virtual {v2, v8, v6}, Ls60;->l(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v6

    const-string v8, "time_zone"

    invoke-virtual {v2, v8, v6}, Ls60;->l(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object v6, p0, Lcom/vungle/warren/VungleApiClient;->context:Landroid/content/Context;

    const-string v8, "audio"

    invoke-virtual {v6, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/AudioManager;

    if-eqz v6, :cond_1e

    .line 54
    invoke-virtual {v6, v10}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v8

    .line 55
    invoke-virtual {v6, v10}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v6

    int-to-float v9, v6

    int-to-float v8, v8

    div-float/2addr v9, v8

    .line 56
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    const-string v9, "volume_level"

    invoke-virtual {v2, v9, v8}, Ls60;->k(Ljava/lang/String;Ljava/lang/Number;)V

    if-lez v6, :cond_1d

    const/4 v6, 0x1

    goto :goto_11

    :cond_1d
    const/4 v6, 0x0

    .line 57
    :goto_11
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v8, "sound_enabled"

    invoke-virtual {v2, v8, v6}, Ls60;->k(Ljava/lang/String;Ljava/lang/Number;)V

    .line 58
    :cond_1e
    iget-object v6, p0, Lcom/vungle/warren/VungleApiClient;->cacheManager:Lcom/vungle/warren/persistence/CacheManager;

    invoke-virtual {v6}, Lcom/vungle/warren/persistence/CacheManager;->getCache()Ljava/io/File;

    move-result-object v6

    .line 59
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 60
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1f

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 61
    iget-object v6, p0, Lcom/vungle/warren/VungleApiClient;->cacheManager:Lcom/vungle/warren/persistence/CacheManager;

    invoke-virtual {v6}, Lcom/vungle/warren/persistence/CacheManager;->getBytesAvailable()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v8, "storage_bytes_available"

    invoke-virtual {v2, v8, v6}, Ls60;->k(Ljava/lang/String;Ljava/lang/Number;)V

    .line 62
    :cond_1f
    sget-object v6, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_20

    .line 63
    iget-object v0, p0, Lcom/vungle/warren/VungleApiClient;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v6, "amazon.hardware.fire_tv"

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    goto :goto_13

    :cond_20
    const/16 v6, 0x17

    if-lt v3, v6, :cond_23

    .line 64
    iget-object v6, p0, Lcom/vungle/warren/VungleApiClient;->context:Landroid/content/Context;

    const-string v8, "uimode"

    invoke-virtual {v6, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/UiModeManager;

    .line 65
    invoke-virtual {v6}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v6

    if-ne v6, v0, :cond_22

    :cond_21
    :goto_12
    const/4 v0, 0x1

    goto :goto_13

    :cond_22
    const/4 v0, 0x0

    goto :goto_13

    .line 66
    :cond_23
    iget-object v0, p0, Lcom/vungle/warren/VungleApiClient;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v6, "com.google.android.tv"

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/vungle/warren/VungleApiClient;->context:Landroid/content/Context;

    .line 67
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v6, "android.hardware.touchscreen"

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    goto :goto_12

    .line 68
    :goto_13
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v6, "is_tv"

    invoke-virtual {v2, v6, v0}, Ls60;->j(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 69
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v6, "os_api_level"

    invoke-virtual {v2, v6, v0}, Ls60;->k(Ljava/lang/String;Ljava/lang/Number;)V

    const/16 v0, 0x1a

    if-lt v3, v0, :cond_24

    .line 70
    :try_start_8
    iget-object v0, p0, Lcom/vungle/warren/VungleApiClient;->context:Landroid/content/Context;

    const-string v3, "android.permission.REQUEST_INSTALL_PACKAGES"

    .line 71
    invoke-virtual {v0, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_25

    .line 72
    iget-object v0, p0, Lcom/vungle/warren/VungleApiClient;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->canRequestPackageInstalls()Z

    move-result v0

    move v4, v0

    goto :goto_14

    .line 73
    :cond_24
    iget-object v0, p0, Lcom/vungle/warren/VungleApiClient;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "install_non_market_apps"

    invoke-static {v0, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0
    :try_end_8
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_8 .. :try_end_8} :catch_9

    if-ne v0, v5, :cond_25

    const/4 v4, 0x1

    goto :goto_14

    :catch_9
    move-exception v0

    .line 74
    sget-object v3, Lcom/vungle/warren/VungleApiClient;->TAG:Ljava/lang/String;

    const-string v5, "isInstallNonMarketAppsEnabled Settings not found"

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 75
    :cond_25
    :goto_14
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v3, "is_sideload_enabled"

    invoke-virtual {v2, v3, v0}, Ls60;->j(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 76
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v3, "mounted"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 77
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "sd_card_available"

    invoke-virtual {v2, v3, v0}, Ls60;->k(Ljava/lang/String;Ljava/lang/Number;)V

    .line 78
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v3, "os_name"

    invoke-virtual {v2, v3, v0}, Ls60;->l(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "vduid"

    .line 79
    invoke-virtual {v2, v0, v7}, Ls60;->l(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/vungle/warren/VungleApiClient;->deviceBody:Ls60;

    const-string v3, "ext"

    invoke-virtual {v0, v3}, Ls60;->p(Ljava/lang/String;)Ls60;

    move-result-object v0

    const-string v3, "vungle"

    invoke-virtual {v0, v3}, Ls60;->p(Ljava/lang/String;)Ls60;

    move-result-object v0

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    const-string v1, "amazon"

    goto :goto_15

    :cond_26
    const-string v1, "android"

    :goto_15
    invoke-virtual {v0, v1, v2}, Ls60;->i(Ljava/lang/String;Lp60;)V

    .line 81
    iget-object v0, p0, Lcom/vungle/warren/VungleApiClient;->deviceBody:Ls60;

    return-object v0
.end method

.method public static getHeaderUa()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/vungle/warren/VungleApiClient;->headerUa:Ljava/lang/String;

    return-object v0
.end method

.method private getUserAgentFromCookie()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/VungleApiClient;->repository:Lcom/vungle/warren/persistence/Repository;

    const-class v1, Lcom/vungle/warren/model/Cookie;

    const-string v2, "userAgent"

    invoke-virtual {v0, v2, v1}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/model/Cookie;

    const-string v1, "http.agent"

    if-nez v0, :cond_0

    .line 2
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0, v2}, Lcom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method private getUserBody()Ls60;
    .locals 12

    .line 1
    const-class v0, Lcom/vungle/warren/model/Cookie;

    new-instance v1, Ls60;

    invoke-direct {v1}, Ls60;-><init>()V

    .line 2
    iget-object v2, p0, Lcom/vungle/warren/VungleApiClient;->repository:Lcom/vungle/warren/persistence/Repository;

    const-string v3, "consentIsImportantToVungle"

    invoke-virtual {v2, v3, v0}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v2

    iget-object v3, p0, Lcom/vungle/warren/VungleApiClient;->timeoutProvider:Lcom/vungle/warren/utility/TimeoutProvider;

    .line 3
    invoke-interface {v3}, Lcom/vungle/warren/utility/TimeoutProvider;->getTimeout()J

    move-result-wide v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Lcom/vungle/warren/persistence/FutureResult;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vungle/warren/model/Cookie;

    const-string v3, "consent_message_version"

    const-string v4, "consent_source"

    const-string v5, "consent_status"

    const-string v6, ""

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v2, v5}, Lcom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 5
    invoke-virtual {v2, v4}, Lcom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "timestamp"

    .line 6
    invoke-virtual {v2, v9}, Lcom/vungle/warren/model/Cookie;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 7
    invoke-virtual {v2, v3}, Lcom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-wide/16 v9, 0x0

    const-string v7, "unknown"

    const-string v8, "no_interaction"

    move-object v2, v6

    .line 8
    :goto_0
    new-instance v11, Ls60;

    invoke-direct {v11}, Ls60;-><init>()V

    .line 9
    invoke-virtual {v11, v5, v7}, Ls60;->l(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v11, v4, v8}, Ls60;->l(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "consent_timestamp"

    invoke-virtual {v11, v5, v4}, Ls60;->k(Ljava/lang/String;Ljava/lang/Number;)V

    .line 12
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    move-object v6, v2

    :goto_1
    invoke-virtual {v11, v3, v6}, Ls60;->l(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "gdpr"

    .line 13
    invoke-virtual {v1, v2, v11}, Ls60;->i(Ljava/lang/String;Lp60;)V

    .line 14
    iget-object v2, p0, Lcom/vungle/warren/VungleApiClient;->repository:Lcom/vungle/warren/persistence/Repository;

    const-string v3, "ccpaIsImportantToVungle"

    invoke-virtual {v2, v3, v0}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/model/Cookie;

    if-eqz v0, :cond_2

    const-string v2, "ccpa_status"

    .line 15
    invoke-virtual {v0, v2}, Lcom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    const-string v0, "opted_in"

    .line 16
    :goto_2
    new-instance v2, Ls60;

    invoke-direct {v2}, Ls60;-><init>()V

    const-string v3, "status"

    .line 17
    invoke-virtual {v2, v3, v0}, Ls60;->l(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ccpa"

    .line 18
    invoke-virtual {v1, v0, v2}, Ls60;->i(Ljava/lang/String;Lp60;)V

    return-object v1
.end method

.method private initUserAgentLazy()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vungle/warren/VungleApiClient$3;

    invoke-direct {v1, p0}, Lcom/vungle/warren/VungleApiClient$3;-><init>(Lcom/vungle/warren/VungleApiClient;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private setAppId(Ljava/lang/String;Ls60;)V
    .locals 1

    const-string v0, "id"

    .line 2
    invoke-virtual {p2, v0, p1}, Ls60;->l(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setHeaderUa(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/vungle/warren/VungleApiClient;->headerUa:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method addPlaySvcAvailabilityInCookie(Z)V
    .locals 2

    .line 1
    new-instance v0, Lcom/vungle/warren/model/Cookie;

    const-string v1, "isPlaySvcAvailable"

    invoke-direct {v0, v1}, Lcom/vungle/warren/model/Cookie;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lcom/vungle/warren/VungleApiClient;->repository:Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {p1, v0}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;)V

    return-void
.end method

.method canCallWillPlayAd()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/vungle/warren/VungleApiClient;->willPlayAdEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vungle/warren/VungleApiClient;->willPlayAdEndpoint:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public config()Lcom/vungle/warren/network/Response;
    .locals 13

    .line 1
    new-instance v0, Ls60;

    invoke-direct {v0}, Ls60;-><init>()V

    .line 2
    invoke-direct {p0}, Lcom/vungle/warren/VungleApiClient;->getDeviceBody()Ls60;

    move-result-object v1

    const-string v2, "device"

    invoke-virtual {v0, v2, v1}, Ls60;->i(Ljava/lang/String;Lp60;)V

    .line 3
    iget-object v1, p0, Lcom/vungle/warren/VungleApiClient;->appBody:Ls60;

    const-string v2, "app"

    invoke-virtual {v0, v2, v1}, Ls60;->i(Ljava/lang/String;Lp60;)V

    .line 4
    invoke-direct {p0}, Lcom/vungle/warren/VungleApiClient;->getUserBody()Ls60;

    move-result-object v1

    const-string v2, "user"

    invoke-virtual {v0, v2, v1}, Ls60;->i(Ljava/lang/String;Lp60;)V

    .line 5
    iget-object v1, p0, Lcom/vungle/warren/VungleApiClient;->api:Lcom/vungle/warren/network/VungleApi;

    invoke-static {}, Lcom/vungle/warren/VungleApiClient;->getHeaderUa()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/vungle/warren/network/VungleApi;->config(Ljava/lang/String;Ls60;)Lcom/vungle/warren/network/Call;

    move-result-object v0

    invoke-interface {v0}, Lcom/vungle/warren/network/Call;->execute()Lcom/vungle/warren/network/Response;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/vungle/warren/network/Response;->isSuccessful()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/vungle/warren/network/Response;->body()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls60;

    .line 8
    sget-object v2, Lcom/vungle/warren/VungleApiClient;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Config Response: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string v3, "sleep"

    .line 9
    invoke-static {v1, v3}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lp60;Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x3

    const-string v5, "Error Initializing Vungle. Please try again. "

    if-eqz v3, :cond_2

    const-string v0, "info"

    .line 10
    invoke-static {v1, v0}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lp60;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, v0}, Ls60;->n(Ljava/lang/String;)Lp60;

    move-result-object v0

    invoke-virtual {v0}, Lp60;->h()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    .line 11
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    new-instance v0, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v0, v4}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    throw v0

    :cond_2
    const-string v3, "endpoints"

    .line 13
    invoke-static {v1, v3}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lp60;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 14
    invoke-virtual {v1, v3}, Ls60;->p(Ljava/lang/String;)Ls60;

    move-result-object v3

    const-string v6, "new"

    .line 15
    invoke-virtual {v3, v6}, Ls60;->n(Ljava/lang/String;)Lp60;

    move-result-object v6

    invoke-virtual {v6}, Lp60;->h()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ldh0;->n(Ljava/lang/String;)Ldh0;

    move-result-object v6

    const-string v7, "ads"

    .line 16
    invoke-virtual {v3, v7}, Ls60;->n(Ljava/lang/String;)Lp60;

    move-result-object v7

    invoke-virtual {v7}, Lp60;->h()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ldh0;->n(Ljava/lang/String;)Ldh0;

    move-result-object v7

    const-string v8, "will_play_ad"

    .line 17
    invoke-virtual {v3, v8}, Ls60;->n(Ljava/lang/String;)Lp60;

    move-result-object v9

    invoke-virtual {v9}, Lp60;->h()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ldh0;->n(Ljava/lang/String;)Ldh0;

    move-result-object v9

    const-string v10, "report_ad"

    .line 18
    invoke-virtual {v3, v10}, Ls60;->n(Ljava/lang/String;)Lp60;

    move-result-object v10

    invoke-virtual {v10}, Lp60;->h()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ldh0;->n(Ljava/lang/String;)Ldh0;

    move-result-object v10

    const-string v11, "ri"

    .line 19
    invoke-virtual {v3, v11}, Ls60;->n(Ljava/lang/String;)Lp60;

    move-result-object v11

    invoke-virtual {v11}, Lp60;->h()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ldh0;->n(Ljava/lang/String;)Ldh0;

    move-result-object v11

    const-string v12, "log"

    .line 20
    invoke-virtual {v3, v12}, Ls60;->n(Ljava/lang/String;)Lp60;

    move-result-object v3

    invoke-virtual {v3}, Lp60;->h()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ldh0;->n(Ljava/lang/String;)Ldh0;

    move-result-object v3

    if-eqz v6, :cond_5

    if-eqz v7, :cond_5

    if-eqz v9, :cond_5

    if-eqz v10, :cond_5

    if-eqz v11, :cond_5

    if-eqz v3, :cond_5

    .line 21
    invoke-virtual {v6}, Ldh0;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vungle/warren/VungleApiClient;->newEndpoint:Ljava/lang/String;

    .line 22
    invoke-virtual {v7}, Ldh0;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vungle/warren/VungleApiClient;->requestAdEndpoint:Ljava/lang/String;

    .line 23
    invoke-virtual {v9}, Ldh0;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vungle/warren/VungleApiClient;->willPlayAdEndpoint:Ljava/lang/String;

    .line 24
    invoke-virtual {v10}, Ldh0;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vungle/warren/VungleApiClient;->reportAdEndpoint:Ljava/lang/String;

    .line 25
    invoke-virtual {v11}, Ldh0;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vungle/warren/VungleApiClient;->riEndpoint:Ljava/lang/String;

    .line 26
    invoke-virtual {v3}, Ldh0;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vungle/warren/VungleApiClient;->logEndpoint:Ljava/lang/String;

    .line 27
    invoke-virtual {v1, v8}, Ls60;->p(Ljava/lang/String;)Ls60;

    move-result-object v2

    const-string v3, "request_timeout"

    .line 28
    invoke-virtual {v2, v3}, Ls60;->n(Ljava/lang/String;)Lp60;

    move-result-object v3

    invoke-virtual {v3}, Lp60;->d()I

    move-result v3

    iput v3, p0, Lcom/vungle/warren/VungleApiClient;->willPlayAdTimeout:I

    const-string v3, "enabled"

    .line 29
    invoke-virtual {v2, v3}, Ls60;->n(Ljava/lang/String;)Lp60;

    move-result-object v2

    invoke-virtual {v2}, Lp60;->a()Z

    move-result v2

    iput-boolean v2, p0, Lcom/vungle/warren/VungleApiClient;->willPlayAdEnabled:Z

    const-string v2, "viewability"

    .line 30
    invoke-virtual {v1, v2}, Ls60;->p(Ljava/lang/String;)Ls60;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "om"

    .line 31
    invoke-static {v1, v3, v2}, Lcom/vungle/warren/model/JsonUtil;->getAsBoolean(Lp60;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/vungle/warren/VungleApiClient;->enableOm:Z

    .line 32
    iget-boolean v1, p0, Lcom/vungle/warren/VungleApiClient;->willPlayAdEnabled:Z

    if-eqz v1, :cond_3

    .line 33
    iget-object v1, p0, Lcom/vungle/warren/VungleApiClient;->client:Lgh0;

    invoke-virtual {v1}, Lgh0;->j()Lgh0$b;

    move-result-object v1

    iget v2, p0, Lcom/vungle/warren/VungleApiClient;->willPlayAdTimeout:I

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 34
    invoke-virtual {v1, v2, v3, v4}, Lgh0$b;->g(JLjava/util/concurrent/TimeUnit;)Lgh0$b;

    .line 35
    invoke-virtual {v1}, Lgh0$b;->b()Lgh0;

    move-result-object v1

    .line 36
    new-instance v2, Lcom/vungle/warren/network/APIFactory;

    const-string v3, "https://api.vungle.com/"

    invoke-direct {v2, v1, v3}, Lcom/vungle/warren/network/APIFactory;-><init>(Log0$a;Ljava/lang/String;)V

    .line 37
    invoke-virtual {v2}, Lcom/vungle/warren/network/APIFactory;->createAPI()Lcom/vungle/warren/network/VungleApi;

    move-result-object v1

    iput-object v1, p0, Lcom/vungle/warren/VungleApiClient;->timeoutApi:Lcom/vungle/warren/network/VungleApi;

    .line 38
    :cond_3
    invoke-virtual {p0}, Lcom/vungle/warren/VungleApiClient;->getOmEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 39
    iget-object v1, p0, Lcom/vungle/warren/VungleApiClient;->omInjector:Lcom/vungle/warren/omsdk/OMInjector;

    invoke-virtual {v1}, Lcom/vungle/warren/omsdk/OMInjector;->init()V

    :cond_4
    return-object v0

    .line 40
    :cond_5
    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    new-instance v0, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v0, v4}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    throw v0

    .line 42
    :cond_6
    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    new-instance v0, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v0, v4}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    throw v0
.end method

.method public getOmEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/vungle/warren/VungleApiClient;->enableOm:Z

    return v0
.end method

.method getPlayServicesAvailabilityFromAPI()Ljava/lang/Boolean;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/common/d;->c()Lcom/google/android/gms/common/d;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2
    iget-object v3, p0, Lcom/vungle/warren/VungleApiClient;->context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/d;->d(Landroid/content/Context;)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/vungle/warren/VungleApiClient;->addPlaySvcAvailabilityInCookie(Z)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 4
    :catch_0
    sget-object v0, Lcom/vungle/warren/VungleApiClient;->TAG:Ljava/lang/String;

    const-string v2, "Unexpected exception from Play services lib."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 5
    :catch_1
    sget-object v1, Lcom/vungle/warren/VungleApiClient;->TAG:Ljava/lang/String;

    const-string v2, "Play services Not available"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 7
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/vungle/warren/VungleApiClient;->addPlaySvcAvailabilityInCookie(Z)V
    :try_end_1
    .catch Lcom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 8
    :catch_2
    sget-object v0, Lcom/vungle/warren/VungleApiClient;->TAG:Ljava/lang/String;

    const-string v2, "Failure to write GPS availability to DB"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-object v1
.end method

.method getPlayServicesAvailabilityFromCookie()Ljava/lang/Boolean;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/VungleApiClient;->repository:Lcom/vungle/warren/persistence/Repository;

    const-class v1, Lcom/vungle/warren/model/Cookie;

    const-string v2, "isPlaySvcAvailable"

    invoke-virtual {v0, v2, v1}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/warren/VungleApiClient;->timeoutProvider:Lcom/vungle/warren/utility/TimeoutProvider;

    .line 2
    invoke-interface {v1}, Lcom/vungle/warren/utility/TimeoutProvider;->getTimeout()J

    move-result-wide v3

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v3, v4, v1}, Lcom/vungle/warren/persistence/FutureResult;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/model/Cookie;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, v2}, Lcom/vungle/warren/model/Cookie;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getRetryAfterHeaderValue(Lcom/vungle/warren/network/Response;)J
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/vungle/warren/network/Response;->headers()Lch0;

    move-result-object p1

    const-string v0, "Retry-After"

    invoke-virtual {p1, v0}, Lch0;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    return-wide v0

    :catch_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public init()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/VungleApiClient;->context:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/vungle/warren/VungleApiClient;->init(Landroid/content/Context;)V

    return-void
.end method

.method declared-synchronized init(Landroid/content/Context;)V
    .locals 5

    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Ls60;

    invoke-direct {v0}, Ls60;-><init>()V

    const-string v1, "bundle"

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ls60;->l(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    .line 4
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v1, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :try_start_2
    const-string v2, "ver"

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "1.0"

    .line 5
    :goto_0
    invoke-virtual {v0, v2, v1}, Ls60;->l(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    new-instance v1, Ls60;

    invoke-direct {v1}, Ls60;-><init>()V

    const-string v2, "make"

    .line 7
    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ls60;->l(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "model"

    .line 8
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Ls60;->l(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "osv"

    .line 9
    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Ls60;->l(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "carrier"

    const-string v4, "phone"

    .line 10
    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ls60;->l(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "os"

    const-string v4, "Amazon"

    .line 11
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "amazon"

    goto :goto_1

    :cond_1
    const-string v3, "android"

    :goto_1
    invoke-virtual {v1, v2, v3}, Ls60;->l(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v3, "window"

    .line 13
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 14
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    const-string p1, "w"

    .line 15
    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Ls60;->k(Ljava/lang/String;Ljava/lang/Number;)V

    const-string p1, "h"

    .line 16
    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ls60;->k(Ljava/lang/String;Ljava/lang/Number;)V

    .line 17
    new-instance p1, Ls60;

    invoke-direct {p1}, Ls60;-><init>()V

    .line 18
    new-instance v2, Ls60;

    invoke-direct {v2}, Ls60;-><init>()V

    const-string v3, "vungle"

    .line 19
    invoke-virtual {p1, v3, v2}, Ls60;->i(Ljava/lang/String;Lp60;)V

    const-string v2, "ext"

    .line 20
    invoke-virtual {v1, v2, p1}, Ls60;->i(Ljava/lang/String;Lp60;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 21
    :try_start_3
    invoke-direct {p0}, Lcom/vungle/warren/VungleApiClient;->getUserAgentFromCookie()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/vungle/warren/VungleApiClient;->uaString:Ljava/lang/String;

    .line 22
    invoke-direct {p0}, Lcom/vungle/warren/VungleApiClient;->initUserAgentLazy()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_1
    move-exception p1

    .line 23
    :try_start_4
    sget-object v2, Lcom/vungle/warren/VungleApiClient;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot Get UserAgent. Setting Default Device UserAgent."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    const-string p1, "ua"

    .line 24
    iget-object v2, p0, Lcom/vungle/warren/VungleApiClient;->uaString:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Ls60;->l(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    iput-object v1, p0, Lcom/vungle/warren/VungleApiClient;->deviceBody:Ls60;

    .line 26
    iput-object v0, p0, Lcom/vungle/warren/VungleApiClient;->appBody:Ls60;

    .line 27
    invoke-virtual {p0}, Lcom/vungle/warren/VungleApiClient;->getPlayServicesAvailabilityFromAPI()Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/vungle/warren/VungleApiClient;->isGooglePlayServicesAvailable:Ljava/lang/Boolean;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 28
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public isGooglePlayServicesAvailable()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/VungleApiClient;->isGooglePlayServicesAvailable:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/vungle/warren/VungleApiClient;->getPlayServicesAvailabilityFromCookie()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/warren/VungleApiClient;->isGooglePlayServicesAvailable:Ljava/lang/Boolean;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/vungle/warren/VungleApiClient;->isGooglePlayServicesAvailable:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/vungle/warren/VungleApiClient;->getPlayServicesAvailabilityFromAPI()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/warren/VungleApiClient;->isGooglePlayServicesAvailable:Ljava/lang/Boolean;

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/vungle/warren/VungleApiClient;->isGooglePlayServicesAvailable:Ljava/lang/Boolean;

    return-object v0
.end method

.method overrideApi(Lcom/vungle/warren/network/VungleApi;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/VungleApiClient;->api:Lcom/vungle/warren/network/VungleApi;

    return-void
.end method

.method public pingTPAT(Ljava/lang/String;)Z
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "Invalid URL : "

    if-nez v0, :cond_4

    invoke-static {p1}, Ldh0;->n(Ljava/lang/String;)Ldh0;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    const/4 v3, 0x1

    if-lt v1, v2, :cond_0

    .line 4
    invoke-static {}, Landroid/security/NetworkSecurityPolicy;->getInstance()Landroid/security/NetworkSecurityPolicy;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/security/NetworkSecurityPolicy;->isCleartextTrafficPermitted(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x17

    if-lt v1, v0, :cond_1

    .line 5
    invoke-static {}, Landroid/security/NetworkSecurityPolicy;->getInstance()Landroid/security/NetworkSecurityPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/NetworkSecurityPolicy;->isCleartextTrafficPermitted()Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_3

    .line 6
    invoke-static {p1}, Landroid/webkit/URLUtil;->isHttpUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    new-instance p1, Lcom/vungle/warren/VungleApiClient$ClearTextTrafficException;

    const-string v0, "Clear Text Traffic is blocked"

    invoke-direct {p1, v0}, Lcom/vungle/warren/VungleApiClient$ClearTextTrafficException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_3
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/vungle/warren/VungleApiClient;->api:Lcom/vungle/warren/network/VungleApi;

    iget-object v1, p0, Lcom/vungle/warren/VungleApiClient;->uaString:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/vungle/warren/network/VungleApi;->pingTPAT(Ljava/lang/String;Ljava/lang/String;)Lcom/vungle/warren/network/Call;

    move-result-object p1

    invoke-interface {p1}, Lcom/vungle/warren/network/Call;->execute()Lcom/vungle/warren/network/Response;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return v3

    :catch_0
    const/4 p1, 0x0

    return p1

    .line 9
    :catch_1
    new-instance v0, Ljava/net/MalformedURLException;

    invoke-static {v1, p1}, Lic;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10
    :cond_4
    new-instance v0, Ljava/net/MalformedURLException;

    invoke-static {v1, p1}, Lic;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public platformIsNotSupported()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/vungle/warren/VungleApiClient;->okHttpSupported:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public reportAd(Ls60;)Lcom/vungle/warren/network/Call;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls60;",
            ")",
            "Lcom/vungle/warren/network/Call<",
            "Ls60;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/VungleApiClient;->reportAdEndpoint:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ls60;

    invoke-direct {v0}, Ls60;-><init>()V

    .line 3
    invoke-direct {p0}, Lcom/vungle/warren/VungleApiClient;->getDeviceBody()Ls60;

    move-result-object v1

    const-string v2, "device"

    invoke-virtual {v0, v2, v1}, Ls60;->i(Ljava/lang/String;Lp60;)V

    .line 4
    iget-object v1, p0, Lcom/vungle/warren/VungleApiClient;->appBody:Ls60;

    const-string v2, "app"

    invoke-virtual {v0, v2, v1}, Ls60;->i(Ljava/lang/String;Lp60;)V

    const-string v1, "request"

    .line 5
    invoke-virtual {v0, v1, p1}, Ls60;->i(Ljava/lang/String;Lp60;)V

    .line 6
    invoke-direct {p0}, Lcom/vungle/warren/VungleApiClient;->getUserBody()Ls60;

    move-result-object p1

    const-string v1, "user"

    invoke-virtual {v0, v1, p1}, Ls60;->i(Ljava/lang/String;Lp60;)V

    .line 7
    iget-object p1, p0, Lcom/vungle/warren/VungleApiClient;->gzipApi:Lcom/vungle/warren/network/VungleApi;

    invoke-static {}, Lcom/vungle/warren/VungleApiClient;->getHeaderUa()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/vungle/warren/VungleApiClient;->reportAdEndpoint:Ljava/lang/String;

    invoke-interface {p1, v1, v2, v0}, Lcom/vungle/warren/network/VungleApi;->reportAd(Ljava/lang/String;Ljava/lang/String;Ls60;)Lcom/vungle/warren/network/Call;

    move-result-object p1

    return-object p1

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "API Client not configured yet! Must call /config first."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reportNew()Lcom/vungle/warren/network/Call;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vungle/warren/network/Call<",
            "Ls60;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/VungleApiClient;->newEndpoint:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 2
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 3
    iget-object v1, p0, Lcom/vungle/warren/VungleApiClient;->appBody:Ls60;

    const-string v2, "id"

    invoke-virtual {v1, v2}, Ls60;->n(Ljava/lang/String;)Lp60;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/vungle/warren/VungleApiClient;->deviceBody:Ls60;

    const-string v3, "ifa"

    invoke-virtual {v2, v3}, Ls60;->n(Ljava/lang/String;)Lp60;

    move-result-object v2

    const-string v4, ""

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v1}, Lp60;->h()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v4

    :goto_0
    const-string v5, "app_id"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {v2}, Lp60;->h()Ljava/lang/String;

    move-result-object v4

    :cond_1
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v1, p0, Lcom/vungle/warren/VungleApiClient;->api:Lcom/vungle/warren/network/VungleApi;

    invoke-static {}, Lcom/vungle/warren/VungleApiClient;->getHeaderUa()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/vungle/warren/VungleApiClient;->newEndpoint:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/vungle/warren/network/VungleApi;->reportNew(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/vungle/warren/network/Call;

    move-result-object v0

    return-object v0

    .line 8
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "API Client not configured yet! Must call /config first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestAd(Ljava/lang/String;Ljava/lang/String;ZLs60;)Lcom/vungle/warren/network/Call;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ls60;",
            ")",
            "Lcom/vungle/warren/network/Call<",
            "Ls60;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/VungleApiClient;->requestAdEndpoint:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 2
    new-instance v0, Ls60;

    invoke-direct {v0}, Ls60;-><init>()V

    .line 3
    invoke-direct {p0}, Lcom/vungle/warren/VungleApiClient;->getDeviceBody()Ls60;

    move-result-object v1

    const-string v2, "device"

    invoke-virtual {v0, v2, v1}, Ls60;->i(Ljava/lang/String;Lp60;)V

    .line 4
    iget-object v1, p0, Lcom/vungle/warren/VungleApiClient;->appBody:Ls60;

    const-string v2, "app"

    invoke-virtual {v0, v2, v1}, Ls60;->i(Ljava/lang/String;Lp60;)V

    .line 5
    invoke-direct {p0}, Lcom/vungle/warren/VungleApiClient;->getUserBody()Ls60;

    move-result-object v1

    if-eqz p4, :cond_0

    const-string v2, "vision"

    .line 6
    invoke-virtual {v1, v2, p4}, Ls60;->i(Ljava/lang/String;Lp60;)V

    :cond_0
    const-string p4, "user"

    .line 7
    invoke-virtual {v0, p4, v1}, Ls60;->i(Ljava/lang/String;Lp60;)V

    .line 8
    new-instance p4, Ls60;

    invoke-direct {p4}, Ls60;-><init>()V

    .line 9
    new-instance v1, Lm60;

    invoke-direct {v1}, Lm60;-><init>()V

    .line 10
    invoke-virtual {v1, p1}, Lm60;->j(Ljava/lang/String;)V

    const-string p1, "placements"

    .line 11
    invoke-virtual {p4, p1, v1}, Ls60;->i(Ljava/lang/String;Lp60;)V

    .line 12
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p3, "header_bidding"

    invoke-virtual {p4, p3, p1}, Ls60;->j(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 13
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "ad_size"

    .line 14
    invoke-virtual {p4, p1, p2}, Ls60;->l(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string p1, "request"

    .line 15
    invoke-virtual {v0, p1, p4}, Ls60;->i(Ljava/lang/String;Lp60;)V

    .line 16
    iget-object p1, p0, Lcom/vungle/warren/VungleApiClient;->gzipApi:Lcom/vungle/warren/network/VungleApi;

    invoke-static {}, Lcom/vungle/warren/VungleApiClient;->getHeaderUa()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/vungle/warren/VungleApiClient;->requestAdEndpoint:Ljava/lang/String;

    invoke-interface {p1, p2, p3, v0}, Lcom/vungle/warren/network/VungleApi;->ads(Ljava/lang/String;Ljava/lang/String;Ls60;)Lcom/vungle/warren/network/Call;

    move-result-object p1

    return-object p1

    .line 17
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "API Client not configured yet! Must call /config first."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public ri(Ls60;)Lcom/vungle/warren/network/Call;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls60;",
            ")",
            "Lcom/vungle/warren/network/Call<",
            "Ls60;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/VungleApiClient;->riEndpoint:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ls60;

    invoke-direct {v0}, Ls60;-><init>()V

    .line 3
    invoke-direct {p0}, Lcom/vungle/warren/VungleApiClient;->getDeviceBody()Ls60;

    move-result-object v1

    const-string v2, "device"

    invoke-virtual {v0, v2, v1}, Ls60;->i(Ljava/lang/String;Lp60;)V

    .line 4
    iget-object v1, p0, Lcom/vungle/warren/VungleApiClient;->appBody:Ls60;

    const-string v2, "app"

    invoke-virtual {v0, v2, v1}, Ls60;->i(Ljava/lang/String;Lp60;)V

    const-string v1, "request"

    .line 5
    invoke-virtual {v0, v1, p1}, Ls60;->i(Ljava/lang/String;Lp60;)V

    .line 6
    iget-object p1, p0, Lcom/vungle/warren/VungleApiClient;->api:Lcom/vungle/warren/network/VungleApi;

    invoke-static {}, Lcom/vungle/warren/VungleApiClient;->getHeaderUa()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/vungle/warren/VungleApiClient;->riEndpoint:Ljava/lang/String;

    invoke-interface {p1, v1, v2, v0}, Lcom/vungle/warren/network/VungleApi;->ri(Ljava/lang/String;Ljava/lang/String;Ls60;)Lcom/vungle/warren/network/Call;

    move-result-object p1

    return-object p1

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "API Client not configured yet! Must call /config first."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public sendLog(Ls60;)Lcom/vungle/warren/network/Call;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls60;",
            ")",
            "Lcom/vungle/warren/network/Call<",
            "Ls60;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/VungleApiClient;->logEndpoint:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/VungleApiClient;->gzipApi:Lcom/vungle/warren/network/VungleApi;

    invoke-static {}, Lcom/vungle/warren/VungleApiClient;->getHeaderUa()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/vungle/warren/VungleApiClient;->logEndpoint:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1}, Lcom/vungle/warren/network/VungleApi;->sendLog(Ljava/lang/String;Ljava/lang/String;Ls60;)Lcom/vungle/warren/network/Call;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "API Client not configured yet! Must call /config first."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method setAppId(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/VungleApiClient;->appBody:Ls60;

    invoke-direct {p0, p1, v0}, Lcom/vungle/warren/VungleApiClient;->setAppId(Ljava/lang/String;Ls60;)V

    return-void
.end method

.method public setDefaultIdFallbackDisabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/vungle/warren/VungleApiClient;->defaultIdFallbackDisabled:Z

    return-void
.end method

.method willPlayAd(Ljava/lang/String;ZLjava/lang/String;)Lcom/vungle/warren/network/Call;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            ")",
            "Lcom/vungle/warren/network/Call<",
            "Ls60;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ls60;

    invoke-direct {v0}, Ls60;-><init>()V

    .line 2
    invoke-direct {p0}, Lcom/vungle/warren/VungleApiClient;->getDeviceBody()Ls60;

    move-result-object v1

    const-string v2, "device"

    invoke-virtual {v0, v2, v1}, Ls60;->i(Ljava/lang/String;Lp60;)V

    .line 3
    iget-object v1, p0, Lcom/vungle/warren/VungleApiClient;->appBody:Ls60;

    const-string v2, "app"

    invoke-virtual {v0, v2, v1}, Ls60;->i(Ljava/lang/String;Lp60;)V

    .line 4
    invoke-direct {p0}, Lcom/vungle/warren/VungleApiClient;->getUserBody()Ls60;

    move-result-object v1

    const-string v2, "user"

    invoke-virtual {v0, v2, v1}, Ls60;->i(Ljava/lang/String;Lp60;)V

    .line 5
    new-instance v1, Ls60;

    invoke-direct {v1}, Ls60;-><init>()V

    .line 6
    new-instance v2, Ls60;

    invoke-direct {v2}, Ls60;-><init>()V

    const-string v3, "reference_id"

    .line 7
    invoke-virtual {v2, v3, p1}, Ls60;->l(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p2, "is_auto_cached"

    invoke-virtual {v2, p2, p1}, Ls60;->j(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string p1, "placement"

    .line 9
    invoke-virtual {v1, p1, v2}, Ls60;->i(Ljava/lang/String;Lp60;)V

    const-string p1, "ad_token"

    .line 10
    invoke-virtual {v1, p1, p3}, Ls60;->l(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "request"

    .line 11
    invoke-virtual {v0, p1, v1}, Ls60;->i(Ljava/lang/String;Lp60;)V

    .line 12
    iget-object p1, p0, Lcom/vungle/warren/VungleApiClient;->timeoutApi:Lcom/vungle/warren/network/VungleApi;

    invoke-static {}, Lcom/vungle/warren/VungleApiClient;->getHeaderUa()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/vungle/warren/VungleApiClient;->willPlayAdEndpoint:Ljava/lang/String;

    invoke-interface {p1, p2, p3, v0}, Lcom/vungle/warren/network/VungleApi;->willPlayAd(Ljava/lang/String;Ljava/lang/String;Ls60;)Lcom/vungle/warren/network/Call;

    move-result-object p1

    return-object p1
.end method
