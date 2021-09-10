.class public Lcom/zjsoft/admob/s;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static c:Lcom/zjsoft/admob/s;


# instance fields
.field private a:I

.field private b:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/zjsoft/admob/s;->a:I

    .line 3
    iput v0, p0, Lcom/zjsoft/admob/s;->b:I

    return-void
.end method

.method public static declared-synchronized a()Lcom/zjsoft/admob/s;
    .locals 2

    const-class v0, Lcom/zjsoft/admob/s;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/zjsoft/admob/s;->c:Lcom/zjsoft/admob/s;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/zjsoft/admob/s;

    invoke-direct {v1}, Lcom/zjsoft/admob/s;-><init>()V

    sput-object v1, Lcom/zjsoft/admob/s;->c:Lcom/zjsoft/admob/s;

    .line 3
    :cond_0
    sget-object v1, Lcom/zjsoft/admob/s;->c:Lcom/zjsoft/admob/s;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public b(Landroid/content/Context;)Z
    .locals 3

    const-string p1, "banner"

    .line 1
    iget v0, p0, Lcom/zjsoft/admob/s;->b:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    const-string v0, "native_ads_config"

    const-string v2, ""

    .line 2
    invoke-static {v0, v2}, Lcc0;->r(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v2, p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/zjsoft/admob/s;->b:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 8
    :cond_0
    iput v1, p0, Lcom/zjsoft/admob/s;->b:I

    .line 9
    :cond_1
    :goto_0
    iget p1, p0, Lcom/zjsoft/admob/s;->b:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    return v0

    :cond_2
    return v1
.end method

.method public c(Landroid/content/Context;)Z
    .locals 3

    const-string p1, "card"

    .line 1
    iget v0, p0, Lcom/zjsoft/admob/s;->a:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    const-string v0, "native_ads_config"

    const-string v2, ""

    .line 2
    invoke-static {v0, v2}, Lcc0;->r(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v2, p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/zjsoft/admob/s;->a:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 8
    :cond_0
    iput v1, p0, Lcom/zjsoft/admob/s;->a:I

    .line 9
    :cond_1
    :goto_0
    iget p1, p0, Lcom/zjsoft/admob/s;->a:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    return v0

    :cond_2
    return v1
.end method
