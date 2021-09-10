.class Lpb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lub$a;

.field private static final b:Lub$a;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const-string v0, "nm"

    const-string v1, "c"

    const-string v2, "w"

    const-string v3, "o"

    const-string v4, "lc"

    const-string v5, "lj"

    const-string v6, "ml"

    const-string v7, "hd"

    const-string v8, "d"

    .line 1
    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lub$a;->a([Ljava/lang/String;)Lub$a;

    move-result-object v0

    sput-object v0, Lpb;->a:Lub$a;

    const-string v0, "n"

    const-string v1, "v"

    .line 2
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lub$a;->a([Ljava/lang/String;)Lub$a;

    move-result-object v0

    sput-object v0, Lpb;->b:Lub$a;

    return-void
.end method

.method static a(Lub;Lcom/airbnb/lottie/e;)Lw9;
    .locals 18

    move-object/from16 v0, p0

    .line 1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 2
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lub;->b0()Z

    move-result v13

    const/16 v14, 0x64

    if-eqz v13, :cond_d

    .line 3
    sget-object v13, Lpb;->a:Lub$a;

    invoke-virtual {v0, v13}, Lub;->q0(Lub$a;)I

    move-result v13

    const/4 v15, 0x1

    packed-switch v13, :pswitch_data_0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 4
    invoke-virtual/range {p0 .. p0}, Lub;->s0()V

    goto :goto_0

    .line 5
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lub;->o()V

    .line 6
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lub;->b0()Z

    move-result v13

    if-eqz v13, :cond_b

    .line 7
    invoke-virtual/range {p0 .. p0}, Lub;->L()V

    const/4 v13, 0x0

    const/16 v16, 0x0

    .line 8
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lub;->b0()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 9
    sget-object v2, Lpb;->b:Lub$a;

    invoke-virtual {v0, v2}, Lub;->q0(Lub$a;)I

    move-result v2

    if-eqz v2, :cond_1

    if-eq v2, v15, :cond_0

    .line 10
    invoke-virtual/range {p0 .. p0}, Lub;->r0()V

    .line 11
    invoke-virtual/range {p0 .. p0}, Lub;->s0()V

    goto :goto_2

    .line 12
    :cond_0
    invoke-static/range {p0 .. p1}, Lna;->d(Lub;Lcom/airbnb/lottie/e;)Lu8;

    move-result-object v13

    goto :goto_2

    .line 13
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lub;->m0()Ljava/lang/String;

    move-result-object v16

    goto :goto_2

    .line 14
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lub;->V()V

    .line 15
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->hashCode()I

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v1, 0x2

    if-eq v2, v14, :cond_7

    const/16 v14, 0x67

    if-eq v2, v14, :cond_5

    const/16 v14, 0x6f

    if-eq v2, v14, :cond_3

    goto :goto_3

    :cond_3
    const-string v2, "o"

    move-object/from16 v14, v16

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_3

    :cond_4
    const/4 v2, 0x2

    goto :goto_4

    :cond_5
    move-object/from16 v14, v16

    const-string v2, "g"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_3

    :cond_6
    const/4 v2, 0x1

    goto :goto_4

    :cond_7
    move-object/from16 v14, v16

    const-string v2, "d"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    :goto_3
    const/4 v2, -0x1

    goto :goto_4

    :cond_8
    const/4 v2, 0x0

    :goto_4
    if-eqz v2, :cond_a

    if-eq v2, v15, :cond_a

    if-eq v2, v1, :cond_9

    move-object/from16 v1, p1

    goto :goto_5

    :cond_9
    move-object v5, v13

    goto :goto_5

    :cond_a
    move-object/from16 v1, p1

    .line 16
    invoke-virtual {v1, v15}, Lcom/airbnb/lottie/e;->s(Z)V

    .line 17
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5
    const/16 v14, 0x64

    goto :goto_1

    :cond_b
    move-object/from16 v1, p1

    .line 18
    invoke-virtual/range {p0 .. p0}, Lub;->S()V

    .line 19
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v15, :cond_c

    const/4 v2, 0x0

    .line 20
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_c
    const/4 v2, 0x0

    goto/16 :goto_0

    :pswitch_1
    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 21
    invoke-virtual/range {p0 .. p0}, Lub;->i0()Z

    move-result v11

    goto/16 :goto_0

    :pswitch_2
    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 22
    invoke-virtual/range {p0 .. p0}, Lub;->j0()D

    move-result-wide v13

    double-to-float v10, v13

    goto/16 :goto_0

    :pswitch_3
    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 23
    invoke-static {}, Lw9$b;->values()[Lw9$b;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lub;->k0()I

    move-result v13

    sub-int/2addr v13, v15

    aget-object v9, v9, v13

    goto/16 :goto_0

    :pswitch_4
    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 24
    invoke-static {}, Lw9$a;->values()[Lw9$a;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lub;->k0()I

    move-result v13

    sub-int/2addr v13, v15

    aget-object v8, v8, v13

    goto/16 :goto_0

    :pswitch_5
    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 25
    invoke-static/range {p0 .. p1}, Lna;->g(Lub;Lcom/airbnb/lottie/e;)Lw8;

    move-result-object v12

    goto/16 :goto_0

    :pswitch_6
    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 26
    invoke-static/range {p0 .. p1}, Lna;->d(Lub;Lcom/airbnb/lottie/e;)Lu8;

    move-result-object v7

    goto/16 :goto_0

    :pswitch_7
    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 27
    invoke-static/range {p0 .. p1}, Lna;->b(Lub;Lcom/airbnb/lottie/e;)Lt8;

    move-result-object v6

    goto/16 :goto_0

    :pswitch_8
    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 28
    invoke-virtual/range {p0 .. p0}, Lub;->m0()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :cond_d
    if-nez v12, :cond_e

    .line 29
    new-instance v0, Lw8;

    new-instance v1, Lec;

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lec;-><init>(Ljava/lang/Object;)V

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lw8;-><init>(Ljava/util/List;)V

    move-object v12, v0

    .line 30
    :cond_e
    new-instance v13, Lw9;

    move-object v0, v13

    move-object v1, v4

    move-object v2, v5

    move-object v4, v6

    move-object v5, v12

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move v9, v10

    move v10, v11

    invoke-direct/range {v0 .. v10}, Lw9;-><init>(Ljava/lang/String;Lu8;Ljava/util/List;Lt8;Lw8;Lu8;Lw9$a;Lw9$b;FZ)V

    return-object v13

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
