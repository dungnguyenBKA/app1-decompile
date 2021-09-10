.class public final Linshot/collage/adconfig/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Linshot/collage/adconfig/j;",
            "Lob0;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Z

.field private static final c:I

.field private static final d:Z

.field private static final e:Linshot/collage/adconfig/l$a;

.field public static final f:Linshot/collage/adconfig/l;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Linshot/collage/adconfig/l;

    invoke-direct {v0}, Linshot/collage/adconfig/l;-><init>()V

    sput-object v0, Linshot/collage/adconfig/l;->f:Linshot/collage/adconfig/l;

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Linshot/collage/adconfig/l;->a:Ljava/util/HashMap;

    .line 3
    sget-object v0, Linshot/collage/adconfig/a;->a:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "context"

    if-eqz v0, :cond_1

    const/16 v3, 0x2710

    const-string v4, "AD_interstitialFailRefreshInterval"

    .line 4
    invoke-static {v0, v4, v3}, Lcc0;->h(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Linshot/collage/adconfig/l;->c:I

    .line 5
    sget-object v0, Linshot/collage/adconfig/a;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-string v2, "AD_enableCommonResultAndPicker"

    .line 6
    invoke-static {v0, v2, v1}, Lcc0;->g(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Linshot/collage/adconfig/l;->d:Z

    .line 7
    new-instance v0, Linshot/collage/adconfig/l$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Linshot/collage/adconfig/l$a;-><init>(Landroid/os/Looper;)V

    sput-object v0, Linshot/collage/adconfig/l;->e:Linshot/collage/adconfig/l$a;

    return-void

    .line 8
    :cond_0
    invoke-static {v2}, Lgg0;->j(Ljava/lang/String;)V

    throw v1

    .line 9
    :cond_1
    invoke-static {v2}, Lgg0;->j(Ljava/lang/String;)V

    throw v1
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a(Linshot/collage/adconfig/l;)Ljava/util/HashMap;
    .locals 0

    .line 1
    sget-object p0, Linshot/collage/adconfig/l;->a:Ljava/util/HashMap;

    return-object p0
.end method

.method public static final synthetic b(Linshot/collage/adconfig/l;)Linshot/collage/adconfig/l$a;
    .locals 0

    .line 1
    sget-object p0, Linshot/collage/adconfig/l;->e:Linshot/collage/adconfig/l$a;

    return-object p0
.end method

.method public static final synthetic c(Linshot/collage/adconfig/l;)Z
    .locals 0

    .line 1
    sget-boolean p0, Linshot/collage/adconfig/l;->b:Z

    return p0
.end method

.method public static final synthetic d(Linshot/collage/adconfig/l;)I
    .locals 0

    .line 1
    sget p0, Linshot/collage/adconfig/l;->c:I

    return p0
.end method


# virtual methods
.method public final e()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    sput-boolean v0, Linshot/collage/adconfig/l;->b:Z

    .line 2
    sget-object v0, Linshot/collage/adconfig/l;->e:Linshot/collage/adconfig/l$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 3
    sget-object v0, Linshot/collage/adconfig/l;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lob0;

    .line 4
    invoke-static {}, Linshot/collage/adconfig/a;->d()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lob0;->j(Landroid/app/Activity;)V

    goto :goto_0

    .line 5
    :cond_0
    sget-object v0, Linshot/collage/adconfig/l;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public final f(Linshot/collage/adconfig/j;Z)V
    .locals 13

    const-string v0, "context"

    sget-object v1, Linshot/collage/adconfig/j;->b:Linshot/collage/adconfig/j;

    sget-object v2, Linshot/collage/adconfig/j;->c:Linshot/collage/adconfig/j;

    const-string v3, "adType"

    invoke-static {p1, v3}, Lgg0;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-boolean v3, Linshot/collage/adconfig/l;->d:Z

    if-eqz v3, :cond_0

    if-ne p1, v2, :cond_0

    move-object p1, v1

    .line 2
    :cond_0
    invoke-static {}, Linshot/collage/adconfig/a;->b()Z

    move-result v3

    const-string v4, "FullAd"

    if-nez v3, :cond_1

    .line 3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u53d6\u6d88\u52a0\u8f7d: !canShowAds, type = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Linshot/collage/adconfig/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 4
    :try_start_0
    sget-object v7, Linshot/collage/adconfig/a;->a:Landroid/content/Context;

    if-eqz v7, :cond_3

    const-string v8, "AD_AvailableSpace"

    const/16 v9, 0x32

    .line 5
    invoke-static {v7, v8, v9}, Lcc0;->h(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7

    .line 6
    new-instance v8, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    const-string v10, "Environment.getExternalStorageDirectory()"

    invoke-static {v9, v10}, Lgg0;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v8}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v9

    invoke-virtual {v8}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v11

    mul-long v9, v9, v11

    mul-int/lit16 v7, v7, 0x400

    mul-int/lit16 v7, v7, 0x400

    int-to-long v7, v7

    cmp-long v11, v9, v7

    if-ltz v11, :cond_2

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    goto :goto_1

    .line 8
    :cond_3
    invoke-static {v0}, Lgg0;->j(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v7

    .line 9
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 v7, 0x1

    :goto_1
    if-nez v7, :cond_4

    .line 10
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u53d6\u6d88\u52a0\u8f7d: \u7a7a\u95f4\u4e0d\u8db3, type = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Linshot/collage/adconfig/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 11
    :cond_4
    invoke-static {}, Linshot/collage/adconfig/a;->d()Landroid/app/Activity;

    move-result-object v7

    if-nez v7, :cond_5

    .line 12
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u53d6\u6d88\u52a0\u8f7d: dummyActivity = null, type = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Linshot/collage/adconfig/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 13
    :cond_5
    sget-object v7, Linshot/collage/adconfig/l;->a:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 14
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u53d6\u6d88\u52a0\u8f7d: \u5df2\u52a0\u8f7d\u6216\u52a0\u8f7d\u4e2d, type = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Linshot/collage/adconfig/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6
    if-eqz p2, :cond_7

    goto :goto_2

    :cond_7
    move-object v2, p1

    .line 15
    :goto_2
    invoke-static {}, Linshot/collage/adconfig/a;->c()Landroid/content/Context;

    move-result-object p2

    .line 16
    invoke-static {p2, v0}, Lgg0;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {v2, v0}, Lgg0;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "restrictFullAdRequest-"

    .line 17
    invoke-static {v0}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 18
    invoke-static {p2, v0, v3}, Lcc0;->g(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_4

    .line 19
    :cond_8
    sget-object v0, Linshot/collage/adconfig/j;->f:Linshot/collage/adconfig/j;

    if-eq v2, v0, :cond_10

    sget-object v0, Linshot/collage/adconfig/j;->e:Linshot/collage/adconfig/j;

    if-eq v2, v0, :cond_10

    sget-object v0, Linshot/collage/adconfig/j;->d:Linshot/collage/adconfig/j;

    if-ne v2, v0, :cond_9

    goto/16 :goto_4

    .line 20
    :cond_9
    sget-object v0, Linshot/collage/adconfig/a;->c:Linshot/collage/adconfig/b;

    if-eqz v0, :cond_f

    const-string v7, "enableNewUserInterstitial-"

    .line 21
    invoke-static {v7}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 22
    invoke-static {p2, v7, v6}, Lcc0;->g(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v7

    const-string v8, "enableInterstitial-"

    .line 23
    invoke-static {v8}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 24
    invoke-static {p2, v8, v3}, Lcc0;->g(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_e

    if-nez v7, :cond_a

    .line 25
    invoke-interface {v0}, Linshot/collage/adconfig/b;->b()Z

    move-result v7

    if-eqz v7, :cond_a

    goto :goto_3

    .line 26
    :cond_a
    sget-object v7, Linshot/collage/adconfig/a;->b:Lfd0;

    if-eqz v7, :cond_d

    .line 27
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    goto :goto_4

    :pswitch_0
    if-ne v2, v1, :cond_10

    .line 28
    invoke-interface {v0}, Linshot/collage/adconfig/b;->a()Z

    move-result p2

    xor-int/2addr v3, p2

    goto :goto_4

    :pswitch_1
    const-string v5, "showFullAdTag"

    .line 29
    invoke-static {p2, v5, v6}, Lcc0;->h(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p2

    const/4 v5, 0x3

    if-ne v2, v1, :cond_c

    const/4 v1, 0x2

    if-eq p2, v1, :cond_b

    if-ne p2, v5, :cond_e

    .line 30
    :cond_b
    invoke-interface {v0}, Linshot/collage/adconfig/b;->a()Z

    move-result p2

    if-nez p2, :cond_e

    goto :goto_4

    :cond_c
    if-eq p2, v3, :cond_10

    if-ne p2, v5, :cond_e

    goto :goto_4

    :cond_d
    const-string p1, "adApp"

    .line 31
    invoke-static {p1}, Lgg0;->j(Ljava/lang/String;)V

    throw v5

    :cond_e
    :goto_3
    const/4 v3, 0x0

    goto :goto_4

    :cond_f
    const-string p1, "callback"

    .line 32
    invoke-static {p1}, Lgg0;->j(Ljava/lang/String;)V

    throw v5

    :cond_10
    :goto_4
    if-nez v3, :cond_11

    .line 33
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "\u53d6\u6d88\u52a0\u8f7d: \u63a7\u5236\u903b\u8f91\u7981\u6b62\u52a0\u8f7d, type = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Linshot/collage/adconfig/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 34
    :cond_11
    sget-object p2, Linshot/collage/adconfig/l;->a:Ljava/util/HashMap;

    .line 35
    new-instance v0, Lcom/google/ads/ADRequestList;

    new-instance v1, Linshot/collage/adconfig/m;

    invoke-direct {v1, p1, v6}, Linshot/collage/adconfig/m;-><init>(Linshot/collage/adconfig/j;Z)V

    invoke-direct {v0, v1}, Lcom/google/ads/ADRequestList;-><init>(Lsb0;)V

    .line 36
    new-instance v1, Lob0;

    .line 37
    invoke-static {}, Linshot/collage/adconfig/a;->d()Landroid/app/Activity;

    move-result-object v2

    .line 38
    invoke-static {}, Linshot/collage/adconfig/a;->c()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0, p1}, Linshot/collage/adconfig/e;->c(Landroid/content/Context;Lcom/google/ads/ADRequestList;Linshot/collage/adconfig/j;)Lcom/google/ads/ADRequestList;

    .line 39
    invoke-direct {v1, v2, v0, v6}, Lob0;-><init>(Landroid/app/Activity;Lcom/google/ads/ADRequestList;Z)V

    .line 40
    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final g()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    sput-boolean v0, Linshot/collage/adconfig/l;->b:Z

    .line 2
    sget-object v0, Linshot/collage/adconfig/l;->e:Linshot/collage/adconfig/l$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public final h(Linshot/collage/adconfig/j;)V
    .locals 2

    const-string v0, "type"

    invoke-static {p1, v0}, Lgg0;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, v0}, Lgg0;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResume, type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FullAd"

    invoke-static {v1, v0}, Linshot/collage/adconfig/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 3
    sput-boolean v0, Linshot/collage/adconfig/l;->b:Z

    .line 4
    sget-object v0, Linshot/collage/adconfig/l;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    sget-object v0, Linshot/collage/adconfig/l;->e:Linshot/collage/adconfig/l$a;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 6
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 7
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public final i(Landroid/app/Activity;Linshot/collage/adconfig/j;)Z
    .locals 12

    const-string v0, "activity"

    invoke-static {p1, v0}, Lgg0;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "adType"

    invoke-static {p2, v1}, Lgg0;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v2, Linshot/collage/adconfig/j;->b:Linshot/collage/adconfig/j;

    sget-object v3, Linshot/collage/adconfig/j;->c:Linshot/collage/adconfig/j;

    invoke-static {p1, v0}, Lgg0;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v1}, Lgg0;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-boolean v0, Linshot/collage/adconfig/l;->d:Z

    if-eqz v0, :cond_0

    if-ne p2, v3, :cond_0

    move-object p2, v2

    .line 3
    :cond_0
    sget-object v0, Linshot/collage/adconfig/a;->a:Landroid/content/Context;

    const-string v1, "context"

    const/4 v3, 0x0

    if-eqz v0, :cond_15

    .line 4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u8c03\u7528\u5168\u5c4f\u5e7f\u544a-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AD"

    invoke-static {v0, v5, v4}, Linshot/collage/adconfig/p;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    sget-object v0, Linshot/collage/adconfig/a;->c:Linshot/collage/adconfig/b;

    const-string v4, "callback"

    if-eqz v0, :cond_14

    invoke-interface {v0}, Linshot/collage/adconfig/b;->c()Z

    move-result v0

    const-string v6, "\u5168\u5c4f\u5e7f\u544a\u5c55\u793a\u5931\u8d25-"

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez v0, :cond_2

    .line 6
    sget-object p1, Linshot/collage/adconfig/a;->a:Landroid/content/Context;

    if-eqz p1, :cond_1

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ": !canShowAds"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v5, p2}, Linshot/collage/adconfig/p;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 8
    :cond_1
    invoke-static {v1}, Lgg0;->j(Ljava/lang/String;)V

    throw v3

    .line 9
    :cond_2
    sget-object v0, Linshot/collage/adconfig/l;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 10
    invoke-static {p1, v1}, Lgg0;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lgg0;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "restrictFullAdShow-"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-static {p1, v0, v7}, Lcc0;->g(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_5

    .line 13
    :cond_3
    sget-object v0, Linshot/collage/adconfig/j;->f:Linshot/collage/adconfig/j;

    if-eq p2, v0, :cond_f

    sget-object v0, Linshot/collage/adconfig/j;->e:Linshot/collage/adconfig/j;

    if-eq p2, v0, :cond_f

    sget-object v0, Linshot/collage/adconfig/j;->d:Linshot/collage/adconfig/j;

    if-ne p2, v0, :cond_4

    goto/16 :goto_5

    .line 14
    :cond_4
    sget-object v0, Linshot/collage/adconfig/a;->c:Linshot/collage/adconfig/b;

    if-eqz v0, :cond_e

    const-string v4, "enableNewUserInterstitial-"

    .line 15
    invoke-static {v4}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 16
    invoke-static {p1, v4, v8}, Lcc0;->g(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v4

    const-string v9, "enableInterstitial-"

    .line 17
    invoke-static {v9}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 18
    invoke-static {p1, v10, v7}, Lcc0;->g(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_d

    if-nez v4, :cond_5

    .line 19
    invoke-interface {v0}, Linshot/collage/adconfig/b;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    goto/16 :goto_4

    .line 20
    :cond_5
    sget-object v0, Linshot/collage/adconfig/a;->b:Lfd0;

    if-eqz v0, :cond_c

    .line 21
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_5

    .line 22
    :pswitch_0
    invoke-static {v9}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 23
    invoke-static {p1, v0, v7}, Lcc0;->g(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "interstitialInterval-"

    .line 24
    invoke-static {v2}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 25
    invoke-static {p1, v2, v7}, Lcc0;->h(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 26
    invoke-static {p1, p2}, Linshot/collage/adconfig/d;->e(Landroid/content/Context;Linshot/collage/adconfig/j;)I

    move-result v4

    if-eqz v0, :cond_6

    sub-int/2addr v2, v7

    if-lt v4, v2, :cond_6

    const/4 v0, 0x1

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_7

    .line 27
    invoke-static {p1, p2, v8}, Linshot/collage/adconfig/d;->i(Landroid/content/Context;Linshot/collage/adconfig/j;I)V

    goto :goto_6

    :cond_7
    add-int/2addr v4, v7

    .line 28
    invoke-static {p1, p2, v4}, Linshot/collage/adconfig/d;->i(Landroid/content/Context;Linshot/collage/adconfig/j;I)V

    goto :goto_6

    :pswitch_1
    const-string v0, "interstitialTimeInterval-"

    .line 29
    invoke-static {v0}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-ne p2, v2, :cond_8

    const/4 v4, 0x0

    goto :goto_1

    :cond_8
    const/16 v4, 0xa

    .line 30
    :goto_1
    invoke-static {p1, v0, v4}, Lcc0;->h(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const-string v4, "showFullAdTag"

    .line 31
    invoke-static {p1, v4, v8}, Lcc0;->h(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    .line 32
    invoke-static {p1, p2}, Linshot/collage/adconfig/d;->c(Landroid/content/Context;Linshot/collage/adconfig/j;)J

    move-result-wide v8

    const/4 v10, 0x3

    if-ne p2, v2, :cond_9

    const/4 v2, 0x2

    if-eq v4, v2, :cond_b

    if-ne v4, v10, :cond_a

    goto :goto_2

    :cond_9
    if-eq v4, v7, :cond_b

    if-ne v4, v10, :cond_a

    goto :goto_2

    :cond_a
    const/4 v2, 0x0

    goto :goto_3

    :cond_b
    :goto_2
    const/4 v2, 0x1

    :goto_3
    if-eqz v2, :cond_d

    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v8

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v8, v0

    cmp-long v0, v10, v8

    if-lez v0, :cond_d

    goto :goto_5

    :cond_c
    const-string p1, "adApp"

    .line 34
    invoke-static {p1}, Lgg0;->j(Ljava/lang/String;)V

    throw v3

    :cond_d
    :goto_4
    const/4 v0, 0x0

    goto :goto_6

    .line 35
    :cond_e
    invoke-static {v4}, Lgg0;->j(Ljava/lang/String;)V

    throw v3

    :cond_f
    :goto_5
    const/4 v0, 0x1

    :goto_6
    if-nez v0, :cond_11

    .line 36
    sget-object p1, Linshot/collage/adconfig/a;->a:Landroid/content/Context;

    if-eqz p1, :cond_10

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ": \u63a7\u5236\u903b\u8f91\u7981\u6b62\u5c55\u793a"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v5, p2}, Linshot/collage/adconfig/p;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_7

    .line 38
    :cond_10
    invoke-static {v1}, Lgg0;->j(Ljava/lang/String;)V

    throw v3

    .line 39
    :cond_11
    sget-object v0, Linshot/collage/adconfig/l;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lob0;

    if-eqz v0, :cond_12

    .line 40
    invoke-virtual {v0}, Lob0;->l()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 41
    new-instance v1, Linshot/collage/adconfig/n;

    invoke-direct {v1, p2}, Linshot/collage/adconfig/n;-><init>(Linshot/collage/adconfig/j;)V

    invoke-virtual {v0, p1, v1}, Lob0;->n(Landroid/app/Activity;Lwb0$a;)V

    .line 42
    sget-object p1, Linshot/collage/adconfig/l;->a:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 43
    :cond_12
    sget-object p1, Linshot/collage/adconfig/a;->a:Landroid/content/Context;

    if-eqz p1, :cond_13

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ": \u672a\u52a0\u8f7d|\u52a0\u8f7d\u4e2d"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v5, p2}, Linshot/collage/adconfig/p;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_7
    const/4 v7, 0x0

    :goto_8
    return v7

    .line 45
    :cond_13
    invoke-static {v1}, Lgg0;->j(Ljava/lang/String;)V

    throw v3

    .line 46
    :cond_14
    invoke-static {v4}, Lgg0;->j(Ljava/lang/String;)V

    throw v3

    .line 47
    :cond_15
    invoke-static {v1}, Lgg0;->j(Ljava/lang/String;)V

    throw v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
