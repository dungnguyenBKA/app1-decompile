.class public final synthetic Lnq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhw;


# instance fields
.field public final synthetic a:Lcom/google/firebase/remoteconfig/f;

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/remoteconfig/f;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnq;->a:Lcom/google/firebase/remoteconfig/f;

    iput-object p2, p0, Lnq;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Lnq;->a:Lcom/google/firebase/remoteconfig/f;

    iget-object v1, p0, Lnq;->b:Landroid/content/Context;

    check-cast p1, Ljava/lang/Void;

    .line 1
    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/f;->b()Lkw;

    const-string p1, "self_ad_config"

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/firebase/remoteconfig/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 5
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    .line 6
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 7
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 8
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "minSDK"

    .line 9
    invoke-virtual {v5, v6, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    if-gt v6, v2, :cond_0

    .line 10
    invoke-virtual {p1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 11
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lpq;

    invoke-direct {v2, p1, v1}, Lpq;-><init>(Lorg/json/JSONArray;Landroid/content/Context;)V

    const-string p1, "downloadSelfAdImage"

    invoke-direct {v0, v2, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method
