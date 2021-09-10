.class Lqa;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lub$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ty"

    const-string v1, "d"

    .line 1
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lub$a;->a([Ljava/lang/String;)Lub$a;

    move-result-object v0

    sput-object v0, Lqa;->a:Lub$a;

    return-void
.end method

.method static a(Lub;Lcom/airbnb/lottie/e;)Li9;
    .locals 9

    .line 1
    invoke-virtual {p0}, Lub;->L()V

    const/4 v0, 0x2

    const/4 v1, 0x2

    .line 2
    :goto_0
    invoke-virtual {p0}, Lub;->b0()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    .line 3
    sget-object v2, Lqa;->a:Lub$a;

    invoke-virtual {p0, v2}, Lub;->q0(Lub$a;)I

    move-result v2

    if-eqz v2, :cond_1

    if-eq v2, v4, :cond_0

    .line 4
    invoke-virtual {p0}, Lub;->r0()V

    .line 5
    invoke-virtual {p0}, Lub;->s0()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lub;->k0()I

    move-result v1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0}, Lub;->m0()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    move-object v2, v3

    :goto_1
    if-nez v2, :cond_3

    return-object v3

    :cond_3
    const/4 v5, -0x1

    .line 8
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, 0x3

    const/4 v8, 0x0

    sparse-switch v6, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    const-string v6, "tr"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    goto/16 :goto_2

    :cond_4
    const/16 v5, 0xc

    goto/16 :goto_2

    :sswitch_1
    const-string v6, "tm"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    goto/16 :goto_2

    :cond_5
    const/16 v5, 0xb

    goto/16 :goto_2

    :sswitch_2
    const-string v6, "st"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    goto/16 :goto_2

    :cond_6
    const/16 v5, 0xa

    goto/16 :goto_2

    :sswitch_3
    const-string v6, "sr"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    goto/16 :goto_2

    :cond_7
    const/16 v5, 0x9

    goto/16 :goto_2

    :sswitch_4
    const-string v6, "sh"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    goto/16 :goto_2

    :cond_8
    const/16 v5, 0x8

    goto/16 :goto_2

    :sswitch_5
    const-string v6, "rp"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    goto :goto_2

    :cond_9
    const/4 v5, 0x7

    goto :goto_2

    :sswitch_6
    const-string v6, "rc"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    goto :goto_2

    :cond_a
    const/4 v5, 0x6

    goto :goto_2

    :sswitch_7
    const-string v6, "mm"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    goto :goto_2

    :cond_b
    const/4 v5, 0x5

    goto :goto_2

    :sswitch_8
    const-string v6, "gs"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    goto :goto_2

    :cond_c
    const/4 v5, 0x4

    goto :goto_2

    :sswitch_9
    const-string v6, "gr"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    goto :goto_2

    :cond_d
    const/4 v5, 0x3

    goto :goto_2

    :sswitch_a
    const-string v6, "gf"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    goto :goto_2

    :cond_e
    const/4 v5, 0x2

    goto :goto_2

    :sswitch_b
    const-string v6, "fl"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f

    goto :goto_2

    :cond_f
    const/4 v5, 0x1

    goto :goto_2

    :sswitch_c
    const-string v6, "el"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_10

    goto :goto_2

    :cond_10
    const/4 v5, 0x0

    :goto_2
    packed-switch v5, :pswitch_data_0

    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown shape type "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lzb;->b(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 10
    :pswitch_0
    invoke-static {p0, p1}, Lma;->a(Lub;Lcom/airbnb/lottie/e;)Le9;

    move-result-object v3

    goto/16 :goto_4

    .line 11
    :pswitch_1
    invoke-static {p0, p1}, Lqb;->a(Lub;Lcom/airbnb/lottie/e;)Lx9;

    move-result-object v3

    goto/16 :goto_4

    .line 12
    :pswitch_2
    invoke-static {p0, p1}, Lpb;->a(Lub;Lcom/airbnb/lottie/e;)Lw9;

    move-result-object v3

    goto/16 :goto_4

    .line 13
    :pswitch_3
    invoke-static {p0, p1}, Lhb;->a(Lub;Lcom/airbnb/lottie/e;)Lp9;

    move-result-object v3

    goto/16 :goto_4

    .line 14
    :pswitch_4
    sget-object v1, Lob;->a:Lub$a;

    move-object v1, v3

    const/4 v2, 0x0

    .line 15
    :goto_3
    invoke-virtual {p0}, Lub;->b0()Z

    move-result v5

    if-eqz v5, :cond_15

    .line 16
    sget-object v5, Lob;->a:Lub$a;

    invoke-virtual {p0, v5}, Lub;->q0(Lub$a;)I

    move-result v5

    if-eqz v5, :cond_14

    if-eq v5, v4, :cond_13

    if-eq v5, v0, :cond_12

    if-eq v5, v7, :cond_11

    .line 17
    invoke-virtual {p0}, Lub;->s0()V

    goto :goto_3

    .line 18
    :cond_11
    invoke-virtual {p0}, Lub;->i0()Z

    move-result v2

    goto :goto_3

    .line 19
    :cond_12
    new-instance v1, La9;

    .line 20
    invoke-static {}, Ldc;->c()F

    move-result v5

    sget-object v6, Llb;->a:Llb;

    .line 21
    invoke-static {p0, p1, v5, v6}, Lbb;->a(Lub;Lcom/airbnb/lottie/e;FLrb;)Ljava/util/List;

    move-result-object v5

    .line 22
    invoke-direct {v1, v5}, La9;-><init>(Ljava/util/List;)V

    goto :goto_3

    .line 23
    :cond_13
    invoke-virtual {p0}, Lub;->k0()I

    move-result v8

    goto :goto_3

    .line 24
    :cond_14
    invoke-virtual {p0}, Lub;->m0()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 25
    :cond_15
    new-instance p1, Lv9;

    invoke-direct {p1, v3, v8, v1, v2}, Lv9;-><init>(Ljava/lang/String;ILa9;Z)V

    move-object v3, p1

    goto :goto_4

    .line 26
    :pswitch_5
    invoke-static {p0, p1}, Ljb;->a(Lub;Lcom/airbnb/lottie/e;)Lr9;

    move-result-object v3

    goto :goto_4

    .line 27
    :pswitch_6
    invoke-static {p0, p1}, Lib;->a(Lub;Lcom/airbnb/lottie/e;)Lq9;

    move-result-object v3

    goto :goto_4

    .line 28
    :pswitch_7
    invoke-static {p0}, Leb;->a(Lub;)Lo9;

    move-result-object v3

    const-string v0, "Animation contains merge paths. Merge paths are only supported on KitKat+ and must be manually enabled by calling enableMergePathsForKitKatAndAbove()."

    .line 29
    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/e;->a(Ljava/lang/String;)V

    goto :goto_4

    .line 30
    :pswitch_8
    invoke-static {p0, p1}, Lxa;->a(Lub;Lcom/airbnb/lottie/e;)Ll9;

    move-result-object v3

    goto :goto_4

    .line 31
    :pswitch_9
    invoke-static {p0, p1}, Lnb;->a(Lub;Lcom/airbnb/lottie/e;)Lu9;

    move-result-object v3

    goto :goto_4

    .line 32
    :pswitch_a
    invoke-static {p0, p1}, Lwa;->a(Lub;Lcom/airbnb/lottie/e;)Lk9;

    move-result-object v3

    goto :goto_4

    .line 33
    :pswitch_b
    invoke-static {p0, p1}, Lmb;->a(Lub;Lcom/airbnb/lottie/e;)Lt9;

    move-result-object v3

    goto :goto_4

    .line 34
    :pswitch_c
    invoke-static {p0, p1, v1}, Loa;->a(Lub;Lcom/airbnb/lottie/e;I)Lh9;

    move-result-object v3

    .line 35
    :goto_4
    invoke-virtual {p0}, Lub;->b0()Z

    move-result p1

    if-eqz p1, :cond_16

    .line 36
    invoke-virtual {p0}, Lub;->s0()V

    goto :goto_4

    .line 37
    :cond_16
    invoke-virtual {p0}, Lub;->V()V

    return-object v3

    :sswitch_data_0
    .sparse-switch
        0xca7 -> :sswitch_c
        0xcc6 -> :sswitch_b
        0xcdf -> :sswitch_a
        0xceb -> :sswitch_9
        0xcec -> :sswitch_8
        0xda0 -> :sswitch_7
        0xe31 -> :sswitch_6
        0xe3e -> :sswitch_5
        0xe55 -> :sswitch_4
        0xe5f -> :sswitch_3
        0xe61 -> :sswitch_2
        0xe79 -> :sswitch_1
        0xe7e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
