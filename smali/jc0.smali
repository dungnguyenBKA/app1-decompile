.class public Ljc0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Ljc0;->a:I

    const/16 v0, 0x9

    .line 3
    iput v0, p0, Ljc0;->b:I

    const/16 v0, 0x15

    .line 4
    iput v0, p0, Ljc0;->c:I

    const/16 v0, 0x21

    .line 5
    iput v0, p0, Ljc0;->d:I

    const/16 v0, 0xa

    .line 6
    iput v0, p0, Ljc0;->e:I

    return-void
.end method

.method private a(Landroid/content/Context;)Z
    .locals 3

    const/4 p1, 0x1

    :try_start_0
    const-string v0, "ad_voice_config"

    const-string v1, ""

    .line 1
    invoke-static {v0, v1}, Lcc0;->r(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "isOpen"

    .line 4
    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const-string v0, "dayStartTime"

    const/16 v2, 0x9

    .line 5
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Ljc0;->b:I

    const-string v0, "dayEndTime"

    const/16 v2, 0x15

    .line 6
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Ljc0;->c:I

    const-string v0, "dayVoice"

    const/16 v2, 0x21

    .line 7
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Ljc0;->d:I

    const-string v0, "nightVoice"

    const/16 v2, 0xa

    .line 8
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Ljc0;->e:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    :goto_0
    return p1
.end method


# virtual methods
.method public b(Landroid/content/Context;)V
    .locals 7

    .line 1
    invoke-direct {p0, p1}, Ljc0;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p1}, Lcc0;->x(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    :try_start_0
    const-string v0, "audio"

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    const/4 v0, 0x3

    .line 4
    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    .line 5
    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    .line 6
    iput v2, p0, Ljc0;->a:I

    .line 7
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 8
    iget v4, p0, Ljc0;->b:I

    const/4 v5, 0x0

    const/high16 v6, 0x42c80000    # 100.0f

    if-lt v3, v4, :cond_2

    iget v4, p0, Ljc0;->c:I

    if-ge v3, v4, :cond_2

    .line 9
    iget v3, p0, Ljc0;->d:I

    mul-int v1, v1, v3

    int-to-float v1, v1

    div-float/2addr v1, v6

    float-to-int v1, v1

    if-le v2, v1, :cond_3

    .line 10
    invoke-virtual {p1, v0, v1, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0

    .line 11
    :cond_2
    iget v3, p0, Ljc0;->e:I

    mul-int v1, v1, v3

    int-to-float v1, v1

    div-float/2addr v1, v6

    float-to-int v1, v1

    if-le v2, v1, :cond_3

    .line 12
    invoke-virtual {p1, v0, v1, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method

.method public c(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Ljc0;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v0, "audio"

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    const/4 v0, 0x3

    .line 3
    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 4
    iget v2, p0, Ljc0;->a:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    if-eq v2, v1, :cond_1

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p1, v0, v2, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 6
    :cond_1
    iput v3, p0, Ljc0;->a:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
