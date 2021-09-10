.class public Lcp;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcp$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcp$a;

.field private c:F

.field private d:F

.field private e:Z

.field private f:Z

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:F

.field private l:J

.field private m:Z

.field private n:I

.field private o:I

.field private final p:Landroid/os/Handler;

.field private q:F

.field private r:F

.field private s:I

.field private t:Landroid/view/GestureDetector;

.field private u:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcp$a;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcp;->s:I

    .line 3
    iput-object p1, p0, Lcp;->a:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcp;->b:Lcp$a;

    .line 5
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    .line 6
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    const/4 v0, 0x2

    mul-int/lit8 p2, p2, 0x2

    iput p2, p0, Lcp;->n:I

    .line 7
    iput v0, p0, Lcp;->o:I

    const/4 p2, 0x0

    .line 8
    iput-object p2, p0, Lcp;->p:Landroid/os/Handler;

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v1, 0x1

    const/16 v2, 0x12

    if-le v0, v2, :cond_0

    .line 10
    iput-boolean v1, p0, Lcp;->e:Z

    .line 11
    iget-object v2, p0, Lcp;->t:Landroid/view/GestureDetector;

    if-nez v2, :cond_0

    .line 12
    new-instance v2, Lbp;

    invoke-direct {v2, p0}, Lbp;-><init>(Lcp;)V

    .line 13
    new-instance v3, Landroid/view/GestureDetector;

    invoke-direct {v3, p1, v2, p2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    iput-object v3, p0, Lcp;->t:Landroid/view/GestureDetector;

    :cond_0
    const/16 p1, 0x16

    if-le v0, p1, :cond_1

    .line 14
    iput-boolean v1, p0, Lcp;->f:Z

    :cond_1
    return-void
.end method

.method static synthetic a(Lcp;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcp;->q:F

    return p1
.end method

.method static synthetic b(Lcp;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcp;->r:F

    return p1
.end method

.method static synthetic c(Lcp;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcp;->s:I

    return p1
.end method

.method private e()Z
    .locals 1

    .line 1
    iget v0, p0, Lcp;->s:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public d()F
    .locals 5

    .line 1
    invoke-direct {p0}, Lcp;->e()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_5

    .line 2
    iget-boolean v0, p0, Lcp;->u:Z

    if-eqz v0, :cond_0

    iget v2, p0, Lcp;->g:F

    iget v3, p0, Lcp;->h:F

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_1

    :cond_0
    if-nez v0, :cond_2

    iget v0, p0, Lcp;->g:F

    iget v2, p0, Lcp;->h:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget v2, p0, Lcp;->g:F

    iget v3, p0, Lcp;->h:F

    div-float/2addr v2, v3

    sub-float v2, v1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v2, v2, v3

    .line 4
    iget v3, p0, Lcp;->h:F

    iget v4, p0, Lcp;->n:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_3

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    add-float/2addr v1, v2

    goto :goto_1

    :cond_4
    sub-float/2addr v1, v2

    :goto_1
    return v1

    .line 5
    :cond_5
    iget v0, p0, Lcp;->h:F

    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-lez v2, :cond_6

    iget v1, p0, Lcp;->g:F

    div-float/2addr v1, v0

    :cond_6
    return v1
.end method

.method public f(Landroid/view/MotionEvent;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iput-wide v2, v0, Lcp;->l:J

    .line 2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    .line 3
    iget-boolean v3, v0, Lcp;->e:Z

    if-eqz v3, :cond_0

    .line 4
    iget-object v3, v0, Lcp;->t:Landroid/view/GestureDetector;

    invoke-virtual {v3, v1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 5
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    .line 6
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v4

    and-int/lit8 v4, v4, 0x20

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 7
    :goto_0
    iget v7, v0, Lcp;->s:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    if-nez v4, :cond_2

    const/4 v7, 0x1

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    :goto_1
    if-eq v2, v5, :cond_4

    const/4 v9, 0x3

    if-eq v2, v9, :cond_4

    if-eqz v7, :cond_3

    goto :goto_2

    :cond_3
    const/4 v9, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v9, 0x1

    :goto_3
    const/4 v10, 0x0

    if-eqz v2, :cond_5

    if-eqz v9, :cond_8

    .line 8
    :cond_5
    iget-boolean v11, v0, Lcp;->m:Z

    if-eqz v11, :cond_6

    .line 9
    iget-object v11, v0, Lcp;->b:Lcp$a;

    check-cast v11, Lxo$a;

    .line 10
    iget-object v11, v11, Lxo$a;->a:Lxo;

    iget-object v11, v11, Lvo;->i:Lzo;

    invoke-interface {v11}, Lzo;->d()V

    .line 11
    iput-boolean v6, v0, Lcp;->m:Z

    .line 12
    iput v10, v0, Lcp;->i:F

    .line 13
    iput v6, v0, Lcp;->s:I

    goto :goto_4

    .line 14
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcp;->e()Z

    move-result v11

    if-eqz v11, :cond_7

    if-eqz v9, :cond_7

    .line 15
    iput-boolean v6, v0, Lcp;->m:Z

    .line 16
    iput v10, v0, Lcp;->i:F

    .line 17
    iput v6, v0, Lcp;->s:I

    :cond_7
    :goto_4
    if-eqz v9, :cond_8

    return v5

    .line 18
    :cond_8
    iget-boolean v11, v0, Lcp;->m:Z

    if-nez v11, :cond_9

    iget-boolean v11, v0, Lcp;->f:Z

    if-eqz v11, :cond_9

    invoke-direct/range {p0 .. p0}, Lcp;->e()Z

    move-result v11

    if-nez v11, :cond_9

    if-nez v9, :cond_9

    if-eqz v4, :cond_9

    .line 19
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, v0, Lcp;->q:F

    .line 20
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, v0, Lcp;->r:F

    .line 21
    iput v8, v0, Lcp;->s:I

    .line 22
    iput v10, v0, Lcp;->i:F

    :cond_9
    const/4 v4, 0x6

    if-eqz v2, :cond_b

    if-eq v2, v4, :cond_b

    const/4 v9, 0x5

    if-eq v2, v9, :cond_b

    if-eqz v7, :cond_a

    goto :goto_5

    :cond_a
    const/4 v7, 0x0

    goto :goto_6

    :cond_b
    :goto_5
    const/4 v7, 0x1

    :goto_6
    if-ne v2, v4, :cond_c

    const/4 v4, 0x1

    goto :goto_7

    :cond_c
    const/4 v4, 0x0

    :goto_7
    if-eqz v4, :cond_d

    .line 23
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v9

    goto :goto_8

    :cond_d
    const/4 v9, -0x1

    :goto_8
    if-eqz v4, :cond_e

    add-int/lit8 v4, v3, -0x1

    goto :goto_9

    :cond_e
    move v4, v3

    .line 24
    :goto_9
    invoke-direct/range {p0 .. p0}, Lcp;->e()Z

    move-result v11

    if-eqz v11, :cond_10

    .line 25
    iget v11, v0, Lcp;->q:F

    .line 26
    iget v12, v0, Lcp;->r:F

    .line 27
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    cmpg-float v13, v13, v12

    if-gez v13, :cond_f

    .line 28
    iput-boolean v5, v0, Lcp;->u:Z

    goto :goto_c

    .line 29
    :cond_f
    iput-boolean v6, v0, Lcp;->u:Z

    goto :goto_c

    :cond_10
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_a
    if-ge v11, v3, :cond_12

    if-ne v9, v11, :cond_11

    goto :goto_b

    .line 30
    :cond_11
    invoke-virtual {v1, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v14

    add-float/2addr v12, v14

    .line 31
    invoke-virtual {v1, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v14

    add-float/2addr v13, v14

    :goto_b
    add-int/lit8 v11, v11, 0x1

    goto :goto_a

    :cond_12
    int-to-float v11, v4

    div-float/2addr v12, v11

    div-float v11, v13, v11

    move/from16 v16, v12

    move v12, v11

    move/from16 v11, v16

    :goto_c
    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_d
    if-ge v14, v3, :cond_14

    if-ne v9, v14, :cond_13

    goto :goto_e

    .line 32
    :cond_13
    invoke-virtual {v1, v14}, Landroid/view/MotionEvent;->getX(I)F

    move-result v15

    sub-float/2addr v15, v11

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    add-float/2addr v15, v10

    .line 33
    invoke-virtual {v1, v14}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    sub-float/2addr v10, v12

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    add-float/2addr v10, v13

    move v13, v10

    move v10, v15

    :goto_e
    add-int/lit8 v14, v14, 0x1

    goto :goto_d

    :cond_14
    int-to-float v1, v4

    div-float/2addr v10, v1

    div-float/2addr v13, v1

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v10, v10, v1

    mul-float v13, v13, v1

    .line 34
    invoke-direct/range {p0 .. p0}, Lcp;->e()Z

    move-result v1

    if-eqz v1, :cond_15

    move v1, v13

    goto :goto_f

    :cond_15
    float-to-double v3, v10

    float-to-double v14, v13

    .line 35
    invoke-static {v3, v4, v14, v15}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v3

    double-to-float v1, v3

    .line 36
    :goto_f
    iget-boolean v3, v0, Lcp;->m:Z

    .line 37
    iput v11, v0, Lcp;->c:F

    .line 38
    iput v12, v0, Lcp;->d:F

    .line 39
    invoke-direct/range {p0 .. p0}, Lcp;->e()Z

    move-result v4

    if-nez v4, :cond_17

    iget-boolean v4, v0, Lcp;->m:Z

    if-eqz v4, :cond_17

    iget v4, v0, Lcp;->o:I

    int-to-float v4, v4

    cmpg-float v4, v1, v4

    if-ltz v4, :cond_16

    if-eqz v7, :cond_17

    .line 40
    :cond_16
    iget-object v4, v0, Lcp;->b:Lcp$a;

    check-cast v4, Lxo$a;

    .line 41
    iget-object v4, v4, Lxo$a;->a:Lxo;

    iget-object v4, v4, Lvo;->i:Lzo;

    invoke-interface {v4}, Lzo;->d()V

    .line 42
    iput-boolean v6, v0, Lcp;->m:Z

    .line 43
    iput v1, v0, Lcp;->i:F

    :cond_17
    if-eqz v7, :cond_18

    .line 44
    iput v10, v0, Lcp;->j:F

    .line 45
    iput v13, v0, Lcp;->k:F

    .line 46
    iput v1, v0, Lcp;->g:F

    iput v1, v0, Lcp;->h:F

    iput v1, v0, Lcp;->i:F

    .line 47
    :cond_18
    invoke-direct/range {p0 .. p0}, Lcp;->e()Z

    move-result v4

    if-eqz v4, :cond_19

    iget v4, v0, Lcp;->n:I

    goto :goto_10

    :cond_19
    iget v4, v0, Lcp;->o:I

    .line 48
    :goto_10
    iget-boolean v6, v0, Lcp;->m:Z

    if-nez v6, :cond_1b

    int-to-float v4, v4

    cmpl-float v4, v1, v4

    if-ltz v4, :cond_1b

    if-nez v3, :cond_1a

    iget v3, v0, Lcp;->i:F

    sub-float v3, v1, v3

    .line 49
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, v0, Lcp;->n:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1b

    .line 50
    :cond_1a
    iput v10, v0, Lcp;->j:F

    .line 51
    iput v13, v0, Lcp;->k:F

    .line 52
    iput v1, v0, Lcp;->g:F

    iput v1, v0, Lcp;->h:F

    .line 53
    iget-object v3, v0, Lcp;->b:Lcp$a;

    check-cast v3, Lxo$a;

    .line 54
    iget-object v3, v3, Lxo$a;->a:Lxo;

    iget-object v3, v3, Lvo;->i:Lzo;

    invoke-interface {v3}, Lzo;->e()V

    .line 55
    iput-boolean v5, v0, Lcp;->m:Z

    :cond_1b
    if-ne v2, v8, :cond_1d

    .line 56
    iput v10, v0, Lcp;->j:F

    .line 57
    iput v13, v0, Lcp;->k:F

    .line 58
    iput v1, v0, Lcp;->g:F

    .line 59
    iget-boolean v1, v0, Lcp;->m:Z

    if-eqz v1, :cond_1c

    .line 60
    iget-object v1, v0, Lcp;->b:Lcp$a;

    check-cast v1, Lxo$a;

    .line 61
    iget-object v2, v1, Lxo$a;->a:Lxo;

    iget-object v2, v2, Lxo;->p:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-eq v2, v5, :cond_1c

    .line 62
    iget-object v1, v1, Lxo$a;->a:Lxo;

    iget-object v2, v1, Lvo;->i:Lzo;

    iget-object v1, v1, Lxo;->p:Landroid/view/MotionEvent;

    invoke-virtual/range {p0 .. p0}, Lcp;->d()F

    move-result v3

    .line 63
    iget v4, v0, Lcp;->c:F

    .line 64
    iget v6, v0, Lcp;->d:F

    .line 65
    invoke-interface {v2, v1, v3, v4, v6}, Lzo;->c(Landroid/view/MotionEvent;FFF)V

    .line 66
    :cond_1c
    iget v1, v0, Lcp;->g:F

    iput v1, v0, Lcp;->h:F

    :cond_1d
    return v5
.end method
