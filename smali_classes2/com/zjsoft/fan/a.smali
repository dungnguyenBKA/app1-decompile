.class public Lcom/zjsoft/fan/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field public static final d:Ljava/lang/String;

.field public static e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/zjsoft/fan/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zjsoft/fan/a;->a:Ljava/lang/String;

    .line 2
    const-class v0, Lcom/zjsoft/fan/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zjsoft/fan/a;->b:Ljava/lang/String;

    .line 3
    const-class v0, Lcom/zjsoft/fan/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zjsoft/fan/a;->c:Ljava/lang/String;

    .line 4
    const-class v0, Lcom/zjsoft/fan/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zjsoft/fan/a;->d:Ljava/lang/String;

    const/4 v0, 0x0

    .line 5
    sput v0, Lcom/zjsoft/fan/a;->e:I

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 2

    .line 1
    sget v0, Lcom/zjsoft/fan/a;->e:I

    const/4 v1, 0x1

    if-nez v0, :cond_3

    .line 2
    invoke-static {p0}, Lcom/facebook/ads/AudienceNetworkAds;->isInitialized(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sput v1, Lcom/zjsoft/fan/a;->e:I

    goto :goto_1

    :cond_0
    const-string v0, "com.facebook.katana"

    .line 4
    invoke-static {p0, v0}, Landroidx/core/app/b;->a0(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "com.facebook.lite"

    invoke-static {p0, v0}, Landroidx/core/app/b;->a0(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "com.facebook.orca"

    invoke-static {p0, v0}, Landroidx/core/app/b;->a0(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "com.instagram.android"

    invoke-static {p0, v0}, Landroidx/core/app/b;->a0(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    .line 5
    sput p0, Lcom/zjsoft/fan/a;->e:I

    goto :goto_1

    .line 6
    :cond_2
    :goto_0
    sput v1, Lcom/zjsoft/fan/a;->e:I

    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/facebook/ads/AudienceNetworkAds;->initialize(Landroid/content/Context;)V

    .line 8
    :cond_3
    :goto_1
    sget p0, Lcom/zjsoft/fan/a;->e:I

    if-ne p0, v1, :cond_4

    return v1

    :cond_4
    const/4 p0, 0x0

    return p0
.end method
