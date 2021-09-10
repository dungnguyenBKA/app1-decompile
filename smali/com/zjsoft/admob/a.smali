.class public Lcom/zjsoft/admob/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field public static final d:Ljava/lang/String;

.field private static e:Z

.field private static f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/zjsoft/admob/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zjsoft/admob/a;->a:Ljava/lang/String;

    .line 2
    const-class v0, Lcom/zjsoft/admob/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zjsoft/admob/a;->b:Ljava/lang/String;

    .line 3
    const-class v0, Lcom/zjsoft/admob/k;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zjsoft/admob/a;->c:Ljava/lang/String;

    .line 4
    const-class v0, Lcom/zjsoft/admob/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zjsoft/admob/a;->d:Ljava/lang/String;

    const/4 v0, 0x0

    .line 5
    sput-boolean v0, Lcom/zjsoft/admob/a;->e:Z

    .line 6
    sput-boolean v0, Lcom/zjsoft/admob/a;->f:Z

    return-void
.end method

.method static synthetic a(Z)Z
    .locals 0

    .line 1
    sput-boolean p0, Lcom/zjsoft/admob/a;->e:Z

    return p0
.end method

.method static synthetic b(Z)Z
    .locals 0

    .line 1
    sput-boolean p0, Lcom/zjsoft/admob/a;->f:Z

    return p0
.end method

.method public static c(Landroid/content/Context;ZLcom/zjsoft/admob/d;)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p2, v0}, Lcom/zjsoft/admob/d;->a(Z)V

    return-void

    .line 2
    :cond_0
    sget-boolean p1, Lcom/zjsoft/admob/a;->e:Z

    const/4 v1, 0x0

    if-nez p1, :cond_2

    .line 3
    sput-boolean v0, Lcom/zjsoft/admob/a;->e:Z

    .line 4
    sget-boolean p1, Lcom/zjsoft/admob/a;->f:Z

    if-nez p1, :cond_1

    .line 5
    :try_start_0
    new-instance p1, Lcom/zjsoft/admob/a$a;

    invoke-direct {p1, p0, p2}, Lcom/zjsoft/admob/a$a;-><init>(Landroid/content/Context;Lcom/zjsoft/admob/d;)V

    invoke-static {p0, p1}, Lcom/google/android/gms/ads/MobileAds;->initialize(Landroid/content/Context;Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 6
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 7
    sput-boolean v1, Lcom/zjsoft/admob/a;->e:Z

    .line 8
    invoke-interface {p2, v1}, Lcom/zjsoft/admob/d;->a(Z)V

    goto :goto_0

    .line 9
    :cond_1
    sput-boolean v1, Lcom/zjsoft/admob/a;->e:Z

    .line 10
    invoke-interface {p2, v0}, Lcom/zjsoft/admob/d;->a(Z)V

    goto :goto_0

    .line 11
    :cond_2
    invoke-interface {p2, v1}, Lcom/zjsoft/admob/d;->a(Z)V

    :goto_0
    return-void
.end method

.method static d()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/MobileAds;->getRequestConfiguration()Lcom/google/android/gms/ads/RequestConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/RequestConfiguration;->toBuilder()Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->setTagForChildDirectedTreatment(I)Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    const-string v1, "G"

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->setMaxAdContentRating(Ljava/lang/String;)Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->build()Lcom/google/android/gms/ads/RequestConfiguration;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/MobileAds;->setRequestConfiguration(Lcom/google/android/gms/ads/RequestConfiguration;)V

    return-void
.end method
