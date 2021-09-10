.class public Lcb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lub$a;

.field private static final b:Lub$a;

.field private static final c:Lub$a;

.field public static final synthetic d:I


# direct methods
.method static constructor <clinit>()V
    .locals 23

    const-string v0, "nm"

    const-string v1, "ind"

    const-string v2, "refId"

    const-string v3, "ty"

    const-string v4, "parent"

    const-string v5, "sw"

    const-string v6, "sh"

    const-string v7, "sc"

    const-string v8, "ks"

    const-string v9, "tt"

    const-string v10, "masksProperties"

    const-string v11, "shapes"

    const-string v12, "t"

    const-string v13, "ef"

    const-string v14, "sr"

    const-string v15, "st"

    const-string v16, "w"

    const-string v17, "h"

    const-string v18, "ip"

    const-string v19, "op"

    const-string v20, "tm"

    const-string v21, "cl"

    const-string v22, "hd"

    .line 1
    filled-new-array/range {v0 .. v22}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lub$a;->a([Ljava/lang/String;)Lub$a;

    move-result-object v0

    sput-object v0, Lcb;->a:Lub$a;

    const-string v0, "d"

    const-string v1, "a"

    .line 2
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lub$a;->a([Ljava/lang/String;)Lub$a;

    move-result-object v0

    sput-object v0, Lcb;->b:Lub$a;

    const-string v0, "nm"

    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lub$a;->a([Ljava/lang/String;)Lub$a;

    move-result-object v0

    sput-object v0, Lcb;->c:Lub$a;

    return-void
.end method

.method public static a(Lub;Lcom/airbnb/lottie/e;)Lca;
    .locals 43

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 1
    sget-object v1, Lca$b;->b:Lca$b;

    .line 2
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-virtual/range {p0 .. p0}, Lub;->L()V

    const/high16 v2, 0x3f800000    # 1.0f

    .line 5
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    const/4 v11, 0x0

    .line 6
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    const/4 v3, 0x0

    const-string v5, "UNSET"

    const-wide/16 v13, 0x0

    const-wide/16 v15, -0x1

    move-object/from16 v30, v1

    move-wide/from16 v17, v15

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/16 v16, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/high16 v24, 0x3f800000    # 1.0f

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    move-wide v14, v13

    move-object v13, v5

    .line 7
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lub;->b0()Z

    move-result v5

    if-eqz v5, :cond_25

    .line 8
    sget-object v5, Lcb;->a:Lub$a;

    invoke-virtual {v0, v5}, Lub;->q0(Lub$a;)I

    move-result v5

    const/4 v4, 0x1

    packed-switch v5, :pswitch_data_0

    move-object/from16 v39, v6

    move-wide/from16 v41, v14

    .line 9
    invoke-virtual/range {p0 .. p0}, Lub;->r0()V

    .line 10
    invoke-virtual/range {p0 .. p0}, Lub;->s0()V

    goto/16 :goto_10

    .line 11
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lub;->i0()Z

    move-result v32

    goto :goto_0

    .line 12
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lub;->m0()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 13
    :pswitch_2
    invoke-static {v0, v7, v3}, Lna;->e(Lub;Lcom/airbnb/lottie/e;Z)Lu8;

    move-result-object v31

    goto :goto_0

    .line 14
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lub;->j0()D

    move-result-wide v4

    double-to-float v2, v4

    goto :goto_0

    .line 15
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lub;->j0()D

    move-result-wide v4

    double-to-float v1, v4

    goto/16 :goto_5

    .line 16
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lub;->k0()I

    move-result v4

    int-to-float v4, v4

    invoke-static {}, Ldc;->c()F

    move-result v5

    mul-float v5, v5, v4

    float-to-int v4, v5

    move/from16 v27, v4

    goto/16 :goto_5

    .line 17
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Lub;->k0()I

    move-result v4

    int-to-float v4, v4

    invoke-static {}, Ldc;->c()F

    move-result v5

    mul-float v5, v5, v4

    float-to-int v4, v5

    move/from16 v26, v4

    goto/16 :goto_5

    .line 18
    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Lub;->j0()D

    move-result-wide v4

    double-to-float v4, v4

    move/from16 v25, v4

    goto/16 :goto_5

    .line 19
    :pswitch_8
    invoke-virtual/range {p0 .. p0}, Lub;->j0()D

    move-result-wide v4

    double-to-float v4, v4

    move/from16 v24, v4

    goto/16 :goto_5

    .line 20
    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Lub;->o()V

    .line 21
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 22
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lub;->b0()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 23
    invoke-virtual/range {p0 .. p0}, Lub;->L()V

    .line 24
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lub;->b0()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 25
    sget-object v5, Lcb;->c:Lub$a;

    invoke-virtual {v0, v5}, Lub;->q0(Lub$a;)I

    move-result v5

    if-eqz v5, :cond_0

    .line 26
    invoke-virtual/range {p0 .. p0}, Lub;->r0()V

    .line 27
    invoke-virtual/range {p0 .. p0}, Lub;->s0()V

    goto :goto_2

    .line 28
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lub;->m0()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 29
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lub;->V()V

    goto :goto_1

    .line 30
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lub;->S()V

    .line 31
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Lottie doesn\'t support layer effects. If you are using them for  fills, strokes, trim paths etc. then try adding them directly as contents  in your shape. Found: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/airbnb/lottie/e;->a(Ljava/lang/String;)V

    goto :goto_7

    .line 32
    :pswitch_a
    invoke-virtual/range {p0 .. p0}, Lub;->L()V

    .line 33
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lub;->b0()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 34
    sget-object v3, Lcb;->b:Lub$a;

    invoke-virtual {v0, v3}, Lub;->q0(Lub$a;)I

    move-result v3

    if-eqz v3, :cond_6

    if-eq v3, v4, :cond_3

    .line 35
    invoke-virtual/range {p0 .. p0}, Lub;->r0()V

    .line 36
    invoke-virtual/range {p0 .. p0}, Lub;->s0()V

    goto :goto_3

    .line 37
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lub;->o()V

    .line 38
    invoke-virtual/range {p0 .. p0}, Lub;->b0()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 39
    invoke-static/range {p0 .. p1}, Lla;->a(Lub;Lcom/airbnb/lottie/e;)Ld9;

    move-result-object v29

    .line 40
    :cond_4
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lub;->b0()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 41
    invoke-virtual/range {p0 .. p0}, Lub;->s0()V

    goto :goto_4

    .line 42
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lub;->S()V

    goto :goto_3

    .line 43
    :cond_6
    invoke-static/range {p0 .. p1}, Lna;->c(Lub;Lcom/airbnb/lottie/e;)Lc9;

    move-result-object v28

    goto :goto_3

    .line 44
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lub;->V()V

    :goto_5
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 45
    :pswitch_b
    invoke-virtual/range {p0 .. p0}, Lub;->o()V

    .line 46
    :cond_8
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lub;->b0()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 47
    invoke-static/range {p0 .. p1}, Lqa;->a(Lub;Lcom/airbnb/lottie/e;)Li9;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 48
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 49
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lub;->S()V

    :goto_7
    move-object/from16 v39, v6

    move-wide/from16 v41, v14

    goto/16 :goto_10

    .line 50
    :pswitch_c
    invoke-virtual/range {p0 .. p0}, Lub;->o()V

    .line 51
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lub;->b0()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 52
    sget-object v3, Ln9$a;->b:Ln9$a;

    .line 53
    invoke-virtual/range {p0 .. p0}, Lub;->L()V

    const/4 v5, 0x0

    const/4 v11, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    .line 54
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lub;->b0()Z

    move-result v37

    if-eqz v37, :cond_22

    .line 55
    invoke-virtual/range {p0 .. p0}, Lub;->l0()Ljava/lang/String;

    move-result-object v4

    .line 56
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-object/from16 v38, v3

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v3

    move-object/from16 v39, v6

    const/16 v6, 0x6f

    const/16 v40, -0x1

    move-wide/from16 v41, v14

    const/4 v14, 0x3

    const/4 v15, 0x2

    if-eq v3, v6, :cond_10

    const/16 v6, 0xe04

    if-eq v3, v6, :cond_e

    const v6, 0x197f1

    if-eq v3, v6, :cond_c

    const v6, 0x3339a3

    if-eq v3, v6, :cond_a

    goto :goto_a

    :cond_a
    const-string v3, "mode"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    goto :goto_a

    :cond_b
    const/4 v3, 0x3

    goto :goto_b

    :cond_c
    const-string v3, "inv"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    goto :goto_a

    :cond_d
    const/4 v3, 0x2

    goto :goto_b

    :cond_e
    const-string v3, "pt"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    goto :goto_a

    :cond_f
    const/4 v3, 0x1

    goto :goto_b

    :cond_10
    const-string v3, "o"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    :goto_a
    const/4 v3, -0x1

    goto :goto_b

    :cond_11
    const/4 v3, 0x0

    :goto_b
    if-eqz v3, :cond_21

    const/4 v6, 0x1

    if-eq v3, v6, :cond_20

    if-eq v3, v15, :cond_1f

    if-eq v3, v14, :cond_12

    .line 57
    invoke-virtual/range {p0 .. p0}, Lub;->s0()V

    goto/16 :goto_f

    .line 58
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lub;->m0()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/16 v14, 0x61

    if-eq v6, v14, :cond_19

    const/16 v14, 0x69

    if-eq v6, v14, :cond_17

    const/16 v14, 0x6e

    if-eq v6, v14, :cond_15

    const/16 v14, 0x73

    if-eq v6, v14, :cond_13

    goto :goto_c

    :cond_13
    const-string v6, "s"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    goto :goto_c

    :cond_14
    const/4 v3, 0x3

    goto :goto_d

    :cond_15
    const-string v6, "n"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    goto :goto_c

    :cond_16
    const/4 v3, 0x2

    goto :goto_d

    :cond_17
    const-string v6, "i"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    goto :goto_c

    :cond_18
    const/4 v3, 0x1

    goto :goto_d

    :cond_19
    const-string v6, "a"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    :goto_c
    const/4 v3, -0x1

    goto :goto_d

    :cond_1a
    const/4 v3, 0x0

    :goto_d
    if-eqz v3, :cond_1e

    const/4 v6, 0x1

    if-eq v3, v6, :cond_1d

    if-eq v3, v15, :cond_1c

    const/4 v6, 0x3

    if-eq v3, v6, :cond_1b

    .line 59
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown mask mode "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ". Defaulting to Add."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lzb;->b(Ljava/lang/String;)V

    goto :goto_e

    .line 60
    :cond_1b
    sget-object v35, Ln9$a;->c:Ln9$a;

    goto :goto_f

    .line 61
    :cond_1c
    sget-object v35, Ln9$a;->e:Ln9$a;

    goto :goto_f

    :cond_1d
    const-string v3, "Animation contains intersect masks. They are not supported but will be treated like add masks."

    .line 62
    invoke-virtual {v7, v3}, Lcom/airbnb/lottie/e;->a(Ljava/lang/String;)V

    .line 63
    sget-object v35, Ln9$a;->d:Ln9$a;

    goto :goto_f

    :cond_1e
    :goto_e
    move-object/from16 v35, v38

    goto :goto_f

    .line 64
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lub;->i0()Z

    move-result v11

    goto :goto_f

    .line 65
    :cond_20
    new-instance v3, La9;

    .line 66
    invoke-static {}, Ldc;->c()F

    move-result v4

    sget-object v6, Llb;->a:Llb;

    .line 67
    invoke-static {v0, v7, v4, v6}, Lbb;->a(Lub;Lcom/airbnb/lottie/e;FLrb;)Ljava/util/List;

    move-result-object v4

    .line 68
    invoke-direct {v3, v4}, La9;-><init>(Ljava/util/List;)V

    move-object/from16 v36, v3

    goto :goto_f

    .line 69
    :cond_21
    invoke-static/range {p0 .. p1}, Lna;->g(Lub;Lcom/airbnb/lottie/e;)Lw8;

    move-result-object v5

    :goto_f
    move-object/from16 v3, v38

    move-object/from16 v6, v39

    move-wide/from16 v14, v41

    const/4 v4, 0x1

    goto/16 :goto_9

    :cond_22
    move-object/from16 v39, v6

    move-wide/from16 v41, v14

    .line 70
    invoke-virtual/range {p0 .. p0}, Lub;->V()V

    .line 71
    new-instance v3, Ln9;

    move-object/from16 v4, v35

    move-object/from16 v6, v36

    invoke-direct {v3, v4, v6, v5, v11}, Ln9;-><init>(Ln9$a;La9;Lw8;Z)V

    .line 72
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v6, v39

    const/4 v4, 0x1

    const/4 v11, 0x0

    goto/16 :goto_8

    :cond_23
    move-object/from16 v39, v6

    move-wide/from16 v41, v14

    .line 73
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v7, v3}, Lcom/airbnb/lottie/e;->p(I)V

    .line 74
    invoke-virtual/range {p0 .. p0}, Lub;->S()V

    goto/16 :goto_10

    :pswitch_d
    move-object/from16 v39, v6

    move-wide/from16 v41, v14

    .line 75
    invoke-static {}, Lca$b;->values()[Lca$b;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lub;->k0()I

    move-result v4

    aget-object v30, v3, v4

    const/4 v3, 0x1

    .line 76
    invoke-virtual {v7, v3}, Lcom/airbnb/lottie/e;->p(I)V

    goto/16 :goto_11

    :pswitch_e
    move-object/from16 v39, v6

    move-wide/from16 v41, v14

    .line 77
    invoke-static/range {p0 .. p1}, Lma;->a(Lub;Lcom/airbnb/lottie/e;)Le9;

    move-result-object v20

    goto/16 :goto_11

    :pswitch_f
    move-object/from16 v39, v6

    move-wide/from16 v41, v14

    .line 78
    invoke-virtual/range {p0 .. p0}, Lub;->m0()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v23

    goto/16 :goto_11

    :pswitch_10
    move-object/from16 v39, v6

    move-wide/from16 v41, v14

    .line 79
    invoke-virtual/range {p0 .. p0}, Lub;->k0()I

    move-result v3

    int-to-float v3, v3

    invoke-static {}, Ldc;->c()F

    move-result v4

    mul-float v4, v4, v3

    float-to-int v3, v4

    move/from16 v22, v3

    goto :goto_11

    :pswitch_11
    move-object/from16 v39, v6

    move-wide/from16 v41, v14

    .line 80
    invoke-virtual/range {p0 .. p0}, Lub;->k0()I

    move-result v3

    int-to-float v3, v3

    invoke-static {}, Ldc;->c()F

    move-result v4

    mul-float v4, v4, v3

    float-to-int v3, v4

    move/from16 v21, v3

    goto :goto_11

    :pswitch_12
    move-object/from16 v39, v6

    move-wide/from16 v41, v14

    .line 81
    invoke-virtual/range {p0 .. p0}, Lub;->k0()I

    move-result v3

    int-to-long v3, v3

    move-wide/from16 v17, v3

    goto :goto_11

    :pswitch_13
    move-object/from16 v39, v6

    move-wide/from16 v41, v14

    .line 82
    invoke-virtual/range {p0 .. p0}, Lub;->k0()I

    move-result v3

    .line 83
    sget-object v4, Lca$a;->h:Lca$a;

    const/4 v5, 0x6

    if-ge v3, v5, :cond_24

    .line 84
    invoke-static {}, Lca$a;->values()[Lca$a;

    move-result-object v4

    aget-object v3, v4, v3

    move-object/from16 v16, v3

    goto :goto_10

    :cond_24
    move-object/from16 v16, v4

    goto :goto_10

    :pswitch_14
    move-object/from16 v39, v6

    move-wide/from16 v41, v14

    .line 85
    invoke-virtual/range {p0 .. p0}, Lub;->m0()Ljava/lang/String;

    move-result-object v19

    goto :goto_11

    :pswitch_15
    move-object/from16 v39, v6

    .line 86
    invoke-virtual/range {p0 .. p0}, Lub;->k0()I

    move-result v3

    int-to-long v14, v3

    goto :goto_11

    :pswitch_16
    move-object/from16 v39, v6

    move-wide/from16 v41, v14

    .line 87
    invoke-virtual/range {p0 .. p0}, Lub;->m0()Ljava/lang/String;

    move-result-object v13

    goto :goto_11

    :goto_10
    move-wide/from16 v14, v41

    :goto_11
    move-object/from16 v6, v39

    const/4 v3, 0x0

    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_25
    move-object/from16 v39, v6

    move-wide/from16 v41, v14

    .line 88
    invoke-virtual/range {p0 .. p0}, Lub;->V()V

    div-float v11, v1, v24

    div-float v14, v2, v24

    .line 89
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    cmpl-float v1, v11, v0

    if-lez v1, :cond_26

    .line 90
    new-instance v6, Lec;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v33

    move-object v0, v6

    move-object/from16 v1, p1

    move-object v2, v12

    move-object v3, v12

    move-object/from16 v35, v8

    move-object/from16 v34, v10

    move-object/from16 v10, v39

    move-object v8, v6

    move-object/from16 v6, v33

    invoke-direct/range {v0 .. v6}, Lec;-><init>(Lcom/airbnb/lottie/e;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 91
    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_26
    move-object/from16 v35, v8

    move-object/from16 v34, v10

    move-object/from16 v10, v39

    :goto_12
    const/4 v0, 0x0

    cmpl-float v0, v14, v0

    if-lez v0, :cond_27

    goto :goto_13

    .line 92
    :cond_27
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/e;->f()F

    move-result v0

    move v14, v0

    .line 93
    :goto_13
    new-instance v8, Lec;

    const/16 v33, 0x0

    .line 94
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const/4 v4, 0x0

    move-object v0, v8

    move-object/from16 v1, p1

    move-object v2, v9

    move-object v3, v9

    move v5, v11

    invoke-direct/range {v0 .. v6}, Lec;-><init>(Lcom/airbnb/lottie/e;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 95
    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    new-instance v8, Lec;

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 97
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    move-object v0, v8

    move-object v2, v12

    move-object v3, v12

    move-object/from16 v4, v33

    move v5, v14

    invoke-direct/range {v0 .. v6}, Lec;-><init>(Lcom/airbnb/lottie/e;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 98
    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, ".ai"

    .line 99
    invoke-virtual {v13, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_28

    const-string v0, "ai"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    :cond_28
    const-string v0, "Convert your Illustrator layers to shape layers."

    .line 100
    invoke-virtual {v7, v0}, Lcom/airbnb/lottie/e;->a(Ljava/lang/String;)V

    .line 101
    :cond_29
    new-instance v33, Lca;

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    move-object/from16 v2, p1

    move-object v3, v13

    move-wide/from16 v4, v41

    move-object/from16 v6, v16

    move-wide/from16 v7, v17

    move-object/from16 v9, v19

    move-object/from16 v10, v34

    move-object/from16 v11, v20

    move/from16 v12, v21

    move/from16 v13, v22

    move/from16 v14, v23

    move-object/from16 v21, v15

    move/from16 v15, v24

    move/from16 v16, v25

    move/from16 v17, v26

    move/from16 v18, v27

    move-object/from16 v19, v28

    move-object/from16 v20, v29

    move-object/from16 v22, v30

    move-object/from16 v23, v31

    move/from16 v24, v32

    invoke-direct/range {v0 .. v24}, Lca;-><init>(Ljava/util/List;Lcom/airbnb/lottie/e;Ljava/lang/String;JLca$a;JLjava/lang/String;Ljava/util/List;Le9;IIIFFIILc9;Ld9;Ljava/util/List;Lca$b;Lu8;Z)V

    return-object v33

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
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
