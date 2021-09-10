.class public Liq;
.super Lfq;
.source "SourceFile"


# instance fields
.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lfq;-><init>()V

    const-string v0, "en"

    .line 2
    iput-object v0, p0, Liq;->o:Ljava/lang/String;

    return-void
.end method

.method public static e(Lorg/json/JSONObject;)Liq;
    .locals 3

    const-string v0, "order"

    .line 1
    new-instance v1, Liq;

    invoke-direct {v1}, Liq;-><init>()V

    :try_start_0
    const-string v2, "startVersion"

    .line 2
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lfq;->c:I

    const-string v2, "activeType"

    .line 3
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lfq;->b:I

    .line 4
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lfq;->d:I

    .line 5
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lfq;->f:I

    const-string v0, "iconURL"

    .line 6
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfq;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lfq;->i:Ljava/lang/String;

    const-string v0, "editTabUrl"

    .line 7
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfq;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Liq;->p:Ljava/lang/String;

    const-string v0, "unlockIconUrl"

    .line 8
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfq;->a(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "fontLocale"

    .line 9
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Liq;->o:Ljava/lang/String;

    const-string v0, "packageID"

    .line 10
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lfq;->j:Ljava/lang/String;

    .line 11
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 12
    iget-object v0, v1, Lfq;->j:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lfq;->j:Ljava/lang/String;

    const-string v2, "."

    .line 13
    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 14
    iget-object v2, v1, Lfq;->j:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, v1, Lfq;->j:Ljava/lang/String;

    :goto_0
    iput-object v0, v1, Lfq;->h:Ljava/lang/String;

    :cond_1
    const-string v0, "packageURL"

    .line 15
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lfq;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lfq;->k:Ljava/lang/String;

    if-eqz p0, :cond_2

    const-string v0, "/"

    .line 16
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p0

    .line 17
    iget-object v0, v1, Lfq;->k:Ljava/lang/String;

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Liq;->n:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 18
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return-object v1
.end method


# virtual methods
.method public f()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Liq;->n:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lfq;->k:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "/"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Liq;->n:Ljava/lang/String;

    .line 4
    :cond_0
    iget-object v0, p0, Liq;->n:Ljava/lang/String;

    return-object v0
.end method
