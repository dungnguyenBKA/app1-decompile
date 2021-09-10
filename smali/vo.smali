.class public Lvo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvo$b;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:F

.field private d:F

.field e:F

.field f:F

.field g:F

.field final h:F

.field protected i:Lzo;

.field private final j:Lap;

.field private k:Lap$a;

.field private l:Landroid/view/VelocityTracker;

.field private m:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lvo;->a:I

    .line 3
    iput v0, p0, Lvo;->b:I

    const/high16 v0, -0x40800000    # -1.0f

    .line 4
    iput v0, p0, Lvo;->c:F

    .line 5
    iput v0, p0, Lvo;->d:F

    .line 6
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lvo;->h:F

    .line 8
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lvo;->g:F

    .line 9
    new-instance v0, Lap;

    new-instance v1, Lvo$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lvo$b;-><init>(Lvo;Lvo$a;)V

    invoke-direct {v0, p1, v1}, Lap;-><init>(Landroid/content/Context;Lap$a;)V

    iput-object v0, p0, Lvo;->j:Lap;

    return-void
.end method

.method static synthetic a(Lvo;)Lap$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lvo;->k:Lap$a;

    return-object p0
.end method


# virtual methods
.method b(Landroid/view/MotionEvent;)F
    .locals 0

    const p0, 0x0

    throw p0
.end method

.method c(Landroid/view/MotionEvent;)F
    .locals 0

    const p0, 0x0

    throw p0
.end method

.method public d(Lzo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lvo;->i:Lzo;

    return-void
.end method

.method public e(Lap$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lvo;->k:Lap$a;

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    .line 1
    iget-object v0, p0, Lvo;->j:Lap;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    .line 4
    iget-boolean v2, v0, Lep;->a:Z

    if-nez v2, :cond_0

    .line 5
    invoke-virtual {v0, v1, p1}, Lap;->d(ILandroid/view/MotionEvent;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, v1, p1}, Lap;->c(ILandroid/view/MotionEvent;)V

    .line 7
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_c

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eq v0, v2, :cond_a

    const/4 v5, 0x2

    if-eq v0, v5, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/4 p1, 0x6

    if-eq v0, p1, :cond_1

    goto/16 :goto_2

    .line 8
    :cond_1
    iput v4, p0, Lvo;->b:I

    goto/16 :goto_2

    .line 9
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lvo;->b:I

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Lvo;->c:F

    .line 12
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iput p1, p0, Lvo;->d:F

    goto/16 :goto_2

    .line 13
    :cond_3
    iget-object p1, p0, Lvo;->l:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_e

    .line 14
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 15
    iput-object v3, p0, Lvo;->l:Landroid/view/VelocityTracker;

    goto/16 :goto_2

    .line 16
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v2, :cond_7

    .line 17
    invoke-virtual {p0, p1}, Lvo;->b(Landroid/view/MotionEvent;)F

    move-result v0

    .line 18
    invoke-virtual {p0, p1}, Lvo;->c(Landroid/view/MotionEvent;)F

    move-result v3

    .line 19
    iget v4, p0, Lvo;->e:F

    sub-float v4, v0, v4

    iget v5, p0, Lvo;->f:F

    sub-float v5, v3, v5

    .line 20
    iget-boolean v6, p0, Lvo;->m:Z

    if-nez v6, :cond_6

    mul-float v6, v4, v4

    mul-float v7, v5, v5

    add-float/2addr v7, v6

    float-to-double v6, v7

    .line 21
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    iget v8, p0, Lvo;->g:F

    float-to-double v8, v8

    cmpl-double v10, v6, v8

    if-ltz v10, :cond_5

    const/4 v1, 0x1

    :cond_5
    iput-boolean v1, p0, Lvo;->m:Z

    .line 22
    :cond_6
    iget-boolean v1, p0, Lvo;->m:Z

    if-eqz v1, :cond_e

    .line 23
    iget-object v1, p0, Lvo;->i:Lzo;

    invoke-interface {v1, p1, v4, v5}, Lzo;->a(Landroid/view/MotionEvent;FF)V

    .line 24
    iput v0, p0, Lvo;->e:F

    .line 25
    iput v3, p0, Lvo;->f:F

    .line 26
    iget-object v0, p0, Lvo;->l:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_e

    .line 27
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto/16 :goto_2

    .line 28
    :cond_7
    iget v0, p0, Lvo;->a:I

    if-eq v0, v4, :cond_e

    iget v3, p0, Lvo;->b:I

    if-eq v3, v4, :cond_e

    .line 29
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    .line 30
    iget v3, p0, Lvo;->a:I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    .line 31
    iget v4, p0, Lvo;->b:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 32
    iget v5, p0, Lvo;->b:I

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    .line 33
    iget v6, p0, Lvo;->e:F

    sub-float v6, v0, v6

    .line 34
    iget v7, p0, Lvo;->f:F

    sub-float v7, v3, v7

    .line 35
    iget v8, p0, Lvo;->c:F

    sub-float v8, v4, v8

    .line 36
    iget v9, p0, Lvo;->d:F

    sub-float v9, v5, v9

    .line 37
    new-instance v10, Landroid/graphics/PointF;

    iget v11, p0, Lvo;->e:F

    iget v12, p0, Lvo;->f:F

    invoke-direct {v10, v11, v12}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v11, Landroid/graphics/PointF;

    invoke-direct {v11, v0, v3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-static {v10, v11}, Landroidx/core/app/b;->f(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v10

    .line 38
    new-instance v11, Landroid/graphics/PointF;

    iget v12, p0, Lvo;->c:F

    iget v13, p0, Lvo;->d:F

    invoke-direct {v11, v12, v13}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v12, Landroid/graphics/PointF;

    invoke-direct {v12, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-static {v11, v12}, Landroidx/core/app/b;->f(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v11

    sub-float/2addr v10, v11

    .line 39
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    const/high16 v11, 0x42340000    # 45.0f

    cmpg-float v10, v10, v11

    if-gez v10, :cond_e

    add-float/2addr v6, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v6, v8

    add-float/2addr v7, v9

    div-float/2addr v7, v8

    .line 40
    iget-boolean v8, p0, Lvo;->m:Z

    if-nez v8, :cond_9

    mul-float v8, v6, v6

    mul-float v9, v7, v7

    add-float/2addr v9, v8

    float-to-double v8, v9

    .line 41
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    iget v10, p0, Lvo;->g:F

    float-to-double v10, v10

    cmpl-double v12, v8, v10

    if-ltz v12, :cond_8

    const/4 v1, 0x1

    :cond_8
    iput-boolean v1, p0, Lvo;->m:Z

    .line 42
    :cond_9
    iget-boolean v1, p0, Lvo;->m:Z

    if-eqz v1, :cond_e

    .line 43
    iget-object v1, p0, Lvo;->i:Lzo;

    invoke-interface {v1, p1, v6, v7}, Lzo;->a(Landroid/view/MotionEvent;FF)V

    .line 44
    iput v0, p0, Lvo;->e:F

    .line 45
    iput v3, p0, Lvo;->f:F

    .line 46
    iput v4, p0, Lvo;->c:F

    .line 47
    iput v5, p0, Lvo;->d:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception p1

    .line 48
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 49
    :cond_a
    iget-boolean v0, p0, Lvo;->m:Z

    if-eqz v0, :cond_b

    .line 50
    iput v4, p0, Lvo;->a:I

    .line 51
    iput v4, p0, Lvo;->b:I

    .line 52
    iget-object v0, p0, Lvo;->l:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_b

    .line 53
    invoke-virtual {p0, p1}, Lvo;->b(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lvo;->e:F

    .line 54
    invoke-virtual {p0, p1}, Lvo;->c(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lvo;->f:F

    .line 55
    iget-object v0, p0, Lvo;->l:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 56
    iget-object v0, p0, Lvo;->l:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 57
    iget-object v0, p0, Lvo;->l:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    iget-object v1, p0, Lvo;->l:Landroid/view/VelocityTracker;

    .line 58
    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v1

    .line 59
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iget v5, p0, Lvo;->h:F

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_b

    .line 60
    iget-object v5, p0, Lvo;->i:Lzo;

    iget v7, p0, Lvo;->e:F

    iget v8, p0, Lvo;->f:F

    neg-float v9, v0

    neg-float v10, v1

    move-object v6, p1

    invoke-interface/range {v5 .. v10}, Lzo;->b(Landroid/view/MotionEvent;FFFF)V

    .line 61
    :cond_b
    iget-object p1, p0, Lvo;->l:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_e

    .line 62
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 63
    iput-object v3, p0, Lvo;->l:Landroid/view/VelocityTracker;

    goto :goto_2

    .line 64
    :cond_c
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lvo;->l:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_d

    .line 65
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_1

    :cond_d
    const-string v0, "CupcakeGestureDetector"

    const-string v3, "Velocity tracker is null"

    .line 66
    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 68
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lvo;->a:I

    .line 69
    invoke-virtual {p0, p1}, Lvo;->b(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lvo;->e:F

    .line 70
    invoke-virtual {p0, p1}, Lvo;->c(Landroid/view/MotionEvent;)F

    move-result p1

    iput p1, p0, Lvo;->f:F

    .line 71
    iput-boolean v1, p0, Lvo;->m:Z

    :cond_e
    :goto_2
    return v2
.end method
