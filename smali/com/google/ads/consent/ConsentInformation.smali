.class public Lcom/google/ads/consent/ConsentInformation;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/consent/ConsentInformation$ConsentInfoUpdateTask;,
        Lcom/google/ads/consent/ConsentInformation$ServerResponse;,
        Lcom/google/ads/consent/ConsentInformation$AdNetworkLookupResponse;,
        Lcom/google/ads/consent/ConsentInformation$ConsentInfoUpdateResponse;
    }
.end annotation


# static fields
.field private static final CONSENT_DATA_KEY:Ljava/lang/String; = "consent_string"

.field private static final MOBILE_ADS_SERVER_URL:Ljava/lang/String; = "https://adservice.google.com/getconfig/pubvendors"

.field private static final PREFERENCES_FILE_KEY:Ljava/lang/String; = "mobileads_consent"

.field private static final TAG:Ljava/lang/String; = "ConsentInformation"

.field private static instance:Lcom/google/ads/consent/ConsentInformation;


# instance fields
.field private final context:Landroid/content/Context;

.field private debugGeography:Lcom/google/ads/consent/DebugGeography;

.field private hashedDeviceId:Ljava/lang/String;

.field private testDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/consent/ConsentInformation;->context:Landroid/content/Context;

    .line 3
    sget-object p1, Lcom/google/ads/consent/DebugGeography;->DEBUG_GEOGRAPHY_DISABLED:Lcom/google/ads/consent/DebugGeography;

    iput-object p1, p0, Lcom/google/ads/consent/ConsentInformation;->debugGeography:Lcom/google/ads/consent/DebugGeography;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/ads/consent/ConsentInformation;->testDevices:Ljava/util/List;

    .line 5
    invoke-virtual {p0}, Lcom/google/ads/consent/ConsentInformation;->getHashedDeviceId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/consent/ConsentInformation;->hashedDeviceId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/google/ads/consent/ConsentInformation;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/ads/consent/ConsentInformation;->updateConsentData(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/google/ads/consent/ConsentInformation;
    .locals 2

    const-class v0, Lcom/google/ads/consent/ConsentInformation;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/google/ads/consent/ConsentInformation;->instance:Lcom/google/ads/consent/ConsentInformation;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/google/ads/consent/ConsentInformation;

    invoke-direct {v1, p0}, Lcom/google/ads/consent/ConsentInformation;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/google/ads/consent/ConsentInformation;->instance:Lcom/google/ads/consent/ConsentInformation;

    .line 3
    :cond_0
    sget-object p0, Lcom/google/ads/consent/ConsentInformation;->instance:Lcom/google/ads/consent/ConsentInformation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getNonPersonalizedAdProviders(Ljava/util/List;Ljava/util/HashSet;)Ljava/util/HashSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/ads/consent/AdProvider;",
            ">;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashSet<",
            "Lcom/google/ads/consent/AdProvider;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/consent/AdProvider;

    .line 3
    invoke-virtual {v1}, Lcom/google/ads/consent/AdProvider;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_1
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method private isEmulator()Z
    .locals 4

    .line 1
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v1, "generic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "unknown"

    .line 2
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "google_sdk"

    .line 3
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "Emulator"

    .line 4
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "Android SDK built for x86"

    .line 5
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v3, "Genymotion"

    .line 6
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 8
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    const/4 v3, 0x0

    if-ge v1, v2, :cond_0

    :try_start_0
    const-string v2, "MD5"

    .line 1
    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/security/MessageDigest;->update([B)V

    const-string v4, "%032X"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    .line 3
    new-instance v7, Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    invoke-direct {v7, v5, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    aput-object v7, v6, v0

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v3

    :catch_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v3
.end method

.method private saveConsentData(Lcom/google/ads/consent/ConsentData;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/ads/consent/ConsentInformation;->context:Landroid/content/Context;

    const-string v1, "mobileads_consent"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3
    new-instance v1, Lj60;

    invoke-direct {v1}, Lj60;-><init>()V

    invoke-virtual {v1, p1}, Lj60;->h(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "consent_string"

    .line 4
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 5
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private declared-synchronized updateConsentData(Ljava/lang/String;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Lj60;

    invoke-direct {v0}, Lj60;-><init>()V

    const-class v1, Lcom/google/ads/consent/ConsentInformation$ServerResponse;

    .line 2
    invoke-virtual {v0, p1, v1}, Lj60;->d(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    invoke-static {v1}, Landroidx/core/app/b;->P0(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Lcom/google/ads/consent/ConsentInformation$ServerResponse;

    .line 5
    invoke-direct {p0, v0}, Lcom/google/ads/consent/ConsentInformation;->validatePublisherIds(Lcom/google/ads/consent/ConsentInformation$ServerResponse;)V

    .line 6
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 7
    iget-object v2, v0, Lcom/google/ads/consent/ConsentInformation$ServerResponse;->adNetworkLookupResponses:Ljava/util/List;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    .line 8
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v5, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/ads/consent/ConsentInformation$AdNetworkLookupResponse;

    .line 9
    invoke-static {v6}, Lcom/google/ads/consent/ConsentInformation$AdNetworkLookupResponse;->access$400(Lcom/google/ads/consent/ConsentInformation$AdNetworkLookupResponse;)Z

    move-result v7

    if-nez v7, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    invoke-static {v6}, Lcom/google/ads/consent/ConsentInformation$AdNetworkLookupResponse;->access$500(Lcom/google/ads/consent/ConsentInformation$AdNetworkLookupResponse;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 11
    invoke-virtual {v1, v5}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    :cond_1
    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    .line 12
    :cond_3
    iget-object v2, v0, Lcom/google/ads/consent/ConsentInformation$ServerResponse;->companies:Ljava/util/List;

    if-nez v2, :cond_4

    .line 13
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    goto :goto_1

    :cond_4
    if-eqz v5, :cond_5

    .line 14
    invoke-direct {p0, v2, v1}, Lcom/google/ads/consent/ConsentInformation;->getNonPersonalizedAdProviders(Ljava/util/List;Ljava/util/HashSet;)Ljava/util/HashSet;

    move-result-object v1

    goto :goto_1

    .line 15
    :cond_5
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, v0, Lcom/google/ads/consent/ConsentInformation$ServerResponse;->companies:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 16
    :goto_1
    invoke-virtual {p0}, Lcom/google/ads/consent/ConsentInformation;->loadConsentData()Lcom/google/ads/consent/ConsentData;

    move-result-object v2

    .line 17
    invoke-virtual {v2}, Lcom/google/ads/consent/ConsentData;->hasNonPersonalizedPublisherId()Z

    move-result v6

    if-eq v6, v5, :cond_6

    goto :goto_2

    :cond_6
    const/4 v3, 0x0

    .line 18
    :goto_2
    invoke-virtual {v2, v5}, Lcom/google/ads/consent/ConsentData;->setHasNonPersonalizedPublisherId(Z)V

    .line 19
    invoke-virtual {v2, p1}, Lcom/google/ads/consent/ConsentData;->setRawResponse(Ljava/lang/String;)V

    .line 20
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, p1}, Lcom/google/ads/consent/ConsentData;->setPublisherIds(Ljava/util/HashSet;)V

    .line 21
    invoke-virtual {v2, v1}, Lcom/google/ads/consent/ConsentData;->setAdProviders(Ljava/util/HashSet;)V

    .line 22
    iget-object p1, v0, Lcom/google/ads/consent/ConsentInformation$ServerResponse;->isRequestLocationInEeaOrUnknown:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v2, p1}, Lcom/google/ads/consent/ConsentData;->setRequestLocationInEeaOrUnknown(Z)V

    .line 23
    iget-object p1, v0, Lcom/google/ads/consent/ConsentInformation$ServerResponse;->isRequestLocationInEeaOrUnknown:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_7

    .line 24
    invoke-direct {p0, v2}, Lcom/google/ads/consent/ConsentInformation;->saveConsentData(Lcom/google/ads/consent/ConsentData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    monitor-exit p0

    return-void

    .line 26
    :cond_7
    :try_start_1
    invoke-virtual {v2}, Lcom/google/ads/consent/ConsentData;->getConsentedAdProviders()Ljava/util/HashSet;

    move-result-object p1

    invoke-virtual {v2}, Lcom/google/ads/consent/ConsentData;->getAdProviders()Ljava/util/HashSet;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_8

    if-eqz v3, :cond_9

    :cond_8
    const-string p1, "sdk"

    .line 27
    invoke-virtual {v2, p1}, Lcom/google/ads/consent/ConsentData;->setConsentSource(Ljava/lang/String;)V

    .line 28
    sget-object p1, Lcom/google/ads/consent/ConsentStatus;->UNKNOWN:Lcom/google/ads/consent/ConsentStatus;

    invoke-virtual {v2, p1}, Lcom/google/ads/consent/ConsentData;->setConsentStatus(Lcom/google/ads/consent/ConsentStatus;)V

    .line 29
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v2, p1}, Lcom/google/ads/consent/ConsentData;->setConsentedAdProviders(Ljava/util/HashSet;)V

    .line 30
    :cond_9
    invoke-direct {p0, v2}, Lcom/google/ads/consent/ConsentInformation;->saveConsentData(Lcom/google/ads/consent/ConsentData;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method private validatePublisherIds(Lcom/google/ads/consent/ConsentInformation$ServerResponse;)V
    .locals 6

    .line 1
    iget-object v0, p1, Lcom/google/ads/consent/ConsentInformation$ServerResponse;->isRequestLocationInEeaOrUnknown:Ljava/lang/Boolean;

    const-string v1, "Could not parse Event FE preflight response."

    if-eqz v0, :cond_9

    .line 2
    iget-object v2, p1, Lcom/google/ads/consent/ConsentInformation$ServerResponse;->companies:Ljava/util/List;

    if-nez v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    :goto_0
    iget-object v0, p1, Lcom/google/ads/consent/ConsentInformation$ServerResponse;->isRequestLocationInEeaOrUnknown:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 5
    :cond_2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 6
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 7
    iget-object p1, p1, Lcom/google/ads/consent/ConsentInformation$ServerResponse;->adNetworkLookupResponses:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/consent/ConsentInformation$AdNetworkLookupResponse;

    .line 8
    invoke-static {v2}, Lcom/google/ads/consent/ConsentInformation$AdNetworkLookupResponse;->access$100(Lcom/google/ads/consent/ConsentInformation$AdNetworkLookupResponse;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 9
    invoke-static {v2}, Lcom/google/ads/consent/ConsentInformation$AdNetworkLookupResponse;->access$200(Lcom/google/ads/consent/ConsentInformation$AdNetworkLookupResponse;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_4
    invoke-static {v2}, Lcom/google/ads/consent/ConsentInformation$AdNetworkLookupResponse;->access$300(Lcom/google/ads/consent/ConsentInformation$AdNetworkLookupResponse;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 11
    invoke-static {v2}, Lcom/google/ads/consent/ConsentInformation$AdNetworkLookupResponse;->access$200(Lcom/google/ads/consent/ConsentInformation$AdNetworkLookupResponse;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 12
    :cond_5
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    return-void

    .line 13
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Response error."

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, ","

    if-nez v2, :cond_7

    .line 15
    invoke-static {v5, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    const-string v0, " Lookup failure for: %s."

    .line 16
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    :cond_7
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 19
    invoke-static {v5, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    aput-object v0, v1, v3

    const-string v0, " Publisher Ids not found: %s"

    .line 20
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 21
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    :cond_8
    new-instance v0, Ljava/lang/Exception;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_9
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method


# virtual methods
.method public addTestDevice(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/consent/ConsentInformation;->testDevices:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public declared-synchronized getAdProviders()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/ads/consent/AdProvider;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/ads/consent/ConsentInformation;->loadConsentData()Lcom/google/ads/consent/ConsentData;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/google/ads/consent/ConsentData;->getAdProviders()Ljava/util/HashSet;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getConsentStatus()Lcom/google/ads/consent/ConsentStatus;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/ads/consent/ConsentInformation;->loadConsentData()Lcom/google/ads/consent/ConsentData;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/ads/consent/ConsentData;->getConsentStatus()Lcom/google/ads/consent/ConsentStatus;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDebugGeography()Lcom/google/ads/consent/DebugGeography;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/consent/ConsentInformation;->debugGeography:Lcom/google/ads/consent/DebugGeography;

    return-object v0
.end method

.method protected getHashedDeviceId()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/consent/ConsentInformation;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const-string v1, "android_id"

    .line 2
    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    invoke-direct {p0}, Lcom/google/ads/consent/ConsentInformation;->isEmulator()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const-string v0, "emulator"

    :cond_2
    invoke-direct {p0, v0}, Lcom/google/ads/consent/ConsentInformation;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isRequestLocationInEeaOrUnknown()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/ads/consent/ConsentInformation;->loadConsentData()Lcom/google/ads/consent/ConsentData;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/ads/consent/ConsentData;->isRequestLocationInEeaOrUnknown()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized isTaggedForUnderAgeOfConsent()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/ads/consent/ConsentInformation;->loadConsentData()Lcom/google/ads/consent/ConsentData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/consent/ConsentData;->isTaggedForUnderAgeOfConsent()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isTestDevice()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/ads/consent/ConsentInformation;->isEmulator()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/consent/ConsentInformation;->testDevices:Ljava/util/List;

    iget-object v1, p0, Lcom/google/ads/consent/ConsentInformation;->hashedDeviceId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected loadConsentData()Lcom/google/ads/consent/ConsentData;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/ads/consent/ConsentInformation;->context:Landroid/content/Context;

    const-string v1, "mobileads_consent"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "consent_string"

    const-string v2, ""

    .line 2
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    new-instance v0, Lcom/google/ads/consent/ConsentData;

    invoke-direct {v0}, Lcom/google/ads/consent/ConsentData;-><init>()V

    return-object v0

    .line 5
    :cond_0
    new-instance v1, Lj60;

    invoke-direct {v1}, Lj60;-><init>()V

    const-class v2, Lcom/google/ads/consent/ConsentData;

    invoke-virtual {v1, v0, v2}, Lj60;->c(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/consent/ConsentData;

    return-object v0
.end method

.method public requestConsentInfoUpdate([Ljava/lang/String;Lcom/google/ads/consent/ConsentInfoUpdateListener;)V
    .locals 1

    const-string v0, "https://adservice.google.com/getconfig/pubvendors"

    .line 1
    invoke-virtual {p0, p1, v0, p2}, Lcom/google/ads/consent/ConsentInformation;->requestConsentInfoUpdate([Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/consent/ConsentInfoUpdateListener;)V

    return-void
.end method

.method protected requestConsentInfoUpdate([Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/consent/ConsentInfoUpdateListener;)V
    .locals 4

    .line 2
    invoke-virtual {p0}, Lcom/google/ads/consent/ConsentInformation;->isTestDevice()Z

    move-result v0

    const-string v1, "ConsentInformation"

    if-eqz v0, :cond_0

    const-string v0, "This request is sent from a test device."

    .line 3
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/google/ads/consent/ConsentInformation;->getHashedDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x5d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Use ConsentInformation.getInstance(context).addTestDevice(\""

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\") to get test ads on this device."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :goto_0
    new-instance v0, Lcom/google/ads/consent/ConsentInformation$ConsentInfoUpdateTask;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p2, p0, p1, p3}, Lcom/google/ads/consent/ConsentInformation$ConsentInfoUpdateTask;-><init>(Ljava/lang/String;Lcom/google/ads/consent/ConsentInformation;Ljava/util/List;Lcom/google/ads/consent/ConsentInfoUpdateListener;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    .line 7
    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public declared-synchronized reset()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/ads/consent/ConsentInformation;->context:Landroid/content/Context;

    const-string v1, "mobileads_consent"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 4
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/ads/consent/ConsentInformation;->testDevices:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setConsentStatus(Lcom/google/ads/consent/ConsentStatus;)V
    .locals 1

    const-string v0, "programmatic"

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/ads/consent/ConsentInformation;->setConsentStatus(Lcom/google/ads/consent/ConsentStatus;Ljava/lang/String;)V

    return-void
.end method

.method protected declared-synchronized setConsentStatus(Lcom/google/ads/consent/ConsentStatus;Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/google/ads/consent/ConsentInformation;->loadConsentData()Lcom/google/ads/consent/ConsentData;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/google/ads/consent/ConsentStatus;->UNKNOWN:Lcom/google/ads/consent/ConsentStatus;

    if-ne p1, v1, :cond_0

    .line 4
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/ads/consent/ConsentData;->setConsentedAdProviders(Ljava/util/HashSet;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/google/ads/consent/ConsentData;->getAdProviders()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/ads/consent/ConsentData;->setConsentedAdProviders(Ljava/util/HashSet;)V

    .line 6
    :goto_0
    invoke-virtual {v0, p2}, Lcom/google/ads/consent/ConsentData;->setConsentSource(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, p1}, Lcom/google/ads/consent/ConsentData;->setConsentStatus(Lcom/google/ads/consent/ConsentStatus;)V

    .line 8
    invoke-direct {p0, v0}, Lcom/google/ads/consent/ConsentInformation;->saveConsentData(Lcom/google/ads/consent/ConsentData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setDebugGeography(Lcom/google/ads/consent/DebugGeography;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/ads/consent/ConsentInformation;->debugGeography:Lcom/google/ads/consent/DebugGeography;

    return-void
.end method

.method protected setHashedDeviceId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/ads/consent/ConsentInformation;->hashedDeviceId:Ljava/lang/String;

    return-void
.end method

.method public declared-synchronized setTagForUnderAgeOfConsent(Z)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/ads/consent/ConsentInformation;->loadConsentData()Lcom/google/ads/consent/ConsentData;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/ads/consent/ConsentData;->tagForUnderAgeOfConsent(Z)V

    .line 3
    invoke-direct {p0, v0}, Lcom/google/ads/consent/ConsentInformation;->saveConsentData(Lcom/google/ads/consent/ConsentData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
