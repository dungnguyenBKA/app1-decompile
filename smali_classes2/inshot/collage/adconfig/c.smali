.class public final Linshot/collage/adconfig/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/ADRequestList;)Llb0;
    .locals 2

    .line 1
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llb0;

    const-string v1, "request"

    .line 2
    invoke-static {v0, v1}, Lgg0;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Llb0;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lgg0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Llb0;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    .line 4
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Llb0;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Llb0;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lgg0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public final b(Landroid/content/Context;Lcom/google/ads/ADRequestList;)Lcom/google/ads/ADRequestList;
    .locals 13

    const-string v0, "context"

    invoke-static {p1, v0}, Lgg0;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "list"

    invoke-static {p2, v0}, Lgg0;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "order_banner"

    const-string v1, "[\"a-b-h\",\"a-n-h\",\"f-b-h\",\"a-b-m\",\"a-b-r\",\"s\"]"

    .line 1
    invoke-static {p1, v0, v1}, Lcc0;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    const-string v0, ""

    .line 2
    invoke-static {p1, v0}, Lgg0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 3
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_4

    .line 6
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "m"

    const-string v6, "n"

    const-string v7, "Fan.NATIVE_BANNER"

    const-string v8, "Fan.BANNER"

    const-string v9, "Admob.NATIVE_BANNER"

    const-string v10, "Admob.BANNER"

    const-string v11, "r"

    const-string v12, "h"

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    :try_start_1
    const-string v4, "f-n-r"

    .line 7
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/zjsoft/fan/a;->b:Ljava/lang/String;

    invoke-static {v3, v7}, Lgg0;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v3, v11, p2}, Linshot/collage/adconfig/c;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/ADRequestList;)Llb0;

    move-result-object v3

    goto/16 :goto_2

    :sswitch_1
    const-string v4, "f-n-h"

    .line 8
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/zjsoft/fan/a;->b:Ljava/lang/String;

    invoke-static {v3, v7}, Lgg0;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v3, v12, p2}, Linshot/collage/adconfig/c;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/ADRequestList;)Llb0;

    move-result-object v3

    goto/16 :goto_2

    :sswitch_2
    const-string v4, "f-b-r"

    .line 9
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/zjsoft/fan/a;->a:Ljava/lang/String;

    invoke-static {v3, v8}, Lgg0;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v3, v11, p2}, Linshot/collage/adconfig/c;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/ADRequestList;)Llb0;

    move-result-object v3

    goto/16 :goto_2

    :sswitch_3
    const-string v4, "f-b-h"

    .line 10
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/zjsoft/fan/a;->a:Ljava/lang/String;

    invoke-static {v3, v8}, Lgg0;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v3, v12, p2}, Linshot/collage/adconfig/c;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/ADRequestList;)Llb0;

    move-result-object v3

    goto/16 :goto_2

    :sswitch_4
    const-string v4, "a-n-r"

    .line 11
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/zjsoft/admob/a;->b:Ljava/lang/String;

    invoke-static {v3, v9}, Lgg0;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v3, v11, p2}, Linshot/collage/adconfig/c;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/ADRequestList;)Llb0;

    move-result-object v3

    goto/16 :goto_2

    :sswitch_5
    const-string v4, "a-n-m"

    .line 12
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/zjsoft/admob/a;->b:Ljava/lang/String;

    invoke-static {v3, v9}, Lgg0;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v3, v5, p2}, Linshot/collage/adconfig/c;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/ADRequestList;)Llb0;

    move-result-object v3

    goto/16 :goto_2

    :sswitch_6
    const-string v4, "a-n-h"

    .line 13
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/zjsoft/admob/a;->b:Ljava/lang/String;

    invoke-static {v3, v9}, Lgg0;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v3, v12, p2}, Linshot/collage/adconfig/c;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/ADRequestList;)Llb0;

    move-result-object v3

    goto :goto_2

    :sswitch_7
    const-string v4, "a-b-r"

    .line 14
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/zjsoft/admob/a;->a:Ljava/lang/String;

    invoke-static {v3, v10}, Lgg0;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v3, v11, p2}, Linshot/collage/adconfig/c;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/ADRequestList;)Llb0;

    move-result-object v3

    goto :goto_2

    :sswitch_8
    const-string v4, "a-b-m"

    .line 15
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/zjsoft/admob/a;->a:Ljava/lang/String;

    invoke-static {v3, v10}, Lgg0;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v3, v5, p2}, Linshot/collage/adconfig/c;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/ADRequestList;)Llb0;

    move-result-object v3

    goto :goto_2

    :sswitch_9
    const-string v4, "a-b-h"

    .line 16
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/zjsoft/admob/a;->a:Ljava/lang/String;

    invoke-static {v3, v10}, Lgg0;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v3, v12, p2}, Linshot/collage/adconfig/c;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/ADRequestList;)Llb0;

    move-result-object v3

    goto :goto_2

    :sswitch_a
    const-string v4, "vg"

    .line 17
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lad0;->a:Ljava/lang/String;

    const-string v4, "ZJVungle.BANNER"

    invoke-static {v3, v4}, Lgg0;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v3, v6, p2}, Linshot/collage/adconfig/c;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/ADRequestList;)Llb0;

    move-result-object v3

    goto :goto_2

    :sswitch_b
    const-string v4, "s"

    .line 18
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/zjsoft/zjad/a;->a:Ljava/lang/String;

    const-string v4, "ZJAd.NATIVE_BANNER"

    invoke-static {v3, v4}, Lgg0;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v3, v6, p2}, Linshot/collage/adconfig/c;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/ADRequestList;)Llb0;

    move-result-object v3

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_3

    .line 19
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 20
    :cond_4
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 21
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 22
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_3
    return-object p2

    :sswitch_data_0
    .sparse-switch
        0x73 -> :sswitch_b
        0xeb1 -> :sswitch_a
        0x56cd251 -> :sswitch_9
        0x56cd256 -> :sswitch_8
        0x56cd25b -> :sswitch_7
        0x56cff5d -> :sswitch_6
        0x56cff62 -> :sswitch_5
        0x56cff67 -> :sswitch_4
        0x5b347d6 -> :sswitch_3
        0x5b347e0 -> :sswitch_2
        0x5b374e2 -> :sswitch_1
        0x5b374ec -> :sswitch_0
    .end sparse-switch
.end method

.method public final c(Landroid/content/Context;Lcom/google/ads/ADRequestList;Linshot/collage/adconfig/j;)Lcom/google/ads/ADRequestList;
    .locals 9

    const-string v0, "context"

    invoke-static {p1, v0}, Lgg0;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "list"

    invoke-static {p2, v0}, Lgg0;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adType"

    invoke-static {p3, v0}, Lgg0;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    const/4 v0, 0x1

    if-eq p3, v0, :cond_2

    const/4 v0, 0x3

    if-eq p3, v0, :cond_1

    const/4 v0, 0x4

    if-eq p3, v0, :cond_0

    const-string p3, "order_interstitial_result"

    goto :goto_0

    :cond_0
    const-string p3, "order_interstitial_splash"

    goto :goto_0

    :cond_1
    const-string p3, "order_interstitial_unlock"

    goto :goto_0

    :cond_2
    const-string p3, "order_interstitial_picker"

    :goto_0
    const-string v0, "[\"a-i-h\",\"f-i-h\",\"a-i-m\",\"a-i-r\"]"

    .line 2
    invoke-static {p1, p3, v0}, Lcc0;->p(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "ServerData.getInterstiti\u2026g(context, key, defValue)"

    invoke-static {p1, p3}, Lgg0;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, ""

    .line 3
    invoke-static {p1, p3}, Lgg0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    goto/16 :goto_3

    .line 4
    :cond_3
    :try_start_0
    new-instance p3, Lorg/json/JSONArray;

    invoke-direct {p3, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_7

    const/4 v2, 0x0

    .line 7
    invoke-virtual {p3, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    goto/16 :goto_2

    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "r"

    const-string v6, "h"

    const-string v7, "Fan.INTERSTITIAL"

    const-string v8, "Admob.INTERSTITIAL"

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    :try_start_1
    const-string v4, "f-i-r"

    .line 8
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    sget-object v2, Lcom/zjsoft/fan/a;->d:Ljava/lang/String;

    invoke-static {v2, v7}, Lgg0;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2, v5, p2}, Linshot/collage/adconfig/c;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/ADRequestList;)Llb0;

    move-result-object v2

    goto :goto_2

    :sswitch_1
    const-string v4, "f-i-h"

    .line 9
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    sget-object v2, Lcom/zjsoft/fan/a;->d:Ljava/lang/String;

    invoke-static {v2, v7}, Lgg0;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2, v6, p2}, Linshot/collage/adconfig/c;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/ADRequestList;)Llb0;

    move-result-object v2

    goto :goto_2

    :sswitch_2
    const-string v4, "a-i-r"

    .line 10
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    sget-object v2, Lcom/zjsoft/admob/a;->d:Ljava/lang/String;

    invoke-static {v2, v8}, Lgg0;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2, v5, p2}, Linshot/collage/adconfig/c;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/ADRequestList;)Llb0;

    move-result-object v2

    goto :goto_2

    :sswitch_3
    const-string v4, "a-i-m"

    .line 11
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    sget-object v2, Lcom/zjsoft/admob/a;->d:Ljava/lang/String;

    invoke-static {v2, v8}, Lgg0;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "m"

    invoke-direct {p0, v2, v3, p2}, Linshot/collage/adconfig/c;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/ADRequestList;)Llb0;

    move-result-object v2

    goto :goto_2

    :sswitch_4
    const-string v4, "a-i-h"

    .line 12
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    sget-object v2, Lcom/zjsoft/admob/a;->d:Ljava/lang/String;

    invoke-static {v2, v8}, Lgg0;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2, v6, p2}, Linshot/collage/adconfig/c;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/ADRequestList;)Llb0;

    move-result-object v2

    goto :goto_2

    :sswitch_5
    const-string v4, "vg"

    .line 13
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    sget-object v2, Lad0;->b:Ljava/lang/String;

    const-string v3, "ZJVungle.INTERSTITIAL"

    invoke-static {v2, v3}, Lgg0;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "n"

    invoke-direct {p0, v2, v3, p2}, Linshot/collage/adconfig/c;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/ADRequestList;)Llb0;

    move-result-object v2

    :cond_5
    :goto_2
    if-eqz v2, :cond_6

    .line 14
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 15
    :cond_7
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 16
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-object p2

    nop

    :sswitch_data_0
    .sparse-switch
        0xeb1 -> :sswitch_5
        0x56cec98 -> :sswitch_4
        0x56cec9d -> :sswitch_3
        0x56ceca2 -> :sswitch_2
        0x5b3621d -> :sswitch_1
        0x5b36227 -> :sswitch_0
    .end sparse-switch
.end method

.method public final d(Landroid/content/Context;Lcom/google/ads/ADRequestList;Linshot/collage/adconfig/i;)Lcom/google/ads/ADRequestList;
    .locals 9

    const-string v0, "context"

    invoke-static {p1, v0}, Lgg0;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "list"

    invoke-static {p2, v0}, Lgg0;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p3, v0}, Lgg0;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Linshot/collage/adconfig/i;->c:Linshot/collage/adconfig/i;

    if-ne p3, v0, :cond_0

    const-string p3, "order_card_result"

    goto :goto_0

    :cond_0
    const-string p3, "order_card_home"

    :goto_0
    const-string v0, "[\"a-n-h\",\"f-n-h\",\"a-n-m\",\"a-n-r\"]"

    .line 2
    invoke-static {p1, p3, v0}, Lcc0;->q(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    const-string p3, ""

    .line 3
    invoke-static {p1, p3}, Lgg0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    goto/16 :goto_3

    .line 4
    :cond_1
    :try_start_0
    new-instance p3, Lorg/json/JSONArray;

    invoke-direct {p3, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_5

    const/4 v2, 0x0

    .line 7
    invoke-virtual {p3, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    goto/16 :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "r"

    const-string v6, "h"

    const-string v7, "Fan.NATIVE_CARD"

    const-string v8, "Admob.NATIVE_CARD"

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    :try_start_1
    const-string v4, "f-n-r"

    .line 8
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v2, Lcom/zjsoft/fan/a;->c:Ljava/lang/String;

    invoke-static {v2, v7}, Lgg0;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2, v5, p2}, Linshot/collage/adconfig/c;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/ADRequestList;)Llb0;

    move-result-object v2

    goto :goto_2

    :sswitch_1
    const-string v4, "f-n-h"

    .line 9
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v2, Lcom/zjsoft/fan/a;->c:Ljava/lang/String;

    invoke-static {v2, v7}, Lgg0;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2, v6, p2}, Linshot/collage/adconfig/c;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/ADRequestList;)Llb0;

    move-result-object v2

    goto :goto_2

    :sswitch_2
    const-string v4, "a-n-r"

    .line 10
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v2, Lcom/zjsoft/admob/a;->c:Ljava/lang/String;

    invoke-static {v2, v8}, Lgg0;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2, v5, p2}, Linshot/collage/adconfig/c;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/ADRequestList;)Llb0;

    move-result-object v2

    goto :goto_2

    :sswitch_3
    const-string v4, "a-n-m"

    .line 11
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v2, Lcom/zjsoft/admob/a;->c:Ljava/lang/String;

    invoke-static {v2, v8}, Lgg0;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "m"

    invoke-direct {p0, v2, v3, p2}, Linshot/collage/adconfig/c;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/ADRequestList;)Llb0;

    move-result-object v2

    goto :goto_2

    :sswitch_4
    const-string v4, "a-n-h"

    .line 12
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v2, Lcom/zjsoft/admob/a;->c:Ljava/lang/String;

    invoke-static {v2, v8}, Lgg0;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2, v6, p2}, Linshot/collage/adconfig/c;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/ADRequestList;)Llb0;

    move-result-object v2

    goto :goto_2

    :sswitch_5
    const-string v4, "s"

    .line 13
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v2, Lcom/zjsoft/zjad/a;->b:Ljava/lang/String;

    const-string v3, "ZJAd.NATIVE_CARD"

    invoke-static {v2, v3}, Lgg0;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "n"

    invoke-direct {p0, v2, v3, p2}, Linshot/collage/adconfig/c;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/ADRequestList;)Llb0;

    move-result-object v2

    :cond_3
    :goto_2
    if-eqz v2, :cond_4

    .line 14
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 15
    :cond_5
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 16
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    :goto_3
    return-object p2

    nop

    :sswitch_data_0
    .sparse-switch
        0x73 -> :sswitch_5
        0x56cff5d -> :sswitch_4
        0x56cff62 -> :sswitch_3
        0x56cff67 -> :sswitch_2
        0x5b374e2 -> :sswitch_1
        0x5b374ec -> :sswitch_0
    .end sparse-switch
.end method
