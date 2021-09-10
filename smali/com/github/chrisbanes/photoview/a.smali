.class Lcom/github/chrisbanes/photoview/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private final c:Landroid/view/ScaleGestureDetector;

.field private d:Landroid/view/VelocityTracker;

.field private e:Z

.field private f:F

.field private g:F

.field private final h:F

.field private final i:F

.field private j:Lcom/github/chrisbanes/photoview/b;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/github/chrisbanes/photoview/b;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/github/chrisbanes/photoview/a;->a:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/github/chrisbanes/photoview/a;->b:I

    .line 4
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/github/chrisbanes/photoview/a;->i:F

    .line 6
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/github/chrisbanes/photoview/a;->h:F

    .line 7
    iput-object p2, p0, Lcom/github/chrisbanes/photoview/a;->j:Lcom/github/chrisbanes/photoview/b;

    .line 8
    new-instance p2, Lcom/github/chrisbanes/photoview/a$a;

    invoke-direct {p2, p0}, Lcom/github/chrisbanes/photoview/a$a;-><init>(Lcom/github/chrisbanes/photoview/a;)V

    .line 9
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-direct {v0, p1, p2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/github/chrisbanes/photoview/a;->c:Landroid/view/ScaleGestureDetector;

    return-void
.end method

.method static synthetic a(Lcom/github/chrisbanes/photoview/a;)Lcom/github/chrisbanes/photoview/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/github/chrisbanes/photoview/a;->j:Lcom/github/chrisbanes/photoview/b;

    return-object p0
.end method

.method private b(Landroid/view/MotionEvent;)F
    .locals 1

    .line 1
    :try_start_0
    iget v0, p0, Lcom/github/chrisbanes/photoview/a;->b:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 2
    :catch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    return p1
.end method

.method private c(Landroid/view/MotionEvent;)F
    .locals 1

    .line 1
    :try_start_0
    iget v0, p0, Lcom/github/chrisbanes/photoview/a;->b:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 2
    :catch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    return p1
.end method

.method private g(Landroid/view/MotionEvent;)Z
    .locals 13

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_d

    const/4 v4, 0x0

    if-eq v0, v2, :cond_b

    const/4 v5, 0x2

    if-eq v0, v5, :cond_3

    const/4 v5, 0x3

    if-eq v0, v5, :cond_2

    const/4 v4, 0x6

    if-eq v0, v4, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v4, 0xff00

    and-int/2addr v0, v4

    shr-int/lit8 v0, v0, 0x8

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 4
    iget v5, p0, Lcom/github/chrisbanes/photoview/a;->a:I

    if-ne v4, v5, :cond_f

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 5
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Lcom/github/chrisbanes/photoview/a;->a:I

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    iput v4, p0, Lcom/github/chrisbanes/photoview/a;->f:F

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/github/chrisbanes/photoview/a;->g:F

    goto/16 :goto_3

    .line 8
    :cond_2
    iput v1, p0, Lcom/github/chrisbanes/photoview/a;->a:I

    .line 9
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/a;->d:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_f

    .line 10
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 11
    iput-object v4, p0, Lcom/github/chrisbanes/photoview/a;->d:Landroid/view/VelocityTracker;

    goto/16 :goto_3

    .line 12
    :cond_3
    invoke-direct {p0, p1}, Lcom/github/chrisbanes/photoview/a;->b(Landroid/view/MotionEvent;)F

    move-result v0

    .line 13
    invoke-direct {p0, p1}, Lcom/github/chrisbanes/photoview/a;->c(Landroid/view/MotionEvent;)F

    move-result v4

    .line 14
    iget v6, p0, Lcom/github/chrisbanes/photoview/a;->f:F

    sub-float v6, v0, v6

    iget v7, p0, Lcom/github/chrisbanes/photoview/a;->g:F

    sub-float v7, v4, v7

    .line 15
    iget-boolean v8, p0, Lcom/github/chrisbanes/photoview/a;->e:Z

    if-nez v8, :cond_5

    mul-float v8, v6, v6

    mul-float v9, v7, v7

    add-float/2addr v9, v8

    float-to-double v8, v9

    .line 16
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    iget v10, p0, Lcom/github/chrisbanes/photoview/a;->h:F

    float-to-double v10, v10

    cmpl-double v12, v8, v10

    if-ltz v12, :cond_4

    const/4 v8, 0x1

    goto :goto_1

    :cond_4
    const/4 v8, 0x0

    :goto_1
    iput-boolean v8, p0, Lcom/github/chrisbanes/photoview/a;->e:Z

    .line 17
    :cond_5
    iget-boolean v8, p0, Lcom/github/chrisbanes/photoview/a;->e:Z

    if-eqz v8, :cond_f

    .line 18
    iget-object v8, p0, Lcom/github/chrisbanes/photoview/a;->j:Lcom/github/chrisbanes/photoview/b;

    check-cast v8, Lcom/github/chrisbanes/photoview/c$a;

    .line 19
    iget-object v9, v8, Lcom/github/chrisbanes/photoview/c$a;->a:Lcom/github/chrisbanes/photoview/c;

    invoke-static {v9}, Lcom/github/chrisbanes/photoview/c;->a(Lcom/github/chrisbanes/photoview/c;)Lcom/github/chrisbanes/photoview/a;

    move-result-object v9

    invoke-virtual {v9}, Lcom/github/chrisbanes/photoview/a;->e()Z

    move-result v9

    if-eqz v9, :cond_6

    goto :goto_2

    .line 20
    :cond_6
    iget-object v9, v8, Lcom/github/chrisbanes/photoview/c$a;->a:Lcom/github/chrisbanes/photoview/c;

    .line 21
    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iget-object v9, v8, Lcom/github/chrisbanes/photoview/c$a;->a:Lcom/github/chrisbanes/photoview/c;

    invoke-static {v9}, Lcom/github/chrisbanes/photoview/c;->g(Lcom/github/chrisbanes/photoview/c;)Landroid/graphics/Matrix;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 23
    iget-object v7, v8, Lcom/github/chrisbanes/photoview/c$a;->a:Lcom/github/chrisbanes/photoview/c;

    invoke-static {v7}, Lcom/github/chrisbanes/photoview/c;->k(Lcom/github/chrisbanes/photoview/c;)V

    .line 24
    iget-object v7, v8, Lcom/github/chrisbanes/photoview/c$a;->a:Lcom/github/chrisbanes/photoview/c;

    invoke-static {v7}, Lcom/github/chrisbanes/photoview/c;->l(Lcom/github/chrisbanes/photoview/c;)Landroid/widget/ImageView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    .line 25
    iget-object v9, v8, Lcom/github/chrisbanes/photoview/c$a;->a:Lcom/github/chrisbanes/photoview/c;

    invoke-static {v9}, Lcom/github/chrisbanes/photoview/c;->m(Lcom/github/chrisbanes/photoview/c;)Z

    move-result v9

    if-eqz v9, :cond_9

    iget-object v9, v8, Lcom/github/chrisbanes/photoview/c$a;->a:Lcom/github/chrisbanes/photoview/c;

    invoke-static {v9}, Lcom/github/chrisbanes/photoview/c;->a(Lcom/github/chrisbanes/photoview/c;)Lcom/github/chrisbanes/photoview/a;

    move-result-object v9

    invoke-virtual {v9}, Lcom/github/chrisbanes/photoview/a;->e()Z

    move-result v9

    if-nez v9, :cond_9

    iget-object v9, v8, Lcom/github/chrisbanes/photoview/c$a;->a:Lcom/github/chrisbanes/photoview/c;

    invoke-static {v9}, Lcom/github/chrisbanes/photoview/c;->n(Lcom/github/chrisbanes/photoview/c;)Z

    move-result v9

    if-nez v9, :cond_9

    .line 26
    iget-object v9, v8, Lcom/github/chrisbanes/photoview/c$a;->a:Lcom/github/chrisbanes/photoview/c;

    invoke-static {v9}, Lcom/github/chrisbanes/photoview/c;->o(Lcom/github/chrisbanes/photoview/c;)I

    move-result v9

    if-eq v9, v5, :cond_8

    iget-object v5, v8, Lcom/github/chrisbanes/photoview/c$a;->a:Lcom/github/chrisbanes/photoview/c;

    .line 27
    invoke-static {v5}, Lcom/github/chrisbanes/photoview/c;->o(Lcom/github/chrisbanes/photoview/c;)I

    move-result v5

    if-nez v5, :cond_7

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v5, v6, v5

    if-gez v5, :cond_8

    :cond_7
    iget-object v5, v8, Lcom/github/chrisbanes/photoview/c$a;->a:Lcom/github/chrisbanes/photoview/c;

    .line 28
    invoke-static {v5}, Lcom/github/chrisbanes/photoview/c;->o(Lcom/github/chrisbanes/photoview/c;)I

    move-result v5

    if-ne v5, v2, :cond_a

    const/high16 v5, -0x40800000    # -1.0f

    cmpg-float v5, v6, v5

    if-gtz v5, :cond_a

    :cond_8
    if-eqz v7, :cond_a

    .line 29
    invoke-interface {v7, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_2

    :cond_9
    if-eqz v7, :cond_a

    .line 30
    invoke-interface {v7, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 31
    :cond_a
    :goto_2
    iput v0, p0, Lcom/github/chrisbanes/photoview/a;->f:F

    .line 32
    iput v4, p0, Lcom/github/chrisbanes/photoview/a;->g:F

    .line 33
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/a;->d:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_f

    .line 34
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto/16 :goto_3

    .line 35
    :cond_b
    iput v1, p0, Lcom/github/chrisbanes/photoview/a;->a:I

    .line 36
    iget-boolean v0, p0, Lcom/github/chrisbanes/photoview/a;->e:Z

    if-eqz v0, :cond_c

    .line 37
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/a;->d:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_c

    .line 38
    invoke-direct {p0, p1}, Lcom/github/chrisbanes/photoview/a;->b(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lcom/github/chrisbanes/photoview/a;->f:F

    .line 39
    invoke-direct {p0, p1}, Lcom/github/chrisbanes/photoview/a;->c(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lcom/github/chrisbanes/photoview/a;->g:F

    .line 40
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/a;->d:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 41
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/a;->d:Landroid/view/VelocityTracker;

    const/16 v5, 0x3e8

    invoke-virtual {v0, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 42
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/a;->d:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    iget-object v5, p0, Lcom/github/chrisbanes/photoview/a;->d:Landroid/view/VelocityTracker;

    .line 43
    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v5

    .line 44
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iget v7, p0, Lcom/github/chrisbanes/photoview/a;->i:F

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_c

    .line 45
    iget-object v6, p0, Lcom/github/chrisbanes/photoview/a;->j:Lcom/github/chrisbanes/photoview/b;

    neg-float v0, v0

    neg-float v5, v5

    check-cast v6, Lcom/github/chrisbanes/photoview/c$a;

    .line 46
    iget-object v7, v6, Lcom/github/chrisbanes/photoview/c$a;->a:Lcom/github/chrisbanes/photoview/c;

    new-instance v8, Lcom/github/chrisbanes/photoview/c$f;

    invoke-static {v7}, Lcom/github/chrisbanes/photoview/c;->l(Lcom/github/chrisbanes/photoview/c;)Landroid/widget/ImageView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v7, v9}, Lcom/github/chrisbanes/photoview/c$f;-><init>(Lcom/github/chrisbanes/photoview/c;Landroid/content/Context;)V

    invoke-static {v7, v8}, Lcom/github/chrisbanes/photoview/c;->q(Lcom/github/chrisbanes/photoview/c;Lcom/github/chrisbanes/photoview/c$f;)Lcom/github/chrisbanes/photoview/c$f;

    .line 47
    iget-object v7, v6, Lcom/github/chrisbanes/photoview/c$a;->a:Lcom/github/chrisbanes/photoview/c;

    invoke-static {v7}, Lcom/github/chrisbanes/photoview/c;->p(Lcom/github/chrisbanes/photoview/c;)Lcom/github/chrisbanes/photoview/c$f;

    move-result-object v7

    iget-object v8, v6, Lcom/github/chrisbanes/photoview/c$a;->a:Lcom/github/chrisbanes/photoview/c;

    invoke-static {v8}, Lcom/github/chrisbanes/photoview/c;->l(Lcom/github/chrisbanes/photoview/c;)Landroid/widget/ImageView;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/github/chrisbanes/photoview/c;->r(Lcom/github/chrisbanes/photoview/c;Landroid/widget/ImageView;)I

    move-result v8

    iget-object v9, v6, Lcom/github/chrisbanes/photoview/c$a;->a:Lcom/github/chrisbanes/photoview/c;

    .line 48
    invoke-static {v9}, Lcom/github/chrisbanes/photoview/c;->l(Lcom/github/chrisbanes/photoview/c;)Landroid/widget/ImageView;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/github/chrisbanes/photoview/c;->b(Lcom/github/chrisbanes/photoview/c;Landroid/widget/ImageView;)I

    move-result v9

    float-to-int v0, v0

    float-to-int v5, v5

    .line 49
    invoke-virtual {v7, v8, v9, v0, v5}, Lcom/github/chrisbanes/photoview/c$f;->b(IIII)V

    .line 50
    iget-object v0, v6, Lcom/github/chrisbanes/photoview/c$a;->a:Lcom/github/chrisbanes/photoview/c;

    invoke-static {v0}, Lcom/github/chrisbanes/photoview/c;->l(Lcom/github/chrisbanes/photoview/c;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v5, v6, Lcom/github/chrisbanes/photoview/c$a;->a:Lcom/github/chrisbanes/photoview/c;

    invoke-static {v5}, Lcom/github/chrisbanes/photoview/c;->p(Lcom/github/chrisbanes/photoview/c;)Lcom/github/chrisbanes/photoview/c$f;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 51
    :cond_c
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/a;->d:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_f

    .line 52
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 53
    iput-object v4, p0, Lcom/github/chrisbanes/photoview/a;->d:Landroid/view/VelocityTracker;

    goto :goto_3

    .line 54
    :cond_d
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/github/chrisbanes/photoview/a;->a:I

    .line 55
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/github/chrisbanes/photoview/a;->d:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_e

    .line 56
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 57
    :cond_e
    invoke-direct {p0, p1}, Lcom/github/chrisbanes/photoview/a;->b(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lcom/github/chrisbanes/photoview/a;->f:F

    .line 58
    invoke-direct {p0, p1}, Lcom/github/chrisbanes/photoview/a;->c(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lcom/github/chrisbanes/photoview/a;->g:F

    .line 59
    iput-boolean v3, p0, Lcom/github/chrisbanes/photoview/a;->e:Z

    .line 60
    :cond_f
    :goto_3
    iget v0, p0, Lcom/github/chrisbanes/photoview/a;->a:I

    if-eq v0, v1, :cond_10

    move v3, v0

    .line 61
    :cond_10
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result p1

    iput p1, p0, Lcom/github/chrisbanes/photoview/a;->b:I

    return v2
.end method


# virtual methods
.method public d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/github/chrisbanes/photoview/a;->e:Z

    return v0
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/a;->c:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    return v0
.end method

.method public f(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/a;->c:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2
    invoke-direct {p0, p1}, Lcom/github/chrisbanes/photoview/a;->g(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 p1, 0x1

    return p1
.end method
