.class public Lv30;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lt20;

.field private final c:Laz;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lt20;)V
    .locals 1

    .line 1
    invoke-static {}, Laz;->f()Laz;

    move-result-object v0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 3
    iput-object v0, p0, Lv30;->c:Laz;

    .line 4
    iput-object p2, p0, Lv30;->b:Lt20;

    .line 5
    iput-object p1, p0, Lv30;->a:Ljava/lang/String;

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "url must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Ls20;Lu30;)Ls20;
    .locals 2

    .line 1
    iget-object v0, p2, Lu30;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "X-CRASHLYTICS-GOOGLE-APP-ID"

    .line 2
    invoke-virtual {p1, v1, v0}, Ls20;->c(Ljava/lang/String;Ljava/lang/String;)Ls20;

    :cond_0
    const-string v0, "X-CRASHLYTICS-API-CLIENT-TYPE"

    const-string v1, "android"

    .line 3
    invoke-virtual {p1, v0, v1}, Ls20;->c(Ljava/lang/String;Ljava/lang/String;)Ls20;

    const-string v0, "X-CRASHLYTICS-API-CLIENT-VERSION"

    const-string v1, "17.4.0"

    .line 4
    invoke-virtual {p1, v0, v1}, Ls20;->c(Ljava/lang/String;Ljava/lang/String;)Ls20;

    const-string v0, "Accept"

    const-string v1, "application/json"

    .line 5
    invoke-virtual {p1, v0, v1}, Ls20;->c(Ljava/lang/String;Ljava/lang/String;)Ls20;

    .line 6
    iget-object v0, p2, Lu30;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, "X-CRASHLYTICS-DEVICE-MODEL"

    .line 7
    invoke-virtual {p1, v1, v0}, Ls20;->c(Ljava/lang/String;Ljava/lang/String;)Ls20;

    .line 8
    :cond_1
    iget-object v0, p2, Lu30;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v1, "X-CRASHLYTICS-OS-BUILD-VERSION"

    .line 9
    invoke-virtual {p1, v1, v0}, Ls20;->c(Ljava/lang/String;Ljava/lang/String;)Ls20;

    .line 10
    :cond_2
    iget-object v0, p2, Lu30;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v1, "X-CRASHLYTICS-OS-DISPLAY-VERSION"

    .line 11
    invoke-virtual {p1, v1, v0}, Ls20;->c(Ljava/lang/String;Ljava/lang/String;)Ls20;

    .line 12
    :cond_3
    iget-object p2, p2, Lu30;->e:Lu00;

    .line 13
    check-cast p2, Lt00;

    invoke-virtual {p2}, Lt00;->c()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    const-string v0, "X-CRASHLYTICS-INSTALLATION-ID"

    .line 14
    invoke-virtual {p1, v0, p2}, Ls20;->c(Ljava/lang/String;Ljava/lang/String;)Ls20;

    :cond_4
    return-object p1
.end method

.method private b(Lu30;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu30;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget-object v1, p1, Lu30;->h:Ljava/lang/String;

    const-string v2, "build_version"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p1, Lu30;->g:Ljava/lang/String;

    const-string v2, "display_version"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget v1, p1, Lu30;->i:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "source"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object p1, p1, Lu30;->f:Ljava/lang/String;

    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "instance"

    .line 7
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method


# virtual methods
.method c(Lu20;)Lorg/json/JSONObject;
    .locals 5

    .line 1
    invoke-virtual {p1}, Lu20;->b()I

    move-result v0

    .line 2
    iget-object v1, p0, Lv30;->c:Laz;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Settings response code was: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Laz;->h(Ljava/lang/String;)V

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_1

    const/16 v1, 0xc9

    if-eq v0, v1, :cond_1

    const/16 v1, 0xca

    if-eq v0, v1, :cond_1

    const/16 v1, 0xcb

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 3
    invoke-virtual {p1}, Lu20;->a()Ljava/lang/String;

    move-result-object p1

    .line 4
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 5
    iget-object v1, p0, Lv30;->c:Laz;

    const-string v3, "Failed to parse settings JSON from "

    invoke-static {v3}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lv30;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Laz;->j(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    iget-object v0, p0, Lv30;->c:Laz;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Settings response "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Laz;->i(Ljava/lang/String;)V

    goto :goto_2

    .line 7
    :cond_2
    iget-object p1, p0, Lv30;->c:Laz;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Settings request failed; (status: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") from "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lv30;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Laz;->d(Ljava/lang/String;)V

    :goto_2
    return-object v2
.end method

.method public d(Lu30;Z)Lorg/json/JSONObject;
    .locals 3

    if-eqz p2, :cond_0

    .line 1
    :try_start_0
    invoke-direct {p0, p1}, Lv30;->b(Lu30;)Ljava/util/Map;

    move-result-object p2

    .line 2
    iget-object v0, p0, Lv30;->b:Lt20;

    iget-object v1, p0, Lv30;->a:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v0, Ls20;

    invoke-direct {v0, v1, p2}, Ls20;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    const-string v1, "User-Agent"

    const-string v2, "Crashlytics Android SDK/17.4.0"

    .line 5
    invoke-virtual {v0, v1, v2}, Ls20;->c(Ljava/lang/String;Ljava/lang/String;)Ls20;

    const-string v1, "X-CRASHLYTICS-DEVELOPER-TOKEN"

    const-string v2, "470fa2b4ae81cd56ecbcda9735803434cec591fa"

    .line 6
    invoke-virtual {v0, v1, v2}, Ls20;->c(Ljava/lang/String;Ljava/lang/String;)Ls20;

    .line 7
    invoke-direct {p0, v0, p1}, Lv30;->a(Ls20;Lu30;)Ls20;

    .line 8
    iget-object p1, p0, Lv30;->c:Laz;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requesting settings from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lv30;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Laz;->b(Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lv30;->c:Laz;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Settings query params were: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Laz;->h(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0}, Ls20;->b()Lu20;

    move-result-object p1

    .line 11
    invoke-virtual {p0, p1}, Lv30;->c(Lu20;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 12
    iget-object p2, p0, Lv30;->c:Laz;

    const-string v0, "Settings request failed."

    invoke-virtual {p2, v0, p1}, Laz;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_0
    return-object p1

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "An invalid data collection token was used."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
