.class public Ldb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lub$a;

.field static b:Lub$a;

.field private static final c:Lub$a;

.field private static final d:Lub$a;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const-string v0, "w"

    const-string v1, "h"

    const-string v2, "ip"

    const-string v3, "op"

    const-string v4, "fr"

    const-string v5, "v"

    const-string v6, "layers"

    const-string v7, "assets"

    const-string v8, "fonts"

    const-string v9, "chars"

    const-string v10, "markers"

    .line 1
    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lub$a;->a([Ljava/lang/String;)Lub$a;

    move-result-object v0

    sput-object v0, Ldb;->a:Lub$a;

    const-string v1, "id"

    const-string v2, "layers"

    const-string v3, "w"

    const-string v4, "h"

    const-string v5, "p"

    const-string v6, "u"

    .line 2
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lub$a;->a([Ljava/lang/String;)Lub$a;

    move-result-object v0

    sput-object v0, Ldb;->b:Lub$a;

    const-string v0, "list"

    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lub$a;->a([Ljava/lang/String;)Lub$a;

    move-result-object v0

    sput-object v0, Ldb;->c:Lub$a;

    const-string v0, "cm"

    const-string v1, "tm"

    const-string v2, "dr"

    .line 4
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lub$a;->a([Ljava/lang/String;)Lub$a;

    move-result-object v0

    sput-object v0, Ldb;->d:Lub$a;

    return-void
.end method

.method public static a(Lub;)Lcom/airbnb/lottie/e;
    .locals 31

    move-object/from16 v0, p0

    .line 1
    invoke-static {}, Ldc;->c()F

    move-result v1

    .line 2
    new-instance v8, Lb0;

    const/16 v2, 0xa

    .line 3
    invoke-direct {v8, v2}, Lb0;-><init>(I)V

    .line 4
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 5
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 6
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 7
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 8
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 9
    new-instance v11, Lf0;

    .line 10
    invoke-direct {v11, v2}, Lf0;-><init>(I)V

    .line 11
    new-instance v14, Lcom/airbnb/lottie/e;

    invoke-direct {v14}, Lcom/airbnb/lottie/e;-><init>()V

    .line 12
    invoke-virtual/range {p0 .. p0}, Lub;->L()V

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 13
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lub;->b0()Z

    move-result v17

    if-eqz v17, :cond_1c

    .line 14
    sget-object v4, Ldb;->a:Lub$a;

    invoke-virtual {v0, v4}, Lub;->q0(Lub$a;)I

    move-result v4

    const/16 v18, 0x0

    packed-switch v4, :pswitch_data_0

    move/from16 v24, v6

    move-object/from16 v22, v12

    move-object/from16 v21, v13

    move/from16 v23, v15

    move v15, v5

    .line 15
    invoke-virtual/range {p0 .. p0}, Lub;->r0()V

    .line 16
    invoke-virtual/range {p0 .. p0}, Lub;->s0()V

    goto/16 :goto_16

    .line 17
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lub;->o()V

    .line 18
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lub;->b0()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 19
    invoke-virtual/range {p0 .. p0}, Lub;->L()V

    move-object/from16 v4, v18

    const/16 v21, 0x0

    const/16 v22, 0x0

    .line 20
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lub;->b0()Z

    move-result v20

    if-eqz v20, :cond_3

    .line 21
    sget-object v2, Ldb;->d:Lub$a;

    invoke-virtual {v0, v2}, Lub;->q0(Lub$a;)I

    move-result v2

    if-eqz v2, :cond_2

    move/from16 v23, v15

    const/4 v15, 0x1

    if-eq v2, v15, :cond_1

    const/4 v15, 0x2

    if-eq v2, v15, :cond_0

    .line 22
    invoke-virtual/range {p0 .. p0}, Lub;->r0()V

    .line 23
    invoke-virtual/range {p0 .. p0}, Lub;->s0()V

    goto :goto_4

    :cond_0
    move v15, v5

    move/from16 v24, v6

    .line 24
    invoke-virtual/range {p0 .. p0}, Lub;->j0()D

    move-result-wide v5

    double-to-float v2, v5

    move/from16 v22, v2

    goto :goto_3

    :cond_1
    move v15, v5

    move/from16 v24, v6

    .line 25
    invoke-virtual/range {p0 .. p0}, Lub;->j0()D

    move-result-wide v5

    double-to-float v2, v5

    move/from16 v21, v2

    :goto_3
    move v5, v15

    move/from16 v15, v23

    move/from16 v6, v24

    goto :goto_2

    :cond_2
    move/from16 v24, v6

    move/from16 v23, v15

    move v15, v5

    .line 26
    invoke-virtual/range {p0 .. p0}, Lub;->m0()Ljava/lang/String;

    move-result-object v4

    :goto_4
    move/from16 v15, v23

    goto :goto_2

    :cond_3
    move/from16 v24, v6

    move/from16 v23, v15

    move v15, v5

    .line 27
    invoke-virtual/range {p0 .. p0}, Lub;->V()V

    .line 28
    new-instance v2, Lr8;

    move/from16 v5, v21

    move/from16 v6, v22

    invoke-direct {v2, v4, v5, v6}, Lr8;-><init>(Ljava/lang/String;FF)V

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v5, v15

    move/from16 v15, v23

    move/from16 v6, v24

    goto :goto_1

    :cond_4
    move/from16 v24, v6

    move/from16 v23, v15

    move v15, v5

    .line 29
    invoke-virtual/range {p0 .. p0}, Lub;->S()V

    goto :goto_8

    :pswitch_1
    move/from16 v24, v6

    move/from16 v23, v15

    move v15, v5

    .line 30
    invoke-virtual/range {p0 .. p0}, Lub;->o()V

    .line 31
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lub;->b0()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 32
    invoke-static {v0, v14}, Lta;->a(Lub;Lcom/airbnb/lottie/e;)Ln8;

    move-result-object v2

    .line 33
    invoke-virtual {v2}, Ln8;->hashCode()I

    move-result v4

    invoke-virtual {v11, v4, v2}, Lf0;->j(ILjava/lang/Object;)V

    goto :goto_5

    .line 34
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lub;->S()V

    goto :goto_8

    :pswitch_2
    move/from16 v24, v6

    move/from16 v23, v15

    move v15, v5

    .line 35
    invoke-virtual/range {p0 .. p0}, Lub;->L()V

    .line 36
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lub;->b0()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 37
    sget-object v2, Ldb;->c:Lub$a;

    invoke-virtual {v0, v2}, Lub;->q0(Lub$a;)I

    move-result v2

    if-eqz v2, :cond_6

    .line 38
    invoke-virtual/range {p0 .. p0}, Lub;->r0()V

    .line 39
    invoke-virtual/range {p0 .. p0}, Lub;->s0()V

    goto :goto_6

    .line 40
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lub;->o()V

    .line 41
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lub;->b0()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 42
    invoke-static/range {p0 .. p0}, Lua;->a(Lub;)Lm8;

    move-result-object v2

    .line 43
    invoke-virtual {v2}, Lm8;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 44
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lub;->S()V

    goto :goto_6

    .line 45
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lub;->V()V

    :goto_8
    move-object/from16 v22, v12

    move-object/from16 v21, v13

    goto/16 :goto_16

    :pswitch_3
    move/from16 v24, v6

    move/from16 v23, v15

    move v15, v5

    .line 46
    invoke-virtual/range {p0 .. p0}, Lub;->o()V

    .line 47
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lub;->b0()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 48
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 49
    new-instance v4, Lb0;

    const/16 v5, 0xa

    .line 50
    invoke-direct {v4, v5}, Lb0;-><init>(I)V

    .line 51
    invoke-virtual/range {p0 .. p0}, Lub;->L()V

    move-object/from16 v6, v18

    move-object/from16 v29, v6

    move-object/from16 v30, v29

    const/16 v26, 0x0

    const/16 v27, 0x0

    .line 52
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lub;->b0()Z

    move-result v19

    if-eqz v19, :cond_10

    .line 53
    sget-object v5, Ldb;->b:Lub$a;

    invoke-virtual {v0, v5}, Lub;->q0(Lub$a;)I

    move-result v5

    if-eqz v5, :cond_f

    move-object/from16 v21, v13

    const/4 v13, 0x1

    if-eq v5, v13, :cond_d

    const/4 v13, 0x2

    if-eq v5, v13, :cond_c

    const/4 v13, 0x3

    if-eq v5, v13, :cond_b

    const/4 v13, 0x4

    if-eq v5, v13, :cond_a

    const/4 v13, 0x5

    if-eq v5, v13, :cond_9

    .line 54
    invoke-virtual/range {p0 .. p0}, Lub;->r0()V

    .line 55
    invoke-virtual/range {p0 .. p0}, Lub;->s0()V

    move-object/from16 v22, v12

    goto :goto_d

    .line 56
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lub;->m0()Ljava/lang/String;

    move-result-object v30

    goto :goto_b

    .line 57
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lub;->m0()Ljava/lang/String;

    move-result-object v29

    goto :goto_b

    .line 58
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lub;->k0()I

    move-result v27

    goto :goto_b

    .line 59
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lub;->k0()I

    move-result v26

    :goto_b
    move-object/from16 v13, v21

    goto :goto_e

    .line 60
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lub;->o()V

    .line 61
    :goto_c
    invoke-virtual/range {p0 .. p0}, Lub;->b0()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 62
    invoke-static {v0, v14}, Lcb;->a(Lub;Lcom/airbnb/lottie/e;)Lca;

    move-result-object v5

    move-object/from16 v22, v12

    .line 63
    invoke-virtual {v5}, Lca;->b()J

    move-result-wide v12

    invoke-virtual {v4, v12, v13, v5}, Lb0;->k(JLjava/lang/Object;)V

    .line 64
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v12, v22

    goto :goto_c

    :cond_e
    move-object/from16 v22, v12

    .line 65
    invoke-virtual/range {p0 .. p0}, Lub;->S()V

    :goto_d
    move-object/from16 v13, v21

    move-object/from16 v12, v22

    goto :goto_e

    :cond_f
    move-object/from16 v22, v12

    move-object/from16 v21, v13

    .line 66
    invoke-virtual/range {p0 .. p0}, Lub;->m0()Ljava/lang/String;

    move-result-object v6

    :goto_e
    const/16 v5, 0xa

    goto :goto_a

    :cond_10
    move-object/from16 v22, v12

    move-object/from16 v21, v13

    .line 67
    invoke-virtual/range {p0 .. p0}, Lub;->V()V

    if-eqz v29, :cond_11

    .line 68
    new-instance v2, Lcom/airbnb/lottie/h;

    move-object/from16 v25, v2

    move-object/from16 v28, v6

    invoke-direct/range {v25 .. v30}, Lcom/airbnb/lottie/h;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-virtual {v2}, Lcom/airbnb/lottie/h;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    .line 70
    :cond_11
    invoke-virtual {v9, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_f
    move-object/from16 v13, v21

    move-object/from16 v12, v22

    goto/16 :goto_9

    :cond_12
    move-object/from16 v22, v12

    move-object/from16 v21, v13

    .line 71
    invoke-virtual/range {p0 .. p0}, Lub;->S()V

    goto/16 :goto_16

    :pswitch_4
    move/from16 v24, v6

    move-object/from16 v22, v12

    move-object/from16 v21, v13

    move/from16 v23, v15

    move v15, v5

    .line 72
    invoke-virtual/range {p0 .. p0}, Lub;->o()V

    const/4 v2, 0x0

    .line 73
    :cond_13
    :goto_10
    invoke-virtual/range {p0 .. p0}, Lub;->b0()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 74
    invoke-static {v0, v14}, Lcb;->a(Lub;Lcom/airbnb/lottie/e;)Lca;

    move-result-object v4

    .line 75
    invoke-virtual {v4}, Lca;->d()Lca$a;

    move-result-object v5

    sget-object v6, Lca$a;->d:Lca$a;

    if-ne v5, v6, :cond_14

    add-int/lit8 v2, v2, 0x1

    .line 76
    :cond_14
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    invoke-virtual {v4}, Lca;->b()J

    move-result-wide v5

    invoke-virtual {v8, v5, v6, v4}, Lb0;->k(JLjava/lang/Object;)V

    const/4 v4, 0x4

    if-le v2, v4, :cond_13

    .line 78
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "You have "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " images. Lottie should primarily be used with shapes. If you are using Adobe Illustrator, convert the Illustrator layers to shape layers."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lzb;->b(Ljava/lang/String;)V

    goto :goto_10

    .line 79
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lub;->S()V

    goto/16 :goto_16

    :pswitch_5
    move/from16 v24, v6

    move-object/from16 v22, v12

    move-object/from16 v21, v13

    move/from16 v23, v15

    move v15, v5

    .line 80
    invoke-virtual/range {p0 .. p0}, Lub;->m0()Ljava/lang/String;

    move-result-object v2

    const-string v4, "\\."

    .line 81
    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    .line 82
    aget-object v5, v2, v4

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    .line 83
    aget-object v6, v2, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v12, 0x2

    .line 84
    aget-object v2, v2, v12

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v12, 0x4

    if-ge v4, v12, :cond_16

    goto :goto_12

    :cond_16
    if-le v4, v12, :cond_17

    goto :goto_11

    :cond_17
    if-ge v6, v12, :cond_18

    goto :goto_12

    :cond_18
    if-le v6, v12, :cond_19

    goto :goto_11

    :cond_19
    if-ltz v2, :cond_1a

    :goto_11
    const/4 v2, 0x1

    goto :goto_13

    :cond_1a
    :goto_12
    const/4 v2, 0x0

    :goto_13
    if-nez v2, :cond_1b

    const-string v2, "Lottie only supports bodymovin >= 4.4.0"

    .line 85
    invoke-virtual {v14, v2}, Lcom/airbnb/lottie/e;->a(Ljava/lang/String;)V

    goto :goto_16

    :pswitch_6
    move v15, v5

    move/from16 v24, v6

    move-object/from16 v22, v12

    move-object/from16 v21, v13

    .line 86
    invoke-virtual/range {p0 .. p0}, Lub;->j0()D

    move-result-wide v4

    double-to-float v2, v4

    move v5, v15

    move v15, v2

    goto :goto_15

    :pswitch_7
    move-object/from16 v22, v12

    move-object/from16 v21, v13

    move/from16 v23, v15

    move v15, v5

    .line 87
    invoke-virtual/range {p0 .. p0}, Lub;->j0()D

    move-result-wide v4

    double-to-float v2, v4

    const v4, 0x3c23d70a    # 0.01f

    sub-float v6, v2, v4

    move v5, v15

    goto :goto_14

    :pswitch_8
    move/from16 v24, v6

    move-object/from16 v22, v12

    move-object/from16 v21, v13

    move/from16 v23, v15

    .line 88
    invoke-virtual/range {p0 .. p0}, Lub;->j0()D

    move-result-wide v4

    double-to-float v5, v4

    goto :goto_15

    :pswitch_9
    move/from16 v24, v6

    move-object/from16 v22, v12

    move-object/from16 v21, v13

    move/from16 v23, v15

    move v15, v5

    .line 89
    invoke-virtual/range {p0 .. p0}, Lub;->k0()I

    move-result v16

    goto :goto_14

    :pswitch_a
    move/from16 v24, v6

    move-object/from16 v22, v12

    move-object/from16 v21, v13

    move/from16 v23, v15

    move v15, v5

    .line 90
    invoke-virtual/range {p0 .. p0}, Lub;->k0()I

    move-result v3

    :goto_14
    move/from16 v15, v23

    :goto_15
    const/16 v2, 0xa

    goto/16 :goto_0

    :cond_1b
    :goto_16
    move v5, v15

    move-object/from16 v13, v21

    move-object/from16 v12, v22

    move/from16 v15, v23

    move/from16 v6, v24

    goto :goto_15

    :cond_1c
    move/from16 v24, v6

    move-object/from16 v22, v12

    move-object/from16 v21, v13

    move/from16 v23, v15

    move v15, v5

    int-to-float v0, v3

    mul-float v0, v0, v1

    float-to-int v0, v0

    move/from16 v4, v16

    int-to-float v2, v4

    mul-float v2, v2, v1

    float-to-int v1, v2

    .line 91
    new-instance v3, Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-direct {v3, v2, v2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v2, v14

    move v4, v15

    move/from16 v5, v24

    move/from16 v6, v23

    .line 92
    invoke-virtual/range {v2 .. v13}, Lcom/airbnb/lottie/e;->q(Landroid/graphics/Rect;FFFLjava/util/List;Lb0;Ljava/util/Map;Ljava/util/Map;Lf0;Ljava/util/Map;Ljava/util/List;)V

    return-object v14

    :pswitch_data_0
    .packed-switch 0x0
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
