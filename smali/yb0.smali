.class public Lyb0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static f:Lyb0;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lyb0;->a:I

    .line 3
    iput v0, p0, Lyb0;->b:I

    .line 4
    iput v0, p0, Lyb0;->c:I

    .line 5
    iput v0, p0, Lyb0;->d:I

    .line 6
    iput v0, p0, Lyb0;->e:I

    return-void
.end method

.method private f(Landroid/content/Context;)V
    .locals 3

    const/4 p1, 0x0

    .line 1
    iput p1, p0, Lyb0;->a:I

    .line 2
    iput p1, p0, Lyb0;->b:I

    .line 3
    iput p1, p0, Lyb0;->c:I

    const/4 v0, 0x1

    .line 4
    iput v0, p0, Lyb0;->d:I

    .line 5
    iput v0, p0, Lyb0;->e:I

    const-string v1, "ad_analytics"

    const-string v2, ""

    .line 6
    invoke-static {v1, v2}, Lcc0;->r(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "request"

    .line 9
    invoke-virtual {v2, v1, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lyb0;->a:I

    const-string v1, "loaded"

    .line 10
    invoke-virtual {v2, v1, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lyb0;->b:I

    const-string v1, "impression"

    .line 11
    invoke-virtual {v2, v1, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lyb0;->c:I

    const-string p1, "click"

    .line 12
    invoke-virtual {v2, p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lyb0;->d:I

    const-string p1, "failed"

    .line 13
    invoke-virtual {v2, p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lyb0;->e:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 14
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static declared-synchronized g()Lyb0;
    .locals 2

    const-class v0, Lyb0;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lyb0;->f:Lyb0;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lyb0;

    invoke-direct {v1}, Lyb0;-><init>()V

    sput-object v1, Lyb0;->f:Lyb0;

    .line 3
    :cond_0
    sget-object v1, Lyb0;->f:Lyb0;
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
.method public a(Landroid/content/Context;)Z
    .locals 2

    .line 1
    iget v0, p0, Lyb0;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lyb0;->f(Landroid/content/Context;)V

    .line 3
    :cond_0
    iget p1, p0, Lyb0;->d:I

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public b(Landroid/content/Context;)Z
    .locals 2

    .line 1
    iget v0, p0, Lyb0;->e:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lyb0;->f(Landroid/content/Context;)V

    .line 3
    :cond_0
    iget p1, p0, Lyb0;->e:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public c(Landroid/content/Context;)Z
    .locals 2

    .line 1
    iget v0, p0, Lyb0;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lyb0;->f(Landroid/content/Context;)V

    .line 3
    :cond_0
    iget p1, p0, Lyb0;->c:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public d(Landroid/content/Context;)Z
    .locals 2

    .line 1
    iget v0, p0, Lyb0;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lyb0;->f(Landroid/content/Context;)V

    .line 3
    :cond_0
    iget p1, p0, Lyb0;->b:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public e(Landroid/content/Context;)Z
    .locals 2

    .line 1
    iget v0, p0, Lyb0;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lyb0;->f(Landroid/content/Context;)V

    .line 3
    :cond_0
    iget p1, p0, Lyb0;->a:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public h(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-boolean v0, Lcom/zjsoft/baseadlib/b;->a:Z

    if-eqz v0, :cond_1

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ad_log"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v0, "ad_position"

    const-string v1, "ad_event"

    .line 4
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x1

    aput-object p3, v1, p2

    const-string p2, "ad_android"

    invoke-static {p1, p2, v0, v1}, Lgc0;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method
