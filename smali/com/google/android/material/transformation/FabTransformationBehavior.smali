.class public abstract Lcom/google/android/material/transformation/FabTransformationBehavior;
.super Lcom/google/android/material/transformation/ExpandableTransformationBehavior;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/transformation/FabTransformationBehavior$b;
    }
.end annotation


# instance fields
.field private final c:Landroid/graphics/Rect;

.field private final d:Landroid/graphics/RectF;

.field private final e:Landroid/graphics/RectF;

.field private final f:[I

.field private g:F

.field private h:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/transformation/ExpandableTransformationBehavior;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->c:Landroid/graphics/Rect;

    .line 3
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->d:Landroid/graphics/RectF;

    .line 4
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->e:Landroid/graphics/RectF;

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 5
    iput-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->f:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/transformation/ExpandableTransformationBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 7
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->c:Landroid/graphics/Rect;

    .line 8
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->d:Landroid/graphics/RectF;

    .line 9
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->e:Landroid/graphics/RectF;

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 10
    iput-object p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->f:[I

    return-void
.end method

.method private G(FFZLcom/google/android/material/transformation/FabTransformationBehavior$b;)Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFZ",
            "Lcom/google/android/material/transformation/FabTransformationBehavior$b;",
            ")",
            "Landroid/util/Pair<",
            "Lqx;",
            "Lqx;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_4

    cmpl-float p1, p2, v0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    cmpg-float p1, p2, v0

    if-ltz p1, :cond_2

    :cond_1
    if-nez p3, :cond_3

    cmpl-float p1, p2, v0

    if-lez p1, :cond_3

    .line 1
    :cond_2
    iget-object p1, p4, Lcom/google/android/material/transformation/FabTransformationBehavior$b;->a:Lpx;

    const-string p2, "translationXCurveUpwards"

    invoke-virtual {p1, p2}, Lpx;->f(Ljava/lang/String;)Lqx;

    move-result-object p1

    .line 2
    iget-object p2, p4, Lcom/google/android/material/transformation/FabTransformationBehavior$b;->a:Lpx;

    const-string p3, "translationYCurveUpwards"

    invoke-virtual {p2, p3}, Lpx;->f(Ljava/lang/String;)Lqx;

    move-result-object p2

    goto :goto_1

    .line 3
    :cond_3
    iget-object p1, p4, Lcom/google/android/material/transformation/FabTransformationBehavior$b;->a:Lpx;

    const-string p2, "translationXCurveDownwards"

    invoke-virtual {p1, p2}, Lpx;->f(Ljava/lang/String;)Lqx;

    move-result-object p1

    .line 4
    iget-object p2, p4, Lcom/google/android/material/transformation/FabTransformationBehavior$b;->a:Lpx;

    const-string p3, "translationYCurveDownwards"

    invoke-virtual {p2, p3}, Lpx;->f(Ljava/lang/String;)Lqx;

    move-result-object p2

    goto :goto_1

    .line 5
    :cond_4
    :goto_0
    iget-object p1, p4, Lcom/google/android/material/transformation/FabTransformationBehavior$b;->a:Lpx;

    const-string p2, "translationXLinear"

    invoke-virtual {p1, p2}, Lpx;->f(Ljava/lang/String;)Lqx;

    move-result-object p1

    .line 6
    iget-object p2, p4, Lcom/google/android/material/transformation/FabTransformationBehavior$b;->a:Lpx;

    const-string p3, "translationYLinear"

    invoke-virtual {p2, p3}, Lpx;->f(Ljava/lang/String;)Lqx;

    move-result-object p2

    .line 7
    :goto_1
    new-instance p3, Landroid/util/Pair;

    invoke-direct {p3, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p3
.end method

.method private H(Landroid/view/View;Landroid/view/View;Lrx;)F
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->d:Landroid/graphics/RectF;

    .line 2
    iget-object v1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->e:Landroid/graphics/RectF;

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/transformation/FabTransformationBehavior;->K(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 4
    iget p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->g:F

    iget v2, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->h:F

    invoke-virtual {v0, p1, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 5
    invoke-direct {p0, p2, v1}, Lcom/google/android/material/transformation/FabTransformationBehavior;->K(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 6
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result p1

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result p2

    sub-float/2addr p1, p2

    const/4 p2, 0x0

    add-float/2addr p1, p2

    return p1
.end method

.method private I(Landroid/view/View;Landroid/view/View;Lrx;)F
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->d:Landroid/graphics/RectF;

    .line 2
    iget-object v1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->e:Landroid/graphics/RectF;

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/transformation/FabTransformationBehavior;->K(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 4
    iget p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->g:F

    iget v2, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->h:F

    invoke-virtual {v0, p1, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 5
    invoke-direct {p0, p2, v1}, Lcom/google/android/material/transformation/FabTransformationBehavior;->K(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 6
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result p1

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result p2

    sub-float/2addr p1, p2

    const/4 p2, 0x0

    add-float/2addr p1, p2

    return p1
.end method

.method private J(Lcom/google/android/material/transformation/FabTransformationBehavior$b;Lqx;FF)F
    .locals 8

    .line 1
    invoke-virtual {p2}, Lqx;->c()J

    move-result-wide v0

    .line 2
    invoke-virtual {p2}, Lqx;->d()J

    move-result-wide v2

    .line 3
    iget-object p1, p1, Lcom/google/android/material/transformation/FabTransformationBehavior$b;->a:Lpx;

    const-string v4, "expansion"

    invoke-virtual {p1, v4}, Lpx;->f(Ljava/lang/String;)Lqx;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lqx;->c()J

    move-result-wide v4

    invoke-virtual {p1}, Lqx;->d()J

    move-result-wide v6

    add-long/2addr v6, v4

    const-wide/16 v4, 0x11

    add-long/2addr v6, v4

    sub-long/2addr v6, v0

    long-to-float p1, v6

    long-to-float v0, v2

    div-float/2addr p1, v0

    .line 5
    invoke-virtual {p2}, Lqx;->e()Landroid/animation/TimeInterpolator;

    move-result-object p2

    invoke-interface {p2, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

    .line 6
    sget-object p2, Ljx;->a:Landroid/animation/TimeInterpolator;

    invoke-static {p4, p3, p1, p3}, Lic;->a(FFFF)F

    move-result p1

    return p1
.end method

.method private K(Landroid/view/View;Landroid/graphics/RectF;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 2
    iget-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->f:[I

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v1, 0x0

    .line 4
    aget v1, v0, v1

    int-to-float v1, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    int-to-float v0, v0

    invoke-virtual {p2, v1, v0}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    neg-float v0, v0

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    neg-float p1, p1

    float-to-int p1, p1

    int-to-float p1, p1

    invoke-virtual {p2, v0, p1}, Landroid/graphics/RectF;->offset(FF)V

    return-void
.end method

.method private L(Landroid/view/View;JIIFLjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "JIIF",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_0

    .line 2
    invoke-static {p1, p4, p5, p6, p6}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object p1

    .line 3
    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 4
    invoke-virtual {p1, p2, p3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 5
    invoke-interface {p7, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private N(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 1

    .line 1
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Landroid/view/ViewGroup;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method protected F(Landroid/view/View;Landroid/view/View;ZZ)Landroid/animation/AnimatorSet;
    .locals 27

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move/from16 v11, p3

    .line 1
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v8, v0, v11}, Lcom/google/android/material/transformation/FabTransformationBehavior;->M(Landroid/content/Context;Z)Lcom/google/android/material/transformation/FabTransformationBehavior$b;

    move-result-object v12

    if-eqz v11, :cond_0

    .line 2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    iput v0, v8, Lcom/google/android/material/transformation/FabTransformationBehavior;->g:F

    .line 3
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iput v0, v8, Lcom/google/android/material/transformation/FabTransformationBehavior;->h:F

    .line 4
    :cond_0
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 5
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 6
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-lt v15, v7, :cond_3

    .line 7
    invoke-static/range {p2 .. p2}, Lc3;->i(Landroid/view/View;)F

    move-result v0

    invoke-static/range {p1 .. p1}, Lc3;->i(Landroid/view/View;)F

    move-result v1

    sub-float/2addr v0, v1

    if-eqz v11, :cond_2

    if-nez p4, :cond_1

    neg-float v0, v0

    .line 8
    invoke-virtual {v10, v0}, Landroid/view/View;->setTranslationZ(F)V

    .line 9
    :cond_1
    sget-object v0, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    new-array v1, v5, [F

    aput v6, v1, v4

    invoke-static {v10, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto :goto_0

    .line 10
    :cond_2
    sget-object v1, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    new-array v2, v5, [F

    neg-float v0, v0

    aput v0, v2, v4

    invoke-static {v10, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 11
    :goto_0
    iget-object v1, v12, Lcom/google/android/material/transformation/FabTransformationBehavior$b;->a:Lpx;

    const-string v2, "elevation"

    invoke-virtual {v1, v2}, Lpx;->f(Ljava/lang/String;)Lqx;

    move-result-object v1

    .line 12
    invoke-virtual {v1, v0}, Lqx;->a(Landroid/animation/Animator;)V

    .line 13
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    :cond_3
    iget-object v0, v8, Lcom/google/android/material/transformation/FabTransformationBehavior;->d:Landroid/graphics/RectF;

    .line 15
    iget-object v1, v12, Lcom/google/android/material/transformation/FabTransformationBehavior$b;->b:Lrx;

    invoke-direct {v8, v9, v10, v1}, Lcom/google/android/material/transformation/FabTransformationBehavior;->H(Landroid/view/View;Landroid/view/View;Lrx;)F

    move-result v1

    .line 16
    iget-object v2, v12, Lcom/google/android/material/transformation/FabTransformationBehavior$b;->b:Lrx;

    invoke-direct {v8, v9, v10, v2}, Lcom/google/android/material/transformation/FabTransformationBehavior;->I(Landroid/view/View;Landroid/view/View;Lrx;)F

    move-result v2

    .line 17
    invoke-direct {v8, v1, v2, v11, v12}, Lcom/google/android/material/transformation/FabTransformationBehavior;->G(FFZLcom/google/android/material/transformation/FabTransformationBehavior$b;)Landroid/util/Pair;

    move-result-object v3

    .line 18
    iget-object v7, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Lqx;

    .line 19
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lqx;

    if-eqz v11, :cond_5

    if-nez p4, :cond_4

    neg-float v4, v1

    .line 20
    invoke-virtual {v10, v4}, Landroid/view/View;->setTranslationX(F)V

    neg-float v4, v2

    .line 21
    invoke-virtual {v10, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 22
    :cond_4
    sget-object v4, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    move/from16 v18, v15

    new-array v15, v5, [F

    const/16 v17, 0x0

    aput v6, v15, v17

    invoke-static {v10, v4, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 23
    sget-object v15, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    move-object/from16 v19, v4

    new-array v4, v5, [F

    aput v6, v4, v17

    invoke-static {v10, v15, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    neg-float v1, v1

    neg-float v2, v2

    .line 24
    invoke-direct {v8, v12, v7, v1, v6}, Lcom/google/android/material/transformation/FabTransformationBehavior;->J(Lcom/google/android/material/transformation/FabTransformationBehavior$b;Lqx;FF)F

    move-result v1

    .line 25
    invoke-direct {v8, v12, v3, v2, v6}, Lcom/google/android/material/transformation/FabTransformationBehavior;->J(Lcom/google/android/material/transformation/FabTransformationBehavior$b;Lqx;FF)F

    move-result v2

    .line 26
    iget-object v15, v8, Lcom/google/android/material/transformation/FabTransformationBehavior;->c:Landroid/graphics/Rect;

    .line 27
    invoke-virtual {v10, v15}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 28
    iget-object v6, v8, Lcom/google/android/material/transformation/FabTransformationBehavior;->d:Landroid/graphics/RectF;

    .line 29
    invoke-virtual {v6, v15}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 30
    iget-object v15, v8, Lcom/google/android/material/transformation/FabTransformationBehavior;->e:Landroid/graphics/RectF;

    .line 31
    invoke-direct {v8, v10, v15}, Lcom/google/android/material/transformation/FabTransformationBehavior;->K(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 32
    invoke-virtual {v15, v1, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 33
    invoke-virtual {v15, v6}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    .line 34
    invoke-virtual {v0, v15}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    move-object v1, v4

    move-object/from16 v4, v19

    goto :goto_1

    :cond_5
    move/from16 v18, v15

    .line 35
    sget-object v4, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v6, v5, [F

    neg-float v1, v1

    const/4 v15, 0x0

    aput v1, v6, v15

    invoke-static {v10, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 36
    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v6, v5, [F

    neg-float v2, v2

    aput v2, v6, v15

    invoke-static {v10, v1, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 37
    :goto_1
    invoke-virtual {v7, v4}, Lqx;->a(Landroid/animation/Animator;)V

    .line 38
    invoke-virtual {v3, v1}, Lqx;->a(Landroid/animation/Animator;)V

    .line 39
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v25

    .line 42
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v26

    .line 43
    iget-object v0, v12, Lcom/google/android/material/transformation/FabTransformationBehavior$b;->b:Lrx;

    invoke-direct {v8, v9, v10, v0}, Lcom/google/android/material/transformation/FabTransformationBehavior;->H(Landroid/view/View;Landroid/view/View;Lrx;)F

    move-result v0

    .line 44
    iget-object v1, v12, Lcom/google/android/material/transformation/FabTransformationBehavior$b;->b:Lrx;

    invoke-direct {v8, v9, v10, v1}, Lcom/google/android/material/transformation/FabTransformationBehavior;->I(Landroid/view/View;Landroid/view/View;Lrx;)F

    move-result v1

    .line 45
    invoke-direct {v8, v0, v1, v11, v12}, Lcom/google/android/material/transformation/FabTransformationBehavior;->G(FFZLcom/google/android/material/transformation/FabTransformationBehavior$b;)Landroid/util/Pair;

    move-result-object v2

    .line 46
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lqx;

    .line 47
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lqx;

    .line 48
    sget-object v4, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v6, v5, [F

    if-eqz v11, :cond_6

    goto :goto_2

    :cond_6
    iget v0, v8, Lcom/google/android/material/transformation/FabTransformationBehavior;->g:F

    :goto_2
    const/4 v7, 0x0

    aput v0, v6, v7

    .line 49
    invoke-static {v9, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 50
    sget-object v4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v6, v5, [F

    if-eqz v11, :cond_7

    goto :goto_3

    :cond_7
    iget v1, v8, Lcom/google/android/material/transformation/FabTransformationBehavior;->h:F

    :goto_3
    aput v1, v6, v7

    .line 51
    invoke-static {v9, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 52
    invoke-virtual {v3, v0}, Lqx;->a(Landroid/animation/Animator;)V

    .line 53
    invoke-virtual {v2, v1}, Lqx;->a(Landroid/animation/Animator;)V

    .line 54
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    instance-of v15, v10, Lcom/google/android/material/circularreveal/c;

    if-eqz v15, :cond_c

    instance-of v0, v9, Landroid/widget/ImageView;

    if-nez v0, :cond_8

    goto :goto_5

    .line 57
    :cond_8
    move-object v0, v10

    check-cast v0, Lcom/google/android/material/circularreveal/c;

    .line 58
    move-object v1, v9

    check-cast v1, Landroid/widget/ImageView;

    .line 59
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_9

    goto :goto_5

    .line 60
    :cond_9
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    const/16 v2, 0xff

    if-eqz v11, :cond_b

    if-nez p4, :cond_a

    .line 61
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 62
    :cond_a
    sget-object v2, Lmx;->b:Landroid/util/Property;

    new-array v3, v5, [I

    const/4 v4, 0x0

    aput v4, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    goto :goto_4

    :cond_b
    const/4 v4, 0x0

    .line 63
    sget-object v3, Lmx;->b:Landroid/util/Property;

    new-array v6, v5, [I

    aput v2, v6, v4

    invoke-static {v1, v3, v6}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 64
    :goto_4
    new-instance v3, Lcom/google/android/material/transformation/a;

    invoke-direct {v3, v8, v10}, Lcom/google/android/material/transformation/a;-><init>(Lcom/google/android/material/transformation/FabTransformationBehavior;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 65
    iget-object v3, v12, Lcom/google/android/material/transformation/FabTransformationBehavior$b;->a:Lpx;

    const-string v6, "iconFade"

    invoke-virtual {v3, v6}, Lpx;->f(Ljava/lang/String;)Lqx;

    move-result-object v3

    .line 66
    invoke-virtual {v3, v2}, Lqx;->a(Landroid/animation/Animator;)V

    .line 67
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    new-instance v2, Lcom/google/android/material/transformation/b;

    invoke-direct {v2, v8, v0, v1}, Lcom/google/android/material/transformation/b;-><init>(Lcom/google/android/material/transformation/FabTransformationBehavior;Lcom/google/android/material/circularreveal/c;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_c
    :goto_5
    const/4 v4, 0x0

    :goto_6
    if-nez v15, :cond_d

    const/16 v20, 0x0

    goto/16 :goto_9

    .line 69
    :cond_d
    move-object v7, v10

    check-cast v7, Lcom/google/android/material/circularreveal/c;

    .line 70
    iget-object v0, v12, Lcom/google/android/material/transformation/FabTransformationBehavior$b;->b:Lrx;

    .line 71
    iget-object v1, v8, Lcom/google/android/material/transformation/FabTransformationBehavior;->d:Landroid/graphics/RectF;

    .line 72
    iget-object v2, v8, Lcom/google/android/material/transformation/FabTransformationBehavior;->e:Landroid/graphics/RectF;

    .line 73
    invoke-direct {v8, v9, v1}, Lcom/google/android/material/transformation/FabTransformationBehavior;->K(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 74
    iget v3, v8, Lcom/google/android/material/transformation/FabTransformationBehavior;->g:F

    iget v6, v8, Lcom/google/android/material/transformation/FabTransformationBehavior;->h:F

    invoke-virtual {v1, v3, v6}, Landroid/graphics/RectF;->offset(FF)V

    .line 75
    invoke-direct {v8, v10, v2}, Lcom/google/android/material/transformation/FabTransformationBehavior;->K(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 76
    invoke-direct {v8, v9, v10, v0}, Lcom/google/android/material/transformation/FabTransformationBehavior;->H(Landroid/view/View;Landroid/view/View;Lrx;)F

    move-result v0

    neg-float v0, v0

    const/4 v3, 0x0

    .line 77
    invoke-virtual {v2, v0, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 78
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget v1, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    .line 79
    iget-object v1, v12, Lcom/google/android/material/transformation/FabTransformationBehavior$b;->b:Lrx;

    .line 80
    iget-object v2, v8, Lcom/google/android/material/transformation/FabTransformationBehavior;->d:Landroid/graphics/RectF;

    .line 81
    iget-object v3, v8, Lcom/google/android/material/transformation/FabTransformationBehavior;->e:Landroid/graphics/RectF;

    .line 82
    invoke-direct {v8, v9, v2}, Lcom/google/android/material/transformation/FabTransformationBehavior;->K(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 83
    iget v6, v8, Lcom/google/android/material/transformation/FabTransformationBehavior;->g:F

    iget v4, v8, Lcom/google/android/material/transformation/FabTransformationBehavior;->h:F

    invoke-virtual {v2, v6, v4}, Landroid/graphics/RectF;->offset(FF)V

    .line 84
    invoke-direct {v8, v10, v3}, Lcom/google/android/material/transformation/FabTransformationBehavior;->K(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 85
    invoke-direct {v8, v9, v10, v1}, Lcom/google/android/material/transformation/FabTransformationBehavior;->I(Landroid/view/View;Landroid/view/View;Lrx;)F

    move-result v1

    neg-float v1, v1

    const/4 v6, 0x0

    .line 86
    invoke-virtual {v3, v6, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 87
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget v2, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v2

    .line 88
    move-object v2, v9

    check-cast v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iget-object v3, v8, Lcom/google/android/material/transformation/FabTransformationBehavior;->c:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->r(Landroid/graphics/Rect;)Z

    .line 89
    iget-object v2, v8, Lcom/google/android/material/transformation/FabTransformationBehavior;->c:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v4, v2, v3

    .line 90
    iget-object v2, v12, Lcom/google/android/material/transformation/FabTransformationBehavior$b;->a:Lpx;

    const-string v3, "expansion"

    invoke-virtual {v2, v3}, Lpx;->f(Ljava/lang/String;)Lqx;

    move-result-object v2

    if-eqz v11, :cond_10

    if-nez p4, :cond_e

    .line 91
    new-instance v3, Lcom/google/android/material/circularreveal/c$e;

    invoke-direct {v3, v0, v1, v4}, Lcom/google/android/material/circularreveal/c$e;-><init>(FFF)V

    invoke-interface {v7, v3}, Lcom/google/android/material/circularreveal/c;->b(Lcom/google/android/material/circularreveal/c$e;)V

    :cond_e
    if-eqz p4, :cond_f

    .line 92
    invoke-interface {v7}, Lcom/google/android/material/circularreveal/c;->a()Lcom/google/android/material/circularreveal/c$e;

    move-result-object v3

    iget v3, v3, Lcom/google/android/material/circularreveal/c$e;->c:F

    move/from16 v16, v3

    goto :goto_7

    :cond_f
    move/from16 v16, v4

    :goto_7
    const/16 v23, 0x0

    const/16 v24, 0x0

    move/from16 v21, v0

    move/from16 v22, v1

    .line 93
    invoke-static/range {v21 .. v26}, Lwx;->b(FFFFFF)F

    move-result v3

    .line 94
    invoke-static {v7, v0, v1, v3}, Lcom/google/android/material/circularreveal/a;->a(Lcom/google/android/material/circularreveal/c;FFF)Landroid/animation/Animator;

    move-result-object v4

    .line 95
    new-instance v3, Lcom/google/android/material/transformation/c;

    invoke-direct {v3, v8, v7}, Lcom/google/android/material/transformation/c;-><init>(Lcom/google/android/material/transformation/FabTransformationBehavior;Lcom/google/android/material/circularreveal/c;)V

    invoke-virtual {v4, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 96
    invoke-virtual {v2}, Lqx;->c()J

    move-result-wide v18

    float-to-int v3, v0

    float-to-int v1, v1

    move-object/from16 v0, p0

    move/from16 v20, v1

    move-object/from16 v1, p2

    move-object/from16 v21, v2

    move/from16 v22, v3

    move-wide/from16 v2, v18

    move-object/from16 v17, v4

    const/4 v9, 0x0

    move/from16 v4, v22

    const/4 v9, 0x1

    move/from16 v5, v20

    const/16 v20, 0x0

    move/from16 v6, v16

    move-object/from16 v22, v7

    move-object v7, v13

    .line 97
    invoke-direct/range {v0 .. v7}, Lcom/google/android/material/transformation/FabTransformationBehavior;->L(Landroid/view/View;JIIFLjava/util/List;)V

    move-object/from16 v4, v17

    move-object/from16 v0, v21

    move-object/from16 v16, v22

    goto :goto_8

    :cond_10
    move-object/from16 v21, v2

    move-object/from16 v22, v7

    const/4 v9, 0x1

    const/16 v20, 0x0

    .line 98
    invoke-interface/range {v22 .. v22}, Lcom/google/android/material/circularreveal/c;->a()Lcom/google/android/material/circularreveal/c$e;

    move-result-object v2

    iget v6, v2, Lcom/google/android/material/circularreveal/c$e;->c:F

    .line 99
    invoke-static {v7, v0, v1, v4}, Lcom/google/android/material/circularreveal/a;->a(Lcom/google/android/material/circularreveal/c;FFF)Landroid/animation/Animator;

    move-result-object v17

    .line 100
    invoke-virtual/range {v21 .. v21}, Lqx;->c()J

    move-result-wide v2

    float-to-int v5, v0

    float-to-int v1, v1

    move-object/from16 v0, p0

    move/from16 v22, v1

    move-object/from16 v1, p2

    move v9, v4

    move v4, v5

    move v8, v5

    move/from16 v5, v22

    move-object/from16 v16, v7

    const/16 v11, 0x15

    move-object v7, v13

    .line 101
    invoke-direct/range {v0 .. v7}, Lcom/google/android/material/transformation/FabTransformationBehavior;->L(Landroid/view/View;JIIFLjava/util/List;)V

    .line 102
    invoke-virtual/range {v21 .. v21}, Lqx;->c()J

    move-result-wide v0

    .line 103
    invoke-virtual/range {v21 .. v21}, Lqx;->d()J

    move-result-wide v2

    iget-object v4, v12, Lcom/google/android/material/transformation/FabTransformationBehavior$b;->a:Lpx;

    .line 104
    invoke-virtual {v4}, Lpx;->g()J

    move-result-wide v4

    move/from16 v6, v18

    if-lt v6, v11, :cond_11

    add-long/2addr v0, v2

    cmp-long v2, v0, v4

    if-gez v2, :cond_11

    move/from16 v2, v22

    .line 105
    invoke-static {v10, v8, v2, v9, v9}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v2

    .line 106
    invoke-virtual {v2, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    sub-long/2addr v4, v0

    .line 107
    invoke-virtual {v2, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 108
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    move-object/from16 v4, v17

    move-object/from16 v0, v21

    .line 109
    :goto_8
    invoke-virtual {v0, v4}, Lqx;->a(Landroid/animation/Animator;)V

    .line 110
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    invoke-static/range {v16 .. v16}, Lcom/google/android/material/circularreveal/a;->b(Lcom/google/android/material/circularreveal/c;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_9
    if-nez v15, :cond_12

    move/from16 v2, p3

    goto :goto_c

    .line 112
    :cond_12
    move-object v0, v10

    check-cast v0, Lcom/google/android/material/circularreveal/c;

    .line 113
    invoke-static/range {p1 .. p1}, Lc3;->h(Landroid/view/View;)Landroid/content/res/ColorStateList;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 114
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v4

    goto :goto_a

    :cond_13
    const/4 v4, 0x0

    :goto_a
    const v1, 0xffffff

    and-int/2addr v1, v4

    move/from16 v2, p3

    if-eqz v2, :cond_15

    if-nez p4, :cond_14

    .line 115
    invoke-interface {v0, v4}, Lcom/google/android/material/circularreveal/c;->j(I)V

    .line 116
    :cond_14
    sget-object v3, Lcom/google/android/material/circularreveal/c$d;->a:Landroid/util/Property;

    const/4 v5, 0x1

    new-array v4, v5, [I

    const/4 v6, 0x0

    aput v1, v4, v6

    .line 117
    invoke-static {v0, v3, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto :goto_b

    :cond_15
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 118
    sget-object v1, Lcom/google/android/material/circularreveal/c$d;->a:Landroid/util/Property;

    new-array v3, v5, [I

    aput v4, v3, v6

    .line 119
    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 120
    :goto_b
    invoke-static {}, Lkx;->a()Lkx;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 121
    iget-object v1, v12, Lcom/google/android/material/transformation/FabTransformationBehavior$b;->a:Lpx;

    const-string v3, "color"

    invoke-virtual {v1, v3}, Lpx;->f(Ljava/lang/String;)Lqx;

    move-result-object v1

    .line 122
    invoke-virtual {v1, v0}, Lqx;->a(Landroid/animation/Animator;)V

    .line 123
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    :goto_c
    instance-of v0, v10, Landroid/view/ViewGroup;

    if-nez v0, :cond_16

    :goto_d
    move-object/from16 v1, p0

    :goto_e
    const/4 v6, 0x0

    goto/16 :goto_12

    :cond_16
    if-eqz v15, :cond_17

    .line 125
    sget v0, Lcom/google/android/material/circularreveal/b;->j:I

    if-nez v0, :cond_17

    goto :goto_d

    :cond_17
    const v0, 0x7f0801c6

    .line 126
    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_18

    move-object/from16 v1, p0

    .line 127
    invoke-direct {v1, v0}, Lcom/google/android/material/transformation/FabTransformationBehavior;->N(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    goto :goto_10

    :cond_18
    move-object/from16 v1, p0

    .line 128
    instance-of v0, v10, Lcom/google/android/material/transformation/TransformationChildLayout;

    if-nez v0, :cond_1a

    instance-of v0, v10, Lcom/google/android/material/transformation/TransformationChildCard;

    if-eqz v0, :cond_19

    goto :goto_f

    .line 129
    :cond_19
    invoke-direct {v1, v10}, Lcom/google/android/material/transformation/FabTransformationBehavior;->N(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    goto :goto_10

    .line 130
    :cond_1a
    :goto_f
    move-object v0, v10

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 131
    invoke-direct {v1, v0}, Lcom/google/android/material/transformation/FabTransformationBehavior;->N(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    :goto_10
    if-nez v0, :cond_1b

    goto :goto_e

    :cond_1b
    if-eqz v2, :cond_1d

    if-nez p4, :cond_1c

    .line 132
    sget-object v3, Llx;->a:Landroid/util/Property;

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 133
    :cond_1c
    sget-object v3, Llx;->a:Landroid/util/Property;

    const/4 v4, 0x1

    new-array v4, v4, [F

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    aput v5, v4, v6

    .line 134
    invoke-static {v0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto :goto_11

    :cond_1d
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 135
    sget-object v3, Llx;->a:Landroid/util/Property;

    new-array v4, v4, [F

    aput v20, v4, v6

    .line 136
    invoke-static {v0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 137
    :goto_11
    iget-object v3, v12, Lcom/google/android/material/transformation/FabTransformationBehavior$b;->a:Lpx;

    const-string v4, "contentFade"

    invoke-virtual {v3, v4}, Lpx;->f(Ljava/lang/String;)Lqx;

    move-result-object v3

    .line 138
    invoke-virtual {v3, v0}, Lqx;->a(Landroid/animation/Animator;)V

    .line 139
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    :goto_12
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 141
    invoke-static {v0, v13}, Landroidx/core/app/b;->p0(Landroid/animation/AnimatorSet;Ljava/util/List;)V

    .line 142
    new-instance v3, Lcom/google/android/material/transformation/FabTransformationBehavior$a;

    move-object/from16 v4, p1

    const/4 v5, 0x0

    invoke-direct {v3, v1, v2, v10, v4}, Lcom/google/android/material/transformation/FabTransformationBehavior$a;-><init>(Lcom/google/android/material/transformation/FabTransformationBehavior;ZLandroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 143
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_13
    if-ge v4, v2, :cond_1e

    .line 144
    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    :cond_1e
    return-object v0
.end method

.method protected abstract M(Landroid/content/Context;Z)Lcom/google/android/material/transformation/FabTransformationBehavior$b;
.end method

.method public d(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_2

    .line 2
    instance-of p1, p3, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 3
    check-cast p3, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 4
    invoke-virtual {p3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->s()I

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p2

    if-ne p1, p2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0

    .line 6
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This behavior cannot be attached to a GONE view. Set the view to INVISIBLE instead."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public f(Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;)V
    .locals 1

    .line 1
    iget v0, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->h:I

    if-nez v0, :cond_0

    const/16 v0, 0x50

    .line 2
    iput v0, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->h:I

    :cond_0
    return-void
.end method
