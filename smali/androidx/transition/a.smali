.class Landroidx/transition/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/reflect/Method;

.field private static b:Ljava/lang/reflect/Method;

.field private static c:Z


# direct methods
.method static a(Landroid/view/View;Landroidx/transition/w;IIFFFFLandroid/animation/TimeInterpolator;Landroidx/transition/Transition;)Landroid/animation/Animator;
    .locals 14

    move-object v0, p0

    move-object v1, p1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result v2

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v3

    .line 3
    iget-object v4, v1, Landroidx/transition/w;->b:Landroid/view/View;

    const v5, 0x7f0802cd

    invoke-virtual {v4, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    .line 4
    aget v7, v4, v6

    sub-int v7, v7, p2

    int-to-float v7, v7

    add-float/2addr v7, v2

    .line 5
    aget v4, v4, v5

    sub-int v4, v4, p3

    int-to-float v4, v4

    add-float/2addr v4, v3

    goto :goto_0

    :cond_0
    move/from16 v7, p4

    move/from16 v4, p5

    :goto_0
    sub-float v8, v7, v2

    .line 6
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    add-int v8, v8, p2

    sub-float v9, v4, v3

    .line 7
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    add-int v9, v9, p3

    .line 8
    invoke-virtual {p0, v7}, Landroid/view/View;->setTranslationX(F)V

    .line 9
    invoke-virtual {p0, v4}, Landroid/view/View;->setTranslationY(F)V

    cmpl-float v10, v7, p6

    if-nez v10, :cond_1

    cmpl-float v10, v4, p7

    if-nez v10, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    const/4 v10, 0x2

    new-array v11, v10, [Landroid/animation/PropertyValuesHolder;

    .line 10
    sget-object v12, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v13, v10, [F

    aput v7, v13, v6

    aput p6, v13, v5

    .line 11
    invoke-static {v12, v13}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    aput-object v7, v11, v6

    sget-object v7, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v10, v10, [F

    aput v4, v10, v6

    aput p7, v10, v5

    .line 12
    invoke-static {v7, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    aput-object v4, v11, v5

    .line 13
    invoke-static {p0, v11}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 14
    new-instance v5, Landroidx/transition/y;

    iget-object v1, v1, Landroidx/transition/w;->b:Landroid/view/View;

    move-object p1, v5

    move-object/from16 p2, p0

    move-object/from16 p3, v1

    move/from16 p4, v8

    move/from16 p5, v9

    move/from16 p6, v2

    move/from16 p7, v3

    invoke-direct/range {p1 .. p7}, Landroidx/transition/y;-><init>(Landroid/view/View;Landroid/view/View;IIFF)V

    move-object/from16 v0, p9

    .line 15
    invoke-virtual {v0, v5}, Landroidx/transition/Transition;->a(Landroidx/transition/Transition$d;)Landroidx/transition/Transition;

    .line 16
    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 17
    invoke-virtual {v4, v5}, Landroid/animation/Animator;->addPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V

    move-object/from16 v0, p8

    .line 18
    invoke-virtual {v4, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v4
.end method

.method static b(Landroid/graphics/Canvas;Z)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SoonBlockedPrivateApi"
        }
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    goto :goto_2

    :cond_0
    const/16 v1, 0x1d

    if-lt v0, v1, :cond_2

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/graphics/Canvas;->enableZ()V

    goto :goto_2

    .line 3
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Canvas;->disableZ()V

    goto :goto_2

    :cond_2
    const/16 v1, 0x1c

    if-eq v0, v1, :cond_6

    .line 4
    sget-boolean v0, Landroidx/transition/a;->c:Z

    const/4 v1, 0x0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 5
    :try_start_0
    const-class v2, Landroid/graphics/Canvas;

    const-string v3, "insertReorderBarrier"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Landroidx/transition/a;->a:Ljava/lang/reflect/Method;

    .line 6
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 7
    const-class v2, Landroid/graphics/Canvas;

    const-string v3, "insertInorderBarrier"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Landroidx/transition/a;->b:Ljava/lang/reflect/Method;

    .line 8
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    :catch_0
    sput-boolean v0, Landroidx/transition/a;->c:Z

    :cond_3
    if-eqz p1, :cond_4

    .line 10
    :try_start_1
    sget-object v0, Landroidx/transition/a;->a:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_4

    new-array v2, v1, [Ljava/lang/Object;

    .line 11
    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :cond_4
    :goto_0
    if-nez p1, :cond_5

    .line 12
    sget-object p1, Landroidx/transition/a;->b:Ljava/lang/reflect/Method;

    if-eqz p1, :cond_5

    new-array v0, v1, [Ljava/lang/Object;

    .line 13
    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 14
    :goto_1
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_2
    :cond_5
    :goto_2
    return-void

    .line 15
    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This method doesn\'t work on Pie!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static c(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroid/util/Property<",
            "TT;",
            "Landroid/graphics/PointF;",
            ">;",
            "Landroid/graphics/Path;",
            ")",
            "Landroid/animation/ObjectAnimator;"
        }
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, v0, p2}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Landroidx/transition/l;

    invoke-direct {v0, p1, p2}, Landroidx/transition/l;-><init>(Landroid/util/Property;Landroid/graphics/Path;)V

    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {p0, v0, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static d(Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/PropertyValuesHolder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Property<",
            "*",
            "Landroid/graphics/PointF;",
            ">;",
            "Landroid/graphics/Path;",
            ")",
            "Landroid/animation/PropertyValuesHolder;"
        }
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0, p1}, Landroid/animation/PropertyValuesHolder;->ofObject(Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Landroidx/transition/l;

    invoke-direct {v0, p0, p1}, Landroidx/transition/l;-><init>(Landroid/util/Property;Landroid/graphics/Path;)V

    const/4 p0, 0x2

    new-array p0, p0, [F

    fill-array-data p0, :array_0

    invoke-static {v0, p0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    return-object p0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
