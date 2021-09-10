.class public final Linshot/collage/adconfig/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Linshot/collage/adconfig/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Linshot/collage/adconfig/c;

    invoke-direct {v0}, Linshot/collage/adconfig/c;-><init>()V

    sput-object v0, Linshot/collage/adconfig/e;->a:Linshot/collage/adconfig/c;

    return-void
.end method

.method public static final a(Landroid/content/Context;Lcom/google/ads/ADRequestList;)Lcom/google/ads/ADRequestList;
    .locals 11

    const-string v0, "context"

    invoke-static {p0, v0}, Lgg0;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestList"

    invoke-static {p1, v0}, Lgg0;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Linshot/collage/adconfig/a;->a()Lid0;

    move-result-object v0

    .line 2
    invoke-static {}, Linshot/collage/adconfig/a;->f()Z

    move-result v1

    .line 3
    new-instance v2, Ljb0;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljb0;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v2}, Ljb0;->b()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "layout_id"

    const v5, 0x7f0b009c

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5
    new-instance v3, Llb0;

    sget-object v6, Lcom/zjsoft/zjad/a;->a:Ljava/lang/String;

    const-string v7, "n"

    invoke-direct {v3, v6, v7, v2}, Llb0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljb0;)V

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "Admob"

    .line 6
    invoke-static {p0, v2}, Linshot/collage/adconfig/d;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    const-string v3, "r"

    const-string v6, "h"

    if-eqz v2, :cond_b

    .line 7
    invoke-virtual {v0}, Lid0;->c()Lgd0;

    move-result-object v2

    invoke-static {p0, v2}, Linshot/collage/adconfig/e;->b(Landroid/content/Context;Lgd0;)Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_0
    if-eqz v8, :cond_2

    .line 9
    sget-object v8, Lcom/zjsoft/admob/a;->b:Ljava/lang/String;

    .line 10
    new-instance v9, Ljb0;

    if-eqz v1, :cond_1

    const-string v2, "ca-app-pub-3940256099942544/2247696110"

    :cond_1
    invoke-direct {v9, v2}, Ljb0;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v9}, Ljb0;->b()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 12
    new-instance v2, Llb0;

    invoke-direct {v2, v8, v6, v9}, Llb0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljb0;)V

    .line 13
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    :cond_2
    invoke-virtual {v0}, Lid0;->a()Lgd0;

    move-result-object v2

    invoke-static {p0, v2}, Linshot/collage/adconfig/e;->b(Landroid/content/Context;Lgd0;)Ljava/lang/String;

    move-result-object v2

    .line 15
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    const/4 v5, 0x1

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    :goto_1
    const-string v8, "ca-app-pub-3940256099942544/6300978111"

    if-eqz v5, :cond_5

    .line 16
    new-instance v5, Llb0;

    .line 17
    sget-object v9, Lcom/zjsoft/admob/a;->a:Ljava/lang/String;

    .line 18
    new-instance v10, Ljb0;

    if-eqz v1, :cond_4

    move-object v2, v8

    :cond_4
    invoke-direct {v10, v2}, Ljb0;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-direct {v5, v9, v6, v10}, Llb0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljb0;)V

    .line 20
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    :cond_5
    invoke-virtual {v0}, Lid0;->b()Lgd0;

    move-result-object v2

    invoke-static {p0, v2}, Linshot/collage/adconfig/e;->b(Landroid/content/Context;Lgd0;)Ljava/lang/String;

    move-result-object v2

    .line 22
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_6

    const/4 v5, 0x1

    goto :goto_2

    :cond_6
    const/4 v5, 0x0

    :goto_2
    if-eqz v5, :cond_8

    .line 23
    new-instance v5, Llb0;

    .line 24
    sget-object v9, Lcom/zjsoft/admob/a;->a:Ljava/lang/String;

    .line 25
    new-instance v10, Ljb0;

    if-eqz v1, :cond_7

    move-object v2, v8

    :cond_7
    invoke-direct {v10, v2}, Ljb0;-><init>(Ljava/lang/String;)V

    const-string v2, "m"

    .line 26
    invoke-direct {v5, v9, v2, v10}, Llb0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljb0;)V

    .line 27
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    :cond_8
    invoke-virtual {v0}, Lid0;->d()Lgd0;

    move-result-object v2

    invoke-static {p0, v2}, Linshot/collage/adconfig/e;->b(Landroid/content/Context;Lgd0;)Ljava/lang/String;

    move-result-object v2

    .line 29
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_9

    const/4 v5, 0x1

    goto :goto_3

    :cond_9
    const/4 v5, 0x0

    :goto_3
    if-eqz v5, :cond_b

    .line 30
    new-instance v5, Llb0;

    .line 31
    sget-object v9, Lcom/zjsoft/admob/a;->a:Ljava/lang/String;

    .line 32
    new-instance v10, Ljb0;

    if-eqz v1, :cond_a

    goto :goto_4

    :cond_a
    move-object v8, v2

    :goto_4
    invoke-direct {v10, v8}, Ljb0;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-direct {v5, v9, v3, v10}, Llb0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljb0;)V

    .line 34
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    const-string v2, "Fan"

    .line 35
    invoke-static {p0, v2}, Linshot/collage/adconfig/d;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 36
    invoke-virtual {v0}, Lid0;->f()Lgd0;

    move-result-object v2

    invoke-static {p0, v2}, Linshot/collage/adconfig/e;->b(Landroid/content/Context;Lgd0;)Ljava/lang/String;

    move-result-object v2

    .line 37
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_c

    const/4 v5, 0x1

    goto :goto_5

    :cond_c
    const/4 v5, 0x0

    :goto_5
    if-eqz v5, :cond_e

    .line 38
    sget-object v5, Lcom/zjsoft/fan/a;->b:Ljava/lang/String;

    .line 39
    new-instance v8, Ljb0;

    if-eqz v1, :cond_d

    invoke-static {v2}, Lkc0;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_d
    invoke-direct {v8, v2}, Ljb0;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v8}, Ljb0;->b()Landroid/os/Bundle;

    move-result-object v2

    const v9, 0x7f0b009d

    invoke-virtual {v2, v4, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 41
    new-instance v2, Llb0;

    invoke-direct {v2, v5, v6, v8}, Llb0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljb0;)V

    .line 42
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    :cond_e
    invoke-virtual {v0}, Lid0;->e()Lgd0;

    move-result-object v2

    invoke-static {p0, v2}, Linshot/collage/adconfig/e;->b(Landroid/content/Context;Lgd0;)Ljava/lang/String;

    move-result-object v2

    .line 44
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_f

    const/4 v4, 0x1

    goto :goto_6

    :cond_f
    const/4 v4, 0x0

    :goto_6
    if-eqz v4, :cond_11

    .line 45
    new-instance v4, Llb0;

    .line 46
    sget-object v5, Lcom/zjsoft/fan/a;->a:Ljava/lang/String;

    new-instance v8, Ljb0;

    if-eqz v1, :cond_10

    .line 47
    invoke-static {v2}, Lkc0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 48
    :cond_10
    invoke-direct {v8, v2}, Ljb0;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-direct {v4, v5, v6, v8}, Llb0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljb0;)V

    .line 50
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    :cond_11
    invoke-virtual {v0}, Lid0;->g()Lgd0;

    move-result-object v2

    invoke-static {p0, v2}, Linshot/collage/adconfig/e;->b(Landroid/content/Context;Lgd0;)Ljava/lang/String;

    move-result-object v2

    .line 52
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_12

    const/4 v4, 0x1

    goto :goto_7

    :cond_12
    const/4 v4, 0x0

    :goto_7
    if-eqz v4, :cond_14

    .line 53
    new-instance v4, Llb0;

    .line 54
    sget-object v5, Lcom/zjsoft/fan/a;->a:Ljava/lang/String;

    new-instance v6, Ljb0;

    if-eqz v1, :cond_13

    .line 55
    invoke-static {v2}, Lkc0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 56
    :cond_13
    invoke-direct {v6, v2}, Ljb0;-><init>(Ljava/lang/String;)V

    .line 57
    invoke-direct {v4, v5, v3, v6}, Llb0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljb0;)V

    .line 58
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14
    const-string v1, "Vungle"

    .line 59
    invoke-static {p0, v1}, Linshot/collage/adconfig/d;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 60
    new-instance v1, Llc0;

    .line 61
    invoke-virtual {v0}, Lid0;->h()Lgd0;

    move-result-object v2

    invoke-static {p0, v2}, Linshot/collage/adconfig/e;->b(Landroid/content/Context;Lgd0;)Ljava/lang/String;

    move-result-object v2

    .line 62
    invoke-virtual {v0}, Lid0;->Q()Lgd0;

    move-result-object v0

    invoke-static {p0, v0}, Linshot/collage/adconfig/e;->b(Landroid/content/Context;Lgd0;)Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-direct {v1, v2, v0}, Llc0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-virtual {v1}, Llc0;->a()Ljava/lang/String;

    move-result-object v0

    const-string v2, "vungleId.appId"

    invoke-static {v0, v2}, Lgg0;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_15

    const/4 v0, 0x1

    goto :goto_8

    :cond_15
    const/4 v0, 0x0

    :goto_8
    if-eqz v0, :cond_17

    invoke-virtual {v1}, Llc0;->b()Ljava/lang/String;

    move-result-object v0

    const-string v2, "vungleId.id"

    invoke-static {v0, v2}, Lgg0;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_16

    const/4 v0, 0x1

    goto :goto_9

    :cond_16
    const/4 v0, 0x0

    :goto_9
    if-eqz v0, :cond_17

    .line 65
    sget-object v0, Lad0;->a:Ljava/lang/String;

    new-instance v2, Ljb0;

    invoke-virtual {v1}, Llc0;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljb0;-><init>(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v2}, Ljb0;->b()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1}, Llc0;->a()Ljava/lang/String;

    move-result-object v1

    const-string v4, "app_id"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    new-instance v1, Llb0;

    invoke-direct {v1, v0, v7, v2}, Llb0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljb0;)V

    .line 68
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    :cond_17
    sget-object v0, Linshot/collage/adconfig/e;->a:Linshot/collage/adconfig/c;

    invoke-virtual {v0, p0, p1}, Linshot/collage/adconfig/c;->b(Landroid/content/Context;Lcom/google/ads/ADRequestList;)Lcom/google/ads/ADRequestList;

    return-object p1
.end method

.method private static final b(Landroid/content/Context;Lgd0;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const-string p0, ""

    return-object p0

    .line 1
    :cond_0
    invoke-static {}, Linshot/collage/adconfig/a;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Lgd0;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3
    :cond_1
    invoke-virtual {p1}, Lgd0;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lgd0;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcc0;->j(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "ServerData.getCommonRemo\u2026ntext, adId.key, adId.id)"

    invoke-static {p0, p1}, Lgg0;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final c(Landroid/content/Context;Lcom/google/ads/ADRequestList;Linshot/collage/adconfig/j;)Lcom/google/ads/ADRequestList;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "context"

    invoke-static {v0, v3}, Lgg0;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "requestList"

    invoke-static {v1, v3}, Lgg0;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "type"

    invoke-static {v2, v3}, Lgg0;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Linshot/collage/adconfig/a;->a()Lid0;

    move-result-object v3

    .line 2
    invoke-static {}, Linshot/collage/adconfig/a;->f()Z

    move-result v4

    .line 3
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    const-string v6, "app_id"

    const-string v7, "n"

    const-string v8, "m"

    const-string v9, "vungleId.id"

    const-string v10, "vungleId.appId"

    const-string v11, "Vungle"

    const-string v12, "Fan"

    const-string v13, "Admob"

    const-string v14, "r"

    const-string v15, "h"

    if-eqz v5, :cond_39

    const/4 v2, 0x1

    if-eq v5, v2, :cond_26

    const/4 v2, 0x3

    if-eq v5, v2, :cond_13

    const/4 v2, 0x4

    if-eq v5, v2, :cond_0

    goto/16 :goto_24

    .line 4
    :cond_0
    invoke-static {v0, v13}, Linshot/collage/adconfig/d;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "AD_SplashSkipInit"

    const/4 v5, 0x1

    .line 5
    invoke-static {v0, v2, v5}, Lcc0;->g(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    .line 6
    invoke-virtual {v3}, Lid0;->E()Lgd0;

    move-result-object v5

    invoke-static {v0, v5}, Linshot/collage/adconfig/e;->b(Landroid/content/Context;Lgd0;)Ljava/lang/String;

    move-result-object v5

    .line 7
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_1

    const/4 v13, 0x1

    goto :goto_0

    :cond_1
    const/4 v13, 0x0

    :goto_0
    move-object/from16 v16, v5

    const-string v5, "skip_init"

    if-eqz v13, :cond_3

    .line 8
    sget-object v13, Lcom/zjsoft/admob/a;->d:Ljava/lang/String;

    move-object/from16 v17, v7

    new-instance v7, Ljb0;

    if-eqz v4, :cond_2

    .line 9
    invoke-static {}, Landroidx/core/app/b;->L()Ljava/lang/String;

    move-result-object v16

    :cond_2
    move-object/from16 v18, v6

    move-object/from16 v6, v16

    .line 10
    invoke-direct {v7, v6}, Ljb0;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v7}, Ljb0;->b()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v6, v5, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 12
    new-instance v6, Llb0;

    invoke-direct {v6, v13, v15, v7}, Llb0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljb0;)V

    .line 13
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move-object/from16 v18, v6

    move-object/from16 v17, v7

    .line 14
    :goto_1
    invoke-virtual {v3}, Lid0;->F()Lgd0;

    move-result-object v6

    invoke-static {v0, v6}, Linshot/collage/adconfig/e;->b(Landroid/content/Context;Lgd0;)Ljava/lang/String;

    move-result-object v6

    .line 15
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_4

    const/4 v7, 0x1

    goto :goto_2

    :cond_4
    const/4 v7, 0x0

    :goto_2
    if-eqz v7, :cond_6

    .line 16
    sget-object v7, Lcom/zjsoft/admob/a;->d:Ljava/lang/String;

    new-instance v13, Ljb0;

    if-eqz v4, :cond_5

    .line 17
    invoke-static {}, Landroidx/core/app/b;->L()Ljava/lang/String;

    move-result-object v6

    .line 18
    :cond_5
    invoke-direct {v13, v6}, Ljb0;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v13}, Ljb0;->b()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v6, v5, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 20
    new-instance v6, Llb0;

    invoke-direct {v6, v7, v8, v13}, Llb0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljb0;)V

    .line 21
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    :cond_6
    invoke-virtual {v3}, Lid0;->G()Lgd0;

    move-result-object v6

    invoke-static {v0, v6}, Linshot/collage/adconfig/e;->b(Landroid/content/Context;Lgd0;)Ljava/lang/String;

    move-result-object v6

    .line 23
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_7

    const/4 v7, 0x1

    goto :goto_3

    :cond_7
    const/4 v7, 0x0

    :goto_3
    if-eqz v7, :cond_a

    .line 24
    sget-object v7, Lcom/zjsoft/admob/a;->d:Ljava/lang/String;

    new-instance v8, Ljb0;

    if-eqz v4, :cond_8

    .line 25
    invoke-static {}, Landroidx/core/app/b;->L()Ljava/lang/String;

    move-result-object v6

    .line 26
    :cond_8
    invoke-direct {v8, v6}, Ljb0;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v8}, Ljb0;->b()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v6, v5, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 28
    new-instance v2, Llb0;

    invoke-direct {v2, v7, v14, v8}, Llb0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljb0;)V

    .line 29
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_9
    move-object/from16 v18, v6

    move-object/from16 v17, v7

    .line 30
    :cond_a
    :goto_4
    invoke-static {v0, v12}, Linshot/collage/adconfig/d;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 31
    invoke-virtual {v3}, Lid0;->H()Lgd0;

    move-result-object v2

    invoke-static {v0, v2}, Linshot/collage/adconfig/e;->b(Landroid/content/Context;Lgd0;)Ljava/lang/String;

    move-result-object v2

    .line 32
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_b

    const/4 v5, 0x1

    goto :goto_5

    :cond_b
    const/4 v5, 0x0

    :goto_5
    if-eqz v5, :cond_d

    .line 33
    new-instance v5, Llb0;

    .line 34
    sget-object v6, Lcom/zjsoft/fan/a;->d:Ljava/lang/String;

    new-instance v7, Ljb0;

    if-eqz v4, :cond_c

    .line 35
    invoke-static {v2}, Lkc0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 36
    :cond_c
    invoke-direct {v7, v2}, Ljb0;-><init>(Ljava/lang/String;)V

    .line 37
    invoke-direct {v5, v6, v15, v7}, Llb0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljb0;)V

    .line 38
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    :cond_d
    invoke-virtual {v3}, Lid0;->I()Lgd0;

    move-result-object v2

    invoke-static {v0, v2}, Linshot/collage/adconfig/e;->b(Landroid/content/Context;Lgd0;)Ljava/lang/String;

    move-result-object v2

    .line 40
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_e

    const/4 v5, 0x1

    goto :goto_6

    :cond_e
    const/4 v5, 0x0

    :goto_6
    if-eqz v5, :cond_10

    .line 41
    new-instance v5, Llb0;

    .line 42
    sget-object v6, Lcom/zjsoft/fan/a;->d:Ljava/lang/String;

    new-instance v7, Ljb0;

    if-eqz v4, :cond_f

    .line 43
    invoke-static {v2}, Lkc0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 44
    :cond_f
    invoke-direct {v7, v2}, Ljb0;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-direct {v5, v6, v14, v7}, Llb0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljb0;)V

    .line 46
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    :cond_10
    invoke-static {v0, v11}, Linshot/collage/adconfig/d;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 48
    new-instance v2, Llc0;

    .line 49
    invoke-virtual {v3}, Lid0;->J()Lgd0;

    move-result-object v4

    invoke-static {v0, v4}, Linshot/collage/adconfig/e;->b(Landroid/content/Context;Lgd0;)Ljava/lang/String;

    move-result-object v4

    .line 50
    invoke-virtual {v3}, Lid0;->Q()Lgd0;

    move-result-object v3

    invoke-static {v0, v3}, Linshot/collage/adconfig/e;->b(Landroid/content/Context;Lgd0;)Ljava/lang/String;

    move-result-object v3

    .line 51
    invoke-direct {v2, v4, v3}, Llc0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-virtual {v2}, Llc0;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v10}, Lgg0;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_11

    const/4 v3, 0x1

    goto :goto_7

    :cond_11
    const/4 v3, 0x0

    :goto_7
    if-eqz v3, :cond_4c

    invoke-virtual {v2}, Llc0;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v9}, Lgg0;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_12

    const/4 v3, 0x1

    goto :goto_8

    :cond_12
    const/4 v3, 0x0

    :goto_8
    if-eqz v3, :cond_4c

    .line 53
    sget-object v3, Lad0;->b:Ljava/lang/String;

    .line 54
    new-instance v4, Ljb0;

    invoke-virtual {v2}, Llc0;->b()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljb0;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v4}, Ljb0;->b()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v2}, Llc0;->a()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v6, v18

    invoke-virtual {v5, v6, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    new-instance v2, Llb0;

    move-object/from16 v5, v17

    invoke-direct {v2, v3, v5, v4}, Llb0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljb0;)V

    .line 57
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    :cond_13
    move-object v5, v7

    .line 58
    invoke-static {v0, v13}, Linshot/collage/adconfig/d;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 59
    invoke-virtual {v3}, Lid0;->K()Lgd0;

    move-result-object v2

    invoke-static {v0, v2}, Linshot/collage/adconfig/e;->b(Landroid/content/Context;Lgd0;)Ljava/lang/String;

    move-result-object v2

    .line 60
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_14

    const/4 v7, 0x1

    goto :goto_9

    :cond_14
    const/4 v7, 0x0

    :goto_9
    if-eqz v7, :cond_16

    .line 61
    new-instance v7, Llb0;

    .line 62
    sget-object v13, Lcom/zjsoft/admob/a;->d:Ljava/lang/String;

    move-object/from16 v16, v2

    new-instance v2, Ljb0;

    if-eqz v4, :cond_15

    .line 63
    invoke-static {}, Landroidx/core/app/b;->L()Ljava/lang/String;

    move-result-object v16

    :cond_15
    move-object/from16 v17, v5

    move-object/from16 v5, v16

    .line 64
    invoke-direct {v2, v5}, Ljb0;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-direct {v7, v13, v15, v2}, Llb0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljb0;)V

    .line 66
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_16
    move-object/from16 v17, v5

    .line 67
    :goto_a
    invoke-virtual {v3}, Lid0;->L()Lgd0;

    move-result-object v2

    invoke-static {v0, v2}, Linshot/collage/adconfig/e;->b(Landroid/content/Context;Lgd0;)Ljava/lang/String;

    move-result-object v2

    .line 68
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_17

    const/4 v5, 0x1

    goto :goto_b

    :cond_17
    const/4 v5, 0x0

    :goto_b
    if-eqz v5, :cond_19

    .line 69
    new-instance v5, Llb0;

    .line 70
    sget-object v7, Lcom/zjsoft/admob/a;->d:Ljava/lang/String;

    new-instance v13, Ljb0;

    if-eqz v4, :cond_18

    .line 71
    invoke-static {}, Landroidx/core/app/b;->L()Ljava/lang/String;

    move-result-object v2

    .line 72
    :cond_18
    invoke-direct {v13, v2}, Ljb0;-><init>(Ljava/lang/String;)V

    .line 73
    invoke-direct {v5, v7, v8, v13}, Llb0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljb0;)V

    .line 74
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    :cond_19
    invoke-virtual {v3}, Lid0;->M()Lgd0;

    move-result-object v2

    invoke-static {v0, v2}, Linshot/collage/adconfig/e;->b(Landroid/content/Context;Lgd0;)Ljava/lang/String;

    move-result-object v2

    .line 76
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1a

    const/4 v5, 0x1

    goto :goto_c

    :cond_1a
    const/4 v5, 0x0

    :goto_c
    if-eqz v5, :cond_1d

    .line 77
    new-instance v5, Llb0;

    .line 78
    sget-object v7, Lcom/zjsoft/admob/a;->d:Ljava/lang/String;

    new-instance v8, Ljb0;

    if-eqz v4, :cond_1b

    .line 79
    invoke-static {}, Landroidx/core/app/b;->L()Ljava/lang/String;

    move-result-object v2

    .line 80
    :cond_1b
    invoke-direct {v8, v2}, Ljb0;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-direct {v5, v7, v14, v8}, Llb0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljb0;)V

    .line 82
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_1c
    move-object/from16 v17, v5

    .line 83
    :cond_1d
    :goto_d
    invoke-static {v0, v12}, Linshot/collage/adconfig/d;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 84
    invoke-virtual {v3}, Lid0;->N()Lgd0;

    move-result-object v2

    invoke-static {v0, v2}, Linshot/collage/adconfig/e;->b(Landroid/content/Context;Lgd0;)Ljava/lang/String;

    move-result-object v2

    .line 85
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1e

    const/4 v5, 0x1

    goto :goto_e

    :cond_1e
    const/4 v5, 0x0

    :goto_e
    if-eqz v5, :cond_20

    .line 86
    new-instance v5, Llb0;

    .line 87
    sget-object v7, Lcom/zjsoft/fan/a;->d:Ljava/lang/String;

    new-instance v8, Ljb0;

    if-eqz v4, :cond_1f

    .line 88
    invoke-static {v2}, Lkc0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 89
    :cond_1f
    invoke-direct {v8, v2}, Ljb0;-><init>(Ljava/lang/String;)V

    .line 90
    invoke-direct {v5, v7, v15, v8}, Llb0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljb0;)V

    .line 91
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    :cond_20
    invoke-virtual {v3}, Lid0;->O()Lgd0;

    move-result-object v2

    invoke-static {v0, v2}, Linshot/collage/adconfig/e;->b(Landroid/content/Context;Lgd0;)Ljava/lang/String;

    move-result-object v2

    .line 93
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_21

    const/4 v5, 0x1

    goto :goto_f

    :cond_21
    const/4 v5, 0x0

    :goto_f
    if-eqz v5, :cond_23

    .line 94
    new-instance v5, Llb0;

    .line 95
    sget-object v7, Lcom/zjsoft/fan/a;->d:Ljava/lang/String;

    new-instance v8, Ljb0;

    if-eqz v4, :cond_22

    .line 96
    invoke-static {v2}, Lkc0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 97
    :cond_22
    invoke-direct {v8, v2}, Ljb0;-><init>(Ljava/lang/String;)V

    .line 98
    invoke-direct {v5, v7, v14, v8}, Llb0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljb0;)V

    .line 99
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    :cond_23
    invoke-static {v0, v11}, Linshot/collage/adconfig/d;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 101
    new-instance v2, Llc0;

    .line 102
    invoke-virtual {v3}, Lid0;->P()Lgd0;

    move-result-object v4

    invoke-static {v0, v4}, Linshot/collage/adconfig/e;->b(Landroid/content/Context;Lgd0;)Ljava/lang/String;

    move-result-object v4

    .line 103
    invoke-virtual {v3}, Lid0;->Q()Lgd0;

    move-result-object v3

    invoke-static {v0, v3}, Linshot/collage/adconfig/e;->b(Landroid/content/Context;Lgd0;)Ljava/lang/String;

    move-result-object v3

    .line 104
    invoke-direct {v2, v4, v3}, Llc0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-virtual {v2}, Llc0;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v10}, Lgg0;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_24

    const/4 v3, 0x1

    goto :goto_10

    :cond_24
    const/4 v3, 0x0

    :goto_10
    if-eqz v3, :cond_4c

    invoke-virtual {v2}, Llc0;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v9}, Lgg0;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_25

    const/4 v3, 0x1

    goto :goto_11

    :cond_25
    const/4 v3, 0x0

    :goto_11
    if-eqz v3, :cond_4c

    .line 106
    sget-object v3, Lad0;->b:Ljava/lang/String;

    .line 107
    new-instance v4, Ljb0;

    invoke-virtual {v2}, Llc0;->b()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljb0;-><init>(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v4}, Ljb0;->b()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v2}, Llc0;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v6, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    new-instance v2, Llb0;

    move-object/from16 v5, v17

    invoke-direct {v2, v3, v5, v4}, Llb0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljb0;)V

    .line 110
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    :cond_26
    move-object v5, v7

    .line 111
    invoke-static {v0, v13}, Linshot/collage/adconfig/d;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 112
    invoke-virtual {v3}, Lid0;->s()Lgd0;

    move-result-object v2

    invoke-static {v0, v2}, Linshot/collage/adconfig/e;->b(Landroid/content/Context;Lgd0;)Ljava/lang/String;

    move-result-object v2

    .line 113
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_27

    const/4 v7, 0x1

    goto :goto_12

    :cond_27
    const/4 v7, 0x0

    :goto_12
    if-eqz v7, :cond_29

    .line 114
    new-instance v7, Llb0;

    .line 115
    sget-object v13, Lcom/zjsoft/admob/a;->d:Ljava/lang/String;

    move-object/from16 v16, v2

    new-instance v2, Ljb0;

    if-eqz v4, :cond_28

    .line 116
    invoke-static {}, Landroidx/core/app/b;->L()Ljava/lang/String;

    move-result-object v16

    :cond_28
    move-object/from16 v17, v5

    move-object/from16 v5, v16

    .line 117
    invoke-direct {v2, v5}, Ljb0;-><init>(Ljava/lang/String;)V

    .line 118
    invoke-direct {v7, v13, v15, v2}, Llb0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljb0;)V

    .line 119
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_29
    move-object/from16 v17, v5

    .line 120
    :goto_13
    invoke-virtual {v3}, Lid0;->t()Lgd0;

    move-result-object v2

    invoke-static {v0, v2}, Linshot/collage/adconfig/e;->b(Landroid/content/Context;Lgd0;)Ljava/lang/String;

    move-result-object v2

    .line 121
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2a

    const/4 v5, 0x1

    goto :goto_14

    :cond_2a
    const/4 v5, 0x0

    :goto_14
    if-eqz v5, :cond_2c

    .line 122
    new-instance v5, Llb0;

    .line 123
    sget-object v7, Lcom/zjsoft/admob/a;->d:Ljava/lang/String;

    new-instance v13, Ljb0;

    if-eqz v4, :cond_2b

    .line 124
    invoke-static {}, Landroidx/core/app/b;->L()Ljava/lang/String;

    move-result-object v2

    .line 125
    :cond_2b
    invoke-direct {v13, v2}, Ljb0;-><init>(Ljava/lang/String;)V

    .line 126
    invoke-direct {v5, v7, v8, v13}, Llb0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljb0;)V

    .line 127
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    :cond_2c
    invoke-virtual {v3}, Lid0;->u()Lgd0;

    move-result-object v2

    invoke-static {v0, v2}, Linshot/collage/adconfig/e;->b(Landroid/content/Context;Lgd0;)Ljava/lang/String;

    move-result-object v2

    .line 129
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2d

    const/4 v5, 0x1

    goto :goto_15

    :cond_2d
    const/4 v5, 0x0

    :goto_15
    if-eqz v5, :cond_30

    .line 130
    new-instance v5, Llb0;

    .line 131
    sget-object v7, Lcom/zjsoft/admob/a;->d:Ljava/lang/String;

    new-instance v8, Ljb0;

    if-eqz v4, :cond_2e

    .line 132
    invoke-static {}, Landroidx/core/app/b;->L()Ljava/lang/String;

    move-result-object v2

    .line 133
    :cond_2e
    invoke-direct {v8, v2}, Ljb0;-><init>(Ljava/lang/String;)V

    .line 134
    invoke-direct {v5, v7, v14, v8}, Llb0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljb0;)V

    .line 135
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :cond_2f
    move-object/from16 v17, v5

    .line 136
    :cond_30
    :goto_16
    invoke-static {v0, v12}, Linshot/collage/adconfig/d;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 137
    invoke-virtual {v3}, Lid0;->v()Lgd0;

    move-result-object v2

    invoke-static {v0, v2}, Linshot/collage/adconfig/e;->b(Landroid/content/Context;Lgd0;)Ljava/lang/String;

    move-result-object v2

    .line 138
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_31

    const/4 v5, 0x1

    goto :goto_17

    :cond_31
    const/4 v5, 0x0

    :goto_17
    if-eqz v5, :cond_33

    .line 139
    new-instance v5, Llb0;

    .line 140
    sget-object v7, Lcom/zjsoft/fan/a;->d:Ljava/lang/String;

    new-instance v8, Ljb0;

    if-eqz v4, :cond_32

    .line 141
    invoke-static {v2}, Lkc0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 142
    :cond_32
    invoke-direct {v8, v2}, Ljb0;-><init>(Ljava/lang/String;)V

    .line 143
    invoke-direct {v5, v7, v15, v8}, Llb0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljb0;)V

    .line 144
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    :cond_33
    invoke-virtual {v3}, Lid0;->w()Lgd0;

    move-result-object v2

    invoke-static {v0, v2}, Linshot/collage/adconfig/e;->b(Landroid/content/Context;Lgd0;)Ljava/lang/String;

    move-result-object v2

    .line 146
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_34

    const/4 v5, 0x1

    goto :goto_18

    :cond_34
    const/4 v5, 0x0

    :goto_18
    if-eqz v5, :cond_36

    .line 147
    new-instance v5, Llb0;

    .line 148
    sget-object v7, Lcom/zjsoft/fan/a;->d:Ljava/lang/String;

    new-instance v8, Ljb0;

    if-eqz v4, :cond_35

    .line 149
    invoke-static {v2}, Lkc0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 150
    :cond_35
    invoke-direct {v8, v2}, Ljb0;-><init>(Ljava/lang/String;)V

    .line 151
    invoke-direct {v5, v7, v14, v8}, Llb0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljb0;)V

    .line 152
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    :cond_36
    invoke-static {v0, v11}, Linshot/collage/adconfig/d;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 154
    new-instance v2, Llc0;

    .line 155
    invoke-virtual {v3}, Lid0;->x()Lgd0;

    move-result-object v4

    invoke-static {v0, v4}, Linshot/collage/adconfig/e;->b(Landroid/content/Context;Lgd0;)Ljava/lang/String;

    move-result-object v4

    .line 156
    invoke-virtual {v3}, Lid0;->Q()Lgd0;

    move-result-object v3

    invoke-static {v0, v3}, Linshot/collage/adconfig/e;->b(Landroid/content/Context;Lgd0;)Ljava/lang/String;

    move-result-object v3

    .line 157
    invoke-direct {v2, v4, v3}, Llc0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-virtual {v2}, Llc0;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v10}, Lgg0;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_37

    const/4 v3, 0x1

    goto :goto_19

    :cond_37
    const/4 v3, 0x0

    :goto_19
    if-eqz v3, :cond_4c

    invoke-virtual {v2}, Llc0;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v9}, Lgg0;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_38

    const/4 v3, 0x1

    goto :goto_1a

    :cond_38
    const/4 v3, 0x0

    :goto_1a
    if-eqz v3, :cond_4c

    .line 159
    sget-object v3, Lad0;->b:Ljava/lang/String;

    .line 160
    new-instance v4, Ljb0;

    invoke-virtual {v2}, Llc0;->b()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljb0;-><init>(Ljava/lang/String;)V

    .line 161
    invoke-virtual {v4}, Ljb0;->b()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v2}, Llc0;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v6, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    new-instance v2, Llb0;

    move-object/from16 v5, v17

    invoke-direct {v2, v3, v5, v4}, Llb0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljb0;)V

    .line 163
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    :cond_39
    move-object v5, v7

    .line 164
    invoke-static {v0, v13}, Linshot/collage/adconfig/d;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 165
    invoke-virtual {v3}, Lid0;->y()Lgd0;

    move-result-object v2

    invoke-static {v0, v2}, Linshot/collage/adconfig/e;->b(Landroid/content/Context;Lgd0;)Ljava/lang/String;

    move-result-object v2

    .line 166
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_3a

    const/4 v7, 0x1

    goto :goto_1b

    :cond_3a
    const/4 v7, 0x0

    :goto_1b
    if-eqz v7, :cond_3c

    .line 167
    new-instance v7, Llb0;

    .line 168
    sget-object v13, Lcom/zjsoft/admob/a;->d:Ljava/lang/String;

    move-object/from16 v16, v2

    new-instance v2, Ljb0;

    if-eqz v4, :cond_3b

    .line 169
    invoke-static {}, Landroidx/core/app/b;->L()Ljava/lang/String;

    move-result-object v16

    :cond_3b
    move-object/from16 v17, v5

    move-object/from16 v5, v16

    .line 170
    invoke-direct {v2, v5}, Ljb0;-><init>(Ljava/lang/String;)V

    .line 171
    invoke-direct {v7, v13, v15, v2}, Llb0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljb0;)V

    .line 172
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    :cond_3c
    move-object/from16 v17, v5

    .line 173
    :goto_1c
    invoke-virtual {v3}, Lid0;->z()Lgd0;

    move-result-object v2

    invoke-static {v0, v2}, Linshot/collage/adconfig/e;->b(Landroid/content/Context;Lgd0;)Ljava/lang/String;

    move-result-object v2

    .line 174
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3d

    const/4 v5, 0x1

    goto :goto_1d

    :cond_3d
    const/4 v5, 0x0

    :goto_1d
    if-eqz v5, :cond_3f

    .line 175
    new-instance v5, Llb0;

    .line 176
    sget-object v7, Lcom/zjsoft/admob/a;->d:Ljava/lang/String;

    new-instance v13, Ljb0;

    if-eqz v4, :cond_3e

    .line 177
    invoke-static {}, Landroidx/core/app/b;->L()Ljava/lang/String;

    move-result-object v2

    .line 178
    :cond_3e
    invoke-direct {v13, v2}, Ljb0;-><init>(Ljava/lang/String;)V

    .line 179
    invoke-direct {v5, v7, v8, v13}, Llb0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljb0;)V

    .line 180
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    :cond_3f
    invoke-virtual {v3}, Lid0;->A()Lgd0;

    move-result-object v2

    invoke-static {v0, v2}, Linshot/collage/adconfig/e;->b(Landroid/content/Context;Lgd0;)Ljava/lang/String;

    move-result-object v2

    .line 182
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_40

    const/4 v5, 0x1

    goto :goto_1e

    :cond_40
    const/4 v5, 0x0

    :goto_1e
    if-eqz v5, :cond_43

    .line 183
    new-instance v5, Llb0;

    .line 184
    sget-object v7, Lcom/zjsoft/admob/a;->d:Ljava/lang/String;

    new-instance v8, Ljb0;

    if-eqz v4, :cond_41

    .line 185
    invoke-static {}, Landroidx/core/app/b;->L()Ljava/lang/String;

    move-result-object v2

    .line 186
    :cond_41
    invoke-direct {v8, v2}, Ljb0;-><init>(Ljava/lang/String;)V

    .line 187
    invoke-direct {v5, v7, v14, v8}, Llb0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljb0;)V

    .line 188
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    :cond_42
    move-object/from16 v17, v5

    .line 189
    :cond_43
    :goto_1f
    invoke-static {v0, v12}, Linshot/collage/adconfig/d;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 190
    invoke-virtual {v3}, Lid0;->B()Lgd0;

    move-result-object v2

    invoke-static {v0, v2}, Linshot/collage/adconfig/e;->b(Landroid/content/Context;Lgd0;)Ljava/lang/String;

    move-result-object v2

    .line 191
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_44

    const/4 v5, 0x1

    goto :goto_20

    :cond_44
    const/4 v5, 0x0

    :goto_20
    if-eqz v5, :cond_46

    .line 192
    new-instance v5, Llb0;

    .line 193
    sget-object v7, Lcom/zjsoft/fan/a;->d:Ljava/lang/String;

    new-instance v8, Ljb0;

    if-eqz v4, :cond_45

    .line 194
    invoke-static {v2}, Lkc0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 195
    :cond_45
    invoke-direct {v8, v2}, Ljb0;-><init>(Ljava/lang/String;)V

    .line 196
    invoke-direct {v5, v7, v15, v8}, Llb0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljb0;)V

    .line 197
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    :cond_46
    invoke-virtual {v3}, Lid0;->C()Lgd0;

    move-result-object v2

    invoke-static {v0, v2}, Linshot/collage/adconfig/e;->b(Landroid/content/Context;Lgd0;)Ljava/lang/String;

    move-result-object v2

    .line 199
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_47

    const/4 v5, 0x1

    goto :goto_21

    :cond_47
    const/4 v5, 0x0

    :goto_21
    if-eqz v5, :cond_49

    .line 200
    new-instance v5, Llb0;

    .line 201
    sget-object v7, Lcom/zjsoft/fan/a;->d:Ljava/lang/String;

    new-instance v8, Ljb0;

    if-eqz v4, :cond_48

    .line 202
    invoke-static {v2}, Lkc0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 203
    :cond_48
    invoke-direct {v8, v2}, Ljb0;-><init>(Ljava/lang/String;)V

    .line 204
    invoke-direct {v5, v7, v14, v8}, Llb0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljb0;)V

    .line 205
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    :cond_49
    invoke-static {v0, v11}, Linshot/collage/adconfig/d;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 207
    new-instance v2, Llc0;

    .line 208
    invoke-virtual {v3}, Lid0;->D()Lgd0;

    move-result-object v4

    invoke-static {v0, v4}, Linshot/collage/adconfig/e;->b(Landroid/content/Context;Lgd0;)Ljava/lang/String;

    move-result-object v4

    .line 209
    invoke-virtual {v3}, Lid0;->Q()Lgd0;

    move-result-object v3

    invoke-static {v0, v3}, Linshot/collage/adconfig/e;->b(Landroid/content/Context;Lgd0;)Ljava/lang/String;

    move-result-object v3

    .line 210
    invoke-direct {v2, v4, v3}, Llc0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-virtual {v2}, Llc0;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v10}, Lgg0;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4a

    const/4 v3, 0x1

    goto :goto_22

    :cond_4a
    const/4 v3, 0x0

    :goto_22
    if-eqz v3, :cond_4c

    invoke-virtual {v2}, Llc0;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v9}, Lgg0;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4b

    const/4 v3, 0x1

    goto :goto_23

    :cond_4b
    const/4 v3, 0x0

    :goto_23
    if-eqz v3, :cond_4c

    .line 212
    sget-object v3, Lad0;->b:Ljava/lang/String;

    .line 213
    new-instance v4, Ljb0;

    invoke-virtual {v2}, Llc0;->b()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljb0;-><init>(Ljava/lang/String;)V

    .line 214
    invoke-virtual {v4}, Ljb0;->b()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v2}, Llc0;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v6, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    new-instance v2, Llb0;

    move-object/from16 v5, v17

    invoke-direct {v2, v3, v5, v4}, Llb0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljb0;)V

    .line 216
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    :cond_4c
    :goto_24
    sget-object v2, Linshot/collage/adconfig/e;->a:Linshot/collage/adconfig/c;

    move-object/from16 v3, p2

    invoke-virtual {v2, v0, v1, v3}, Linshot/collage/adconfig/c;->c(Landroid/content/Context;Lcom/google/ads/ADRequestList;Linshot/collage/adconfig/j;)Lcom/google/ads/ADRequestList;

    return-object v1
.end method

.method public static final d(Landroid/content/Context;Lcom/google/ads/ADRequestList;Linshot/collage/adconfig/i;)Lcom/google/ads/ADRequestList;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "context"

    invoke-static {v0, v3}, Lgg0;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "requestList"

    invoke-static {v1, v3}, Lgg0;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "type"

    invoke-static {v2, v3}, Lgg0;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Linshot/collage/adconfig/a;->a()Lid0;

    move-result-object v3

    .line 2
    invoke-static/range {p0 .. p0}, Linshot/collage/adconfig/p;->c(Landroid/content/Context;)I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3f666666    # 0.9f

    mul-float v4, v4, v5

    .line 3
    invoke-static {}, Linshot/collage/adconfig/a;->f()Z

    move-result v5

    .line 4
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/4 v7, 0x1

    const-string v8, "m"

    const-string v9, "Fan"

    const-string v10, "Admob"

    const-string v11, "r"

    const-string v12, "ResultCard"

    const-string v13, "no_click_area"

    const-string v14, "h"

    const-string v15, "cover_width"

    if-eqz v6, :cond_10

    if-eq v6, v7, :cond_1

    const/4 v3, 0x2

    if-eq v6, v3, :cond_0

    goto/16 :goto_d

    .line 5
    :cond_0
    new-instance v0, Llb0;

    sget-object v2, Lcom/zjsoft/zjad/a;->b:Ljava/lang/String;

    new-instance v3, Ljb0;

    const-string v4, ""

    invoke-direct {v3, v4}, Ljb0;-><init>(Ljava/lang/String;)V

    const-string v4, "n"

    invoke-direct {v0, v2, v4, v3}, Llb0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljb0;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1

    .line 6
    :cond_1
    invoke-static {v0, v10}, Linshot/collage/adconfig/d;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 7
    invoke-virtual {v3}, Lid0;->n()Lgd0;

    move-result-object v6

    invoke-static {v0, v6}, Linshot/collage/adconfig/e;->b(Landroid/content/Context;Lgd0;)Ljava/lang/String;

    move-result-object v6

    .line 8
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    const/4 v7, 0x1

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    :goto_0
    if-eqz v7, :cond_4

    .line 9
    new-instance v7, Llb0;

    .line 10
    sget-object v10, Lcom/zjsoft/admob/a;->c:Ljava/lang/String;

    move-object/from16 v16, v6

    new-instance v6, Ljb0;

    if-eqz v5, :cond_3

    .line 11
    invoke-static {}, Landroidx/core/app/b;->N()Ljava/lang/String;

    move-result-object v16

    :cond_3
    move-object/from16 v2, v16

    .line 12
    invoke-direct {v6, v2}, Ljb0;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-direct {v7, v10, v14, v6}, Llb0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljb0;)V

    .line 14
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    :cond_4
    invoke-virtual {v3}, Lid0;->o()Lgd0;

    move-result-object v2

    invoke-static {v0, v2}, Linshot/collage/adconfig/e;->b(Landroid/content/Context;Lgd0;)Ljava/lang/String;

    move-result-object v2

    .line 16
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_5

    const/4 v6, 0x1

    goto :goto_1

    :cond_5
    const/4 v6, 0x0

    :goto_1
    if-eqz v6, :cond_7

    .line 17
    new-instance v6, Llb0;

    .line 18
    sget-object v7, Lcom/zjsoft/admob/a;->c:Ljava/lang/String;

    new-instance v10, Ljb0;

    if-eqz v5, :cond_6

    .line 19
    invoke-static {}, Landroidx/core/app/b;->N()Ljava/lang/String;

    move-result-object v2

    .line 20
    :cond_6
    invoke-direct {v10, v2}, Ljb0;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-direct {v6, v7, v8, v10}, Llb0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljb0;)V

    .line 22
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    :cond_7
    invoke-virtual {v3}, Lid0;->p()Lgd0;

    move-result-object v2

    invoke-static {v0, v2}, Linshot/collage/adconfig/e;->b(Landroid/content/Context;Lgd0;)Ljava/lang/String;

    move-result-object v2

    .line 24
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_8

    const/4 v6, 0x1

    goto :goto_2

    :cond_8
    const/4 v6, 0x0

    :goto_2
    if-eqz v6, :cond_a

    .line 25
    new-instance v6, Llb0;

    .line 26
    sget-object v7, Lcom/zjsoft/admob/a;->c:Ljava/lang/String;

    new-instance v8, Ljb0;

    if-eqz v5, :cond_9

    .line 27
    invoke-static {}, Landroidx/core/app/b;->N()Ljava/lang/String;

    move-result-object v2

    .line 28
    :cond_9
    invoke-direct {v8, v2}, Ljb0;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-direct {v6, v7, v11, v8}, Llb0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljb0;)V

    .line 30
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    :cond_a
    invoke-static {v0, v9}, Linshot/collage/adconfig/d;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 32
    invoke-virtual {v3}, Lid0;->q()Lgd0;

    move-result-object v2

    invoke-static {v0, v2}, Linshot/collage/adconfig/e;->b(Landroid/content/Context;Lgd0;)Ljava/lang/String;

    move-result-object v2

    .line 33
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_b

    const/4 v6, 0x1

    goto :goto_3

    :cond_b
    const/4 v6, 0x0

    :goto_3
    if-eqz v6, :cond_d

    .line 34
    sget-object v6, Lcom/zjsoft/fan/a;->c:Ljava/lang/String;

    .line 35
    new-instance v7, Ljb0;

    if-eqz v5, :cond_c

    invoke-static {v2}, Lkc0;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_c
    invoke-direct {v7, v2}, Ljb0;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v7}, Ljb0;->b()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, v15, v4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 37
    invoke-virtual {v7}, Ljb0;->b()Landroid/os/Bundle;

    move-result-object v2

    .line 38
    invoke-static {v0, v12}, Lcc0;->n(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 39
    invoke-virtual {v2, v13, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    new-instance v2, Llb0;

    invoke-direct {v2, v6, v14, v7}, Llb0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljb0;)V

    .line 41
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    :cond_d
    invoke-virtual {v3}, Lid0;->r()Lgd0;

    move-result-object v2

    invoke-static {v0, v2}, Linshot/collage/adconfig/e;->b(Landroid/content/Context;Lgd0;)Ljava/lang/String;

    move-result-object v2

    .line 43
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_e

    const/4 v3, 0x1

    goto :goto_4

    :cond_e
    const/4 v3, 0x0

    :goto_4
    if-eqz v3, :cond_20

    .line 44
    sget-object v3, Lcom/zjsoft/fan/a;->c:Ljava/lang/String;

    .line 45
    new-instance v6, Ljb0;

    if-eqz v5, :cond_f

    invoke-static {v2}, Lkc0;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_f
    invoke-direct {v6, v2}, Ljb0;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v6}, Ljb0;->b()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, v15, v4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 47
    invoke-virtual {v6}, Ljb0;->b()Landroid/os/Bundle;

    move-result-object v2

    .line 48
    invoke-static {v0, v12}, Lcc0;->n(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 49
    invoke-virtual {v2, v13, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    new-instance v2, Llb0;

    invoke-direct {v2, v3, v11, v6}, Llb0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljb0;)V

    .line 51
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    .line 52
    :cond_10
    invoke-static {v0, v10}, Linshot/collage/adconfig/d;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    const-string v6, "layout_id"

    if-eqz v2, :cond_1a

    const-string v2, "AD_HomeCardSkipInit"

    const/4 v7, 0x0

    .line 53
    invoke-static {v0, v2, v7}, Lcc0;->g(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    .line 54
    invoke-virtual {v3}, Lid0;->i()Lgd0;

    move-result-object v7

    invoke-static {v0, v7}, Linshot/collage/adconfig/e;->b(Landroid/content/Context;Lgd0;)Ljava/lang/String;

    move-result-object v7

    .line 55
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_11

    const/4 v10, 0x1

    goto :goto_5

    :cond_11
    const/4 v10, 0x0

    :goto_5
    move-object/from16 v16, v7

    const-string v7, "skip_init"

    if-eqz v10, :cond_13

    .line 56
    sget-object v10, Lcom/zjsoft/admob/a;->c:Ljava/lang/String;

    move-object/from16 v17, v13

    new-instance v13, Ljb0;

    if-eqz v5, :cond_12

    .line 57
    invoke-static {}, Landroidx/core/app/b;->N()Ljava/lang/String;

    move-result-object v16

    :cond_12
    move-object/from16 v18, v12

    move-object/from16 v12, v16

    .line 58
    invoke-direct {v13, v12}, Ljb0;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v13}, Ljb0;->b()Landroid/os/Bundle;

    move-result-object v12

    move-object/from16 v16, v9

    const v9, 0x7f0b009e

    invoke-virtual {v12, v6, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 60
    invoke-virtual {v13}, Ljb0;->b()Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v9, v15, v4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 61
    invoke-virtual {v13}, Ljb0;->b()Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v9, v7, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 62
    new-instance v9, Llb0;

    invoke-direct {v9, v10, v14, v13}, Llb0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljb0;)V

    .line 63
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_13
    move-object/from16 v16, v9

    move-object/from16 v18, v12

    move-object/from16 v17, v13

    .line 64
    :goto_6
    invoke-virtual {v3}, Lid0;->j()Lgd0;

    move-result-object v9

    invoke-static {v0, v9}, Linshot/collage/adconfig/e;->b(Landroid/content/Context;Lgd0;)Ljava/lang/String;

    move-result-object v9

    .line 65
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_14

    const/4 v10, 0x1

    goto :goto_7

    :cond_14
    const/4 v10, 0x0

    :goto_7
    if-eqz v10, :cond_16

    .line 66
    sget-object v10, Lcom/zjsoft/admob/a;->c:Ljava/lang/String;

    new-instance v12, Ljb0;

    if-eqz v5, :cond_15

    .line 67
    invoke-static {}, Landroidx/core/app/b;->N()Ljava/lang/String;

    move-result-object v9

    .line 68
    :cond_15
    invoke-direct {v12, v9}, Ljb0;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v12}, Ljb0;->b()Landroid/os/Bundle;

    move-result-object v9

    const v13, 0x7f0b009e

    invoke-virtual {v9, v6, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 70
    invoke-virtual {v12}, Ljb0;->b()Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v9, v15, v4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 71
    invoke-virtual {v12}, Ljb0;->b()Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v9, v7, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 72
    new-instance v9, Llb0;

    invoke-direct {v9, v10, v8, v12}, Llb0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljb0;)V

    .line 73
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    :cond_16
    invoke-virtual {v3}, Lid0;->k()Lgd0;

    move-result-object v8

    invoke-static {v0, v8}, Linshot/collage/adconfig/e;->b(Landroid/content/Context;Lgd0;)Ljava/lang/String;

    move-result-object v8

    .line 75
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_17

    const/4 v9, 0x1

    goto :goto_8

    :cond_17
    const/4 v9, 0x0

    :goto_8
    if-eqz v9, :cond_19

    .line 76
    sget-object v9, Lcom/zjsoft/admob/a;->c:Ljava/lang/String;

    new-instance v10, Ljb0;

    if-eqz v5, :cond_18

    .line 77
    invoke-static {}, Landroidx/core/app/b;->N()Ljava/lang/String;

    move-result-object v8

    .line 78
    :cond_18
    invoke-direct {v10, v8}, Ljb0;-><init>(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v10}, Ljb0;->b()Landroid/os/Bundle;

    move-result-object v8

    const v12, 0x7f0b009e

    invoke-virtual {v8, v6, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 80
    invoke-virtual {v10}, Ljb0;->b()Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {v8, v15, v4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 81
    invoke-virtual {v10}, Ljb0;->b()Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {v8, v7, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 82
    new-instance v2, Llb0;

    invoke-direct {v2, v9, v11, v10}, Llb0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljb0;)V

    .line 83
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_19
    move-object/from16 v2, v16

    goto :goto_9

    :cond_1a
    move-object/from16 v18, v12

    move-object/from16 v17, v13

    move-object v2, v9

    .line 84
    :goto_9
    invoke-static {v0, v2}, Linshot/collage/adconfig/d;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 85
    invoke-virtual {v3}, Lid0;->l()Lgd0;

    move-result-object v2

    invoke-static {v0, v2}, Linshot/collage/adconfig/e;->b(Landroid/content/Context;Lgd0;)Ljava/lang/String;

    move-result-object v2

    .line 86
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1b

    const/4 v7, 0x1

    goto :goto_a

    :cond_1b
    const/4 v7, 0x0

    :goto_a
    if-eqz v7, :cond_1d

    .line 87
    sget-object v7, Lcom/zjsoft/fan/a;->c:Ljava/lang/String;

    .line 88
    new-instance v8, Ljb0;

    if-eqz v5, :cond_1c

    invoke-static {v2}, Lkc0;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_1c
    invoke-direct {v8, v2}, Ljb0;-><init>(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v8}, Ljb0;->b()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, v15, v4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 90
    invoke-virtual {v8}, Ljb0;->b()Landroid/os/Bundle;

    move-result-object v2

    move-object/from16 v9, v18

    .line 91
    invoke-static {v0, v9}, Lcc0;->n(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v12, v17

    .line 92
    invoke-virtual {v2, v12, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-virtual {v8}, Ljb0;->b()Landroid/os/Bundle;

    move-result-object v2

    const v10, 0x7f0b009f

    invoke-virtual {v2, v6, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 94
    new-instance v2, Llb0;

    invoke-direct {v2, v7, v14, v8}, Llb0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljb0;)V

    .line 95
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_1d
    move-object/from16 v12, v17

    move-object/from16 v9, v18

    .line 96
    :goto_b
    invoke-virtual {v3}, Lid0;->m()Lgd0;

    move-result-object v2

    invoke-static {v0, v2}, Linshot/collage/adconfig/e;->b(Landroid/content/Context;Lgd0;)Ljava/lang/String;

    move-result-object v2

    .line 97
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1e

    const/4 v3, 0x1

    goto :goto_c

    :cond_1e
    const/4 v3, 0x0

    :goto_c
    if-eqz v3, :cond_20

    .line 98
    sget-object v3, Lcom/zjsoft/fan/a;->c:Ljava/lang/String;

    .line 99
    new-instance v7, Ljb0;

    if-eqz v5, :cond_1f

    invoke-static {v2}, Lkc0;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_1f
    invoke-direct {v7, v2}, Ljb0;-><init>(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v7}, Ljb0;->b()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, v15, v4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 101
    invoke-virtual {v7}, Ljb0;->b()Landroid/os/Bundle;

    move-result-object v2

    .line 102
    invoke-static {v0, v9}, Lcc0;->n(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 103
    invoke-virtual {v2, v12, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-virtual {v7}, Ljb0;->b()Landroid/os/Bundle;

    move-result-object v2

    const v4, 0x7f0b009f

    invoke-virtual {v2, v6, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 105
    new-instance v2, Llb0;

    invoke-direct {v2, v3, v11, v7}, Llb0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljb0;)V

    .line 106
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    :cond_20
    :goto_d
    sget-object v2, Linshot/collage/adconfig/e;->a:Linshot/collage/adconfig/c;

    move-object/from16 v3, p2

    invoke-virtual {v2, v0, v1, v3}, Linshot/collage/adconfig/c;->d(Landroid/content/Context;Lcom/google/ads/ADRequestList;Linshot/collage/adconfig/i;)Lcom/google/ads/ADRequestList;

    return-object v1
.end method
