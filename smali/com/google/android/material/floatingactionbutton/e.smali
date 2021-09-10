.class Lcom/google/android/material/floatingactionbutton/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/floatingactionbutton/e$d;,
        Lcom/google/android/material/floatingactionbutton/e$f;,
        Lcom/google/android/material/floatingactionbutton/e$e;,
        Lcom/google/android/material/floatingactionbutton/e$i;,
        Lcom/google/android/material/floatingactionbutton/e$j;,
        Lcom/google/android/material/floatingactionbutton/e$h;,
        Lcom/google/android/material/floatingactionbutton/e$g;
    }
.end annotation


# static fields
.field static final E:Landroid/animation/TimeInterpolator;

.field static final F:[I

.field static final G:[I

.field static final H:[I

.field static final I:[I

.field static final J:[I

.field static final K:[I


# instance fields
.field private final A:Landroid/graphics/RectF;

.field private final B:Landroid/graphics/RectF;

.field private final C:Landroid/graphics/Matrix;

.field private D:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field a:Lqy;

.field b:Lmy;

.field c:Landroid/graphics/drawable/Drawable;

.field d:Lcom/google/android/material/floatingactionbutton/c;

.field e:Landroid/graphics/drawable/Drawable;

.field f:Z

.field g:F

.field h:F

.field i:F

.field j:I

.field private final k:Lcom/google/android/material/internal/f;

.field private l:Lpx;

.field private m:Lpx;

.field private n:Landroid/animation/Animator;

.field private o:Lpx;

.field private p:Lpx;

.field private q:F

.field private r:F

.field private s:I

.field private t:I

.field private u:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation
.end field

.field private v:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation
.end field

.field private w:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/material/floatingactionbutton/e$g;",
            ">;"
        }
    .end annotation
.end field

.field final x:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

.field final y:Lfy;

.field private final z:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljx;->c:Landroid/animation/TimeInterpolator;

    sput-object v0, Lcom/google/android/material/floatingactionbutton/e;->E:Landroid/animation/TimeInterpolator;

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 2
    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/android/material/floatingactionbutton/e;->F:[I

    const/4 v1, 0x3

    new-array v1, v1, [I

    .line 3
    fill-array-data v1, :array_1

    sput-object v1, Lcom/google/android/material/floatingactionbutton/e;->G:[I

    new-array v1, v0, [I

    .line 4
    fill-array-data v1, :array_2

    sput-object v1, Lcom/google/android/material/floatingactionbutton/e;->H:[I

    new-array v0, v0, [I

    .line 5
    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/android/material/floatingactionbutton/e;->I:[I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x101009e

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 6
    sput-object v0, Lcom/google/android/material/floatingactionbutton/e;->J:[I

    new-array v0, v2, [I

    .line 7
    sput-object v0, Lcom/google/android/material/floatingactionbutton/e;->K:[I

    return-void

    :array_0
    .array-data 4
        0x10100a7
        0x101009e
    .end array-data

    :array_1
    .array-data 4
        0x1010367
        0x101009c
        0x101009e
    .end array-data

    :array_2
    .array-data 4
        0x101009c
        0x101009e
    .end array-data

    :array_3
    .array-data 4
        0x1010367
        0x101009e
    .end array-data
.end method

.method constructor <init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Lfy;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    iput v0, p0, Lcom/google/android/material/floatingactionbutton/e;->r:F

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/google/android/material/floatingactionbutton/e;->t:I

    .line 4
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/e;->z:Landroid/graphics/Rect;

    .line 5
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/e;->A:Landroid/graphics/RectF;

    .line 6
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/e;->B:Landroid/graphics/RectF;

    .line 7
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/e;->C:Landroid/graphics/Matrix;

    .line 8
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/e;->x:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 9
    iput-object p2, p0, Lcom/google/android/material/floatingactionbutton/e;->y:Lfy;

    .line 10
    new-instance p2, Lcom/google/android/material/internal/f;

    invoke-direct {p2}, Lcom/google/android/material/internal/f;-><init>()V

    iput-object p2, p0, Lcom/google/android/material/floatingactionbutton/e;->k:Lcom/google/android/material/internal/f;

    .line 11
    sget-object v0, Lcom/google/android/material/floatingactionbutton/e;->F:[I

    new-instance v1, Lcom/google/android/material/floatingactionbutton/e$f;

    invoke-direct {v1, p0}, Lcom/google/android/material/floatingactionbutton/e$f;-><init>(Lcom/google/android/material/floatingactionbutton/e;)V

    .line 12
    invoke-direct {p0, v1}, Lcom/google/android/material/floatingactionbutton/e;->i(Lcom/google/android/material/floatingactionbutton/e$j;)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 13
    invoke-virtual {p2, v0, v1}, Lcom/google/android/material/internal/f;->a([ILandroid/animation/ValueAnimator;)V

    .line 14
    sget-object v0, Lcom/google/android/material/floatingactionbutton/e;->G:[I

    new-instance v1, Lcom/google/android/material/floatingactionbutton/e$e;

    invoke-direct {v1, p0}, Lcom/google/android/material/floatingactionbutton/e$e;-><init>(Lcom/google/android/material/floatingactionbutton/e;)V

    .line 15
    invoke-direct {p0, v1}, Lcom/google/android/material/floatingactionbutton/e;->i(Lcom/google/android/material/floatingactionbutton/e$j;)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 16
    invoke-virtual {p2, v0, v1}, Lcom/google/android/material/internal/f;->a([ILandroid/animation/ValueAnimator;)V

    .line 17
    sget-object v0, Lcom/google/android/material/floatingactionbutton/e;->H:[I

    new-instance v1, Lcom/google/android/material/floatingactionbutton/e$e;

    invoke-direct {v1, p0}, Lcom/google/android/material/floatingactionbutton/e$e;-><init>(Lcom/google/android/material/floatingactionbutton/e;)V

    .line 18
    invoke-direct {p0, v1}, Lcom/google/android/material/floatingactionbutton/e;->i(Lcom/google/android/material/floatingactionbutton/e$j;)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 19
    invoke-virtual {p2, v0, v1}, Lcom/google/android/material/internal/f;->a([ILandroid/animation/ValueAnimator;)V

    .line 20
    sget-object v0, Lcom/google/android/material/floatingactionbutton/e;->I:[I

    new-instance v1, Lcom/google/android/material/floatingactionbutton/e$e;

    invoke-direct {v1, p0}, Lcom/google/android/material/floatingactionbutton/e$e;-><init>(Lcom/google/android/material/floatingactionbutton/e;)V

    .line 21
    invoke-direct {p0, v1}, Lcom/google/android/material/floatingactionbutton/e;->i(Lcom/google/android/material/floatingactionbutton/e$j;)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 22
    invoke-virtual {p2, v0, v1}, Lcom/google/android/material/internal/f;->a([ILandroid/animation/ValueAnimator;)V

    .line 23
    sget-object v0, Lcom/google/android/material/floatingactionbutton/e;->J:[I

    new-instance v1, Lcom/google/android/material/floatingactionbutton/e$i;

    invoke-direct {v1, p0}, Lcom/google/android/material/floatingactionbutton/e$i;-><init>(Lcom/google/android/material/floatingactionbutton/e;)V

    .line 24
    invoke-direct {p0, v1}, Lcom/google/android/material/floatingactionbutton/e;->i(Lcom/google/android/material/floatingactionbutton/e$j;)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 25
    invoke-virtual {p2, v0, v1}, Lcom/google/android/material/internal/f;->a([ILandroid/animation/ValueAnimator;)V

    .line 26
    sget-object v0, Lcom/google/android/material/floatingactionbutton/e;->K:[I

    new-instance v1, Lcom/google/android/material/floatingactionbutton/e$d;

    invoke-direct {v1, p0}, Lcom/google/android/material/floatingactionbutton/e$d;-><init>(Lcom/google/android/material/floatingactionbutton/e;)V

    .line 27
    invoke-direct {p0, v1}, Lcom/google/android/material/floatingactionbutton/e;->i(Lcom/google/android/material/floatingactionbutton/e$j;)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 28
    invoke-virtual {p2, v0, v1}, Lcom/google/android/material/internal/f;->a([ILandroid/animation/ValueAnimator;)V

    .line 29
    invoke-virtual {p1}, Landroid/widget/ImageButton;->getRotation()F

    move-result p1

    iput p1, p0, Lcom/google/android/material/floatingactionbutton/e;->q:F

    return-void
.end method

.method private E()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/e;->x:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 2
    sget v1, Lc3;->g:I

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->isLaidOut()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/e;->x:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic a(Lcom/google/android/material/floatingactionbutton/e;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/floatingactionbutton/e;->t:I

    return p1
.end method

.method static synthetic b(Lcom/google/android/material/floatingactionbutton/e;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/e;->n:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic c(Lcom/google/android/material/floatingactionbutton/e;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/floatingactionbutton/e;->r:F

    return p1
.end method

.method private g(FLandroid/graphics/Matrix;)V
    .locals 5

    .line 1
    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    .line 2
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/e;->x:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget v1, p0, Lcom/google/android/material/floatingactionbutton/e;->s:I

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/e;->A:Landroid/graphics/RectF;

    .line 5
    iget-object v2, p0, Lcom/google/android/material/floatingactionbutton/e;->B:Landroid/graphics/RectF;

    .line 6
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v3, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 7
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/e;->s:I

    int-to-float v3, v0

    int-to-float v0, v0

    invoke-virtual {v2, v4, v4, v3, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 8
    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p2, v1, v2, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 9
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/e;->s:I

    int-to-float v1, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-virtual {p2, p1, p1, v1, v0}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    :cond_0
    return-void
.end method

.method private h(Lpx;FFF)Landroid/animation/AnimatorSet;
    .locals 8

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/e;->x:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x1

    new-array v4, v3, [F

    const/4 v5, 0x0

    aput p2, v4, v5

    invoke-static {v1, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    const-string v1, "opacity"

    .line 3
    invoke-virtual {p1, v1}, Lpx;->f(Ljava/lang/String;)Lqx;

    move-result-object v1

    invoke-virtual {v1, p2}, Lqx;->a(Landroid/animation/Animator;)V

    .line 4
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object p2, p0, Lcom/google/android/material/floatingactionbutton/e;->x:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    sget-object v1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v2, v3, [F

    aput p3, v2, v5

    invoke-static {p2, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    const-string v1, "scale"

    .line 6
    invoke-virtual {p1, v1}, Lpx;->f(Ljava/lang/String;)Lqx;

    move-result-object v2

    invoke-virtual {v2, p2}, Lqx;->a(Landroid/animation/Animator;)V

    .line 7
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-eq v2, v4, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    new-instance v6, Lcom/google/android/material/floatingactionbutton/f;

    invoke-direct {v6, p0}, Lcom/google/android/material/floatingactionbutton/f;-><init>(Lcom/google/android/material/floatingactionbutton/e;)V

    invoke-virtual {p2, v6}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 9
    :goto_0
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object p2, p0, Lcom/google/android/material/floatingactionbutton/e;->x:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    sget-object v6, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v7, v3, [F

    aput p3, v7, v5

    invoke-static {p2, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    .line 11
    invoke-virtual {p1, v1}, Lpx;->f(Ljava/lang/String;)Lqx;

    move-result-object p3

    invoke-virtual {p3, p2}, Lqx;->a(Landroid/animation/Animator;)V

    if-eq v2, v4, :cond_1

    goto :goto_1

    .line 12
    :cond_1
    new-instance p3, Lcom/google/android/material/floatingactionbutton/f;

    invoke-direct {p3, p0}, Lcom/google/android/material/floatingactionbutton/f;-><init>(Lcom/google/android/material/floatingactionbutton/e;)V

    invoke-virtual {p2, p3}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 13
    :goto_1
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    iget-object p2, p0, Lcom/google/android/material/floatingactionbutton/e;->C:Landroid/graphics/Matrix;

    invoke-direct {p0, p4, p2}, Lcom/google/android/material/floatingactionbutton/e;->g(FLandroid/graphics/Matrix;)V

    .line 15
    iget-object p2, p0, Lcom/google/android/material/floatingactionbutton/e;->x:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    new-instance p3, Lnx;

    invoke-direct {p3}, Lnx;-><init>()V

    new-instance p4, Lcom/google/android/material/floatingactionbutton/e$c;

    invoke-direct {p4, p0}, Lcom/google/android/material/floatingactionbutton/e$c;-><init>(Lcom/google/android/material/floatingactionbutton/e;)V

    new-array v1, v3, [Landroid/graphics/Matrix;

    new-instance v2, Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/google/android/material/floatingactionbutton/e;->C:Landroid/graphics/Matrix;

    invoke-direct {v2, v3}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    aput-object v2, v1, v5

    .line 16
    invoke-static {p2, p3, p4, v1}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object p2

    const-string p3, "iconScale"

    .line 17
    invoke-virtual {p1, p3}, Lpx;->f(Ljava/lang/String;)Lqx;

    move-result-object p1

    invoke-virtual {p1, p2}, Lqx;->a(Landroid/animation/Animator;)V

    .line 18
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 20
    invoke-static {p1, v0}, Landroidx/core/app/b;->p0(Landroid/animation/AnimatorSet;Ljava/util/List;)V

    return-object p1
.end method

.method private i(Lcom/google/android/material/floatingactionbutton/e$j;)Landroid/animation/ValueAnimator;
    .locals 3

    .line 1
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 2
    sget-object v1, Lcom/google/android/material/floatingactionbutton/e;->E:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0x64

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 4
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 5
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 6
    fill-array-data p1, :array_0

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method final A(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/e;->s:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/google/android/material/floatingactionbutton/e;->s:I

    .line 3
    iget p1, p0, Lcom/google/android/material/floatingactionbutton/e;->r:F

    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/e;->z(F)V

    :cond_0
    return-void
.end method

.method final B(Lqy;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/e;->a:Lqy;

    .line 2
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/e;->b:Lmy;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lmy;->e(Lqy;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/e;->c:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lty;

    if-eqz v1, :cond_1

    .line 5
    check-cast v0, Lty;

    invoke-interface {v0, p1}, Lty;->e(Lqy;)V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/e;->d:Lcom/google/android/material/floatingactionbutton/c;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0, p1}, Lcom/google/android/material/floatingactionbutton/c;->e(Lqy;)V

    :cond_2
    return-void
.end method

.method final C(Lpx;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/e;->o:Lpx;

    return-void
.end method

.method D()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method final F()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/e;->f:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/e;->x:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->v()I

    move-result v0

    iget v1, p0, Lcom/google/android/material/floatingactionbutton/e;->j:I

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method G(Lcom/google/android/material/floatingactionbutton/e$h;Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/e;->o()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/e;->n:Landroid/animation/Animator;

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    .line 4
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/e;->E()Z

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_6

    .line 5
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/e;->x:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/e;->x:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 7
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/e;->x:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p1, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setScaleY(F)V

    .line 8
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/e;->x:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p1, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setScaleX(F)V

    .line 9
    invoke-virtual {p0, v1}, Lcom/google/android/material/floatingactionbutton/e;->z(F)V

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/e;->o:Lpx;

    if-eqz p1, :cond_3

    goto :goto_0

    .line 11
    :cond_3
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/e;->l:Lpx;

    if-nez p1, :cond_4

    .line 12
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/e;->x:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 13
    invoke-virtual {p1}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f020002

    invoke-static {p1, v1}, Lpx;->b(Landroid/content/Context;I)Lpx;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/e;->l:Lpx;

    .line 14
    :cond_4
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/e;->l:Lpx;

    .line 15
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    :goto_0
    invoke-direct {p0, p1, v0, v0, v0}, Lcom/google/android/material/floatingactionbutton/e;->h(Lpx;FFF)Landroid/animation/AnimatorSet;

    move-result-object p1

    .line 17
    new-instance v0, Lcom/google/android/material/floatingactionbutton/e$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, Lcom/google/android/material/floatingactionbutton/e$b;-><init>(Lcom/google/android/material/floatingactionbutton/e;ZLcom/google/android/material/floatingactionbutton/e$h;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 18
    iget-object p2, p0, Lcom/google/android/material/floatingactionbutton/e;->u:Ljava/util/ArrayList;

    if-eqz p2, :cond_5

    .line 19
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator$AnimatorListener;

    .line 20
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_1

    .line 21
    :cond_5
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_2

    .line 22
    :cond_6
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/e;->x:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, p2}, Lcom/google/android/material/internal/VisibilityAwareImageButton;->l(IZ)V

    .line 23
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/e;->x:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 24
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/e;->x:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setScaleY(F)V

    .line 25
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/e;->x:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setScaleX(F)V

    .line 26
    invoke-virtual {p0, v0}, Lcom/google/android/material/floatingactionbutton/e;->z(F)V

    :goto_2
    return-void
.end method

.method H()V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_1

    .line 2
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/e;->q:F

    const/high16 v1, 0x42b40000    # 90.0f

    rem-float/2addr v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/e;->x:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getLayerType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/e;->x:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageButton;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/e;->x:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getLayerType()I

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/e;->x:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageButton;->setLayerType(ILandroid/graphics/Paint;)V

    .line 7
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/e;->b:Lmy;

    if-eqz v0, :cond_2

    .line 8
    iget v1, p0, Lcom/google/android/material/floatingactionbutton/e;->q:F

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lmy;->L(I)V

    :cond_2
    return-void
.end method

.method final I()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/e;->r:F

    invoke-virtual {p0, v0}, Lcom/google/android/material/floatingactionbutton/e;->z(F)V

    return-void
.end method

.method final J()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/e;->z:Landroid/graphics/Rect;

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/material/floatingactionbutton/e;->l(Landroid/graphics/Rect;)V

    .line 3
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/e;->e:Landroid/graphics/drawable/Drawable;

    const-string v2, "Didn\'t initialize content background"

    invoke-static {v1, v2}, Landroidx/core/app/b;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/e;->D()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    new-instance v1, Landroid/graphics/drawable/InsetDrawable;

    iget-object v3, p0, Lcom/google/android/material/floatingactionbutton/e;->e:Landroid/graphics/drawable/Drawable;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget v6, v0, Landroid/graphics/Rect;->right:I

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 6
    iget-object v2, p0, Lcom/google/android/material/floatingactionbutton/e;->y:Lfy;

    check-cast v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$b;

    .line 7
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v2, v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$b;->a:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-static {v2, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->n(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/e;->y:Lfy;

    iget-object v2, p0, Lcom/google/android/material/floatingactionbutton/e;->e:Landroid/graphics/drawable/Drawable;

    check-cast v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$b;

    .line 10
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 11
    iget-object v1, v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$b;->a:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-static {v1, v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->n(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Landroid/graphics/drawable/Drawable;)V

    .line 12
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/e;->y:Lfy;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    check-cast v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$b;

    .line 13
    iget-object v5, v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$b;->a:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iget-object v5, v5, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->n:Landroid/graphics/Rect;

    invoke-virtual {v5, v2, v3, v4, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 14
    iget-object v5, v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$b;->a:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 15
    invoke-static {v5}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->m(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)I

    move-result v6

    add-int/2addr v2, v6

    iget-object v6, v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$b;->a:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-static {v6}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->m(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)I

    move-result v6

    add-int/2addr v3, v6

    iget-object v6, v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$b;->a:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-static {v6}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->m(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)I

    move-result v6

    add-int/2addr v4, v6

    iget-object v1, v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$b;->a:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-static {v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->m(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)I

    move-result v1

    add-int/2addr v0, v1

    .line 16
    invoke-virtual {v5, v2, v3, v4, v0}, Landroid/widget/ImageButton;->setPadding(IIII)V

    return-void
.end method

.method K(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/e;->b:Lmy;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lmy;->E(F)V

    :cond_0
    return-void
.end method

.method public d(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/e;->v:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/e;->v:Ljava/util/ArrayList;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/e;->v:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method e(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/e;->u:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/e;->u:Ljava/util/ArrayList;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/e;->u:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method f(Lcom/google/android/material/floatingactionbutton/e$g;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/e;->w:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/e;->w:Ljava/util/ArrayList;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/e;->w:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method j()Lmy;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/e;->a:Lqy;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v1, Lmy;

    invoke-direct {v1, v0}, Lmy;-><init>(Lqy;)V

    return-object v1
.end method

.method k()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/e;->g:F

    return v0
.end method

.method l(Landroid/graphics/Rect;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/e;->f:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/material/floatingactionbutton/e;->j:I

    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/e;->x:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->v()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/e;->k()F

    move-result v1

    iget v2, p0, Lcom/google/android/material/floatingactionbutton/e;->i:F

    add-float/2addr v1, v2

    float-to-double v2, v1

    .line 4
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/high16 v3, 0x3fc00000    # 1.5f

    mul-float v1, v1, v3

    float-to-double v3, v1

    .line 5
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 6
    invoke-virtual {p1, v2, v0, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method m(Lcom/google/android/material/floatingactionbutton/e$h;Z)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/e;->x:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getVisibility()I

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 2
    iget p1, p0, Lcom/google/android/material/floatingactionbutton/e;->t:I

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 3
    :cond_0
    iget p1, p0, Lcom/google/android/material/floatingactionbutton/e;->t:I

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    return-void

    .line 4
    :cond_2
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/e;->n:Landroid/animation/Animator;

    if-eqz p1, :cond_3

    .line 5
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    .line 6
    :cond_3
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/e;->E()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 7
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/e;->p:Lpx;

    if-eqz p1, :cond_4

    goto :goto_1

    .line 8
    :cond_4
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/e;->m:Lpx;

    if-nez p1, :cond_5

    .line 9
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/e;->x:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 10
    invoke-virtual {p1}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f020001

    invoke-static {p1, v0}, Lpx;->b(Landroid/content/Context;I)Lpx;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/e;->m:Lpx;

    .line 11
    :cond_5
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/e;->m:Lpx;

    .line 12
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    const/4 v0, 0x0

    .line 13
    invoke-direct {p0, p1, v0, v0, v0}, Lcom/google/android/material/floatingactionbutton/e;->h(Lpx;FFF)Landroid/animation/AnimatorSet;

    move-result-object p1

    .line 14
    new-instance v0, Lcom/google/android/material/floatingactionbutton/e$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, Lcom/google/android/material/floatingactionbutton/e$a;-><init>(Lcom/google/android/material/floatingactionbutton/e;ZLcom/google/android/material/floatingactionbutton/e$h;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 15
    iget-object p2, p0, Lcom/google/android/material/floatingactionbutton/e;->v:Ljava/util/ArrayList;

    if-eqz p2, :cond_6

    .line 16
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator$AnimatorListener;

    .line 17
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_2

    .line 18
    :cond_6
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_4

    .line 19
    :cond_7
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/e;->x:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    if-eqz p2, :cond_8

    const/16 v0, 0x8

    goto :goto_3

    :cond_8
    const/4 v0, 0x4

    :goto_3
    invoke-virtual {p1, v0, p2}, Lcom/google/android/material/internal/VisibilityAwareImageButton;->l(IZ)V

    :goto_4
    return-void
.end method

.method n(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Landroid/content/res/ColorStateList;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/e;->j()Lmy;

    move-result-object p4

    iput-object p4, p0, Lcom/google/android/material/floatingactionbutton/e;->b:Lmy;

    .line 2
    invoke-virtual {p4, p1}, Lmy;->setTintList(Landroid/content/res/ColorStateList;)V

    if-eqz p2, :cond_0

    .line 3
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/e;->b:Lmy;

    invoke-virtual {p1, p2}, Lmy;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/e;->b:Lmy;

    const p2, -0xbbbbbc

    invoke-virtual {p1, p2}, Lmy;->K(I)V

    .line 5
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/e;->b:Lmy;

    iget-object p2, p0, Lcom/google/android/material/floatingactionbutton/e;->x:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p2}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmy;->A(Landroid/content/Context;)V

    .line 6
    new-instance p1, Lcy;

    iget-object p2, p0, Lcom/google/android/material/floatingactionbutton/e;->b:Lmy;

    .line 7
    invoke-virtual {p2}, Lmy;->v()Lqy;

    move-result-object p2

    invoke-direct {p1, p2}, Lcy;-><init>(Lqy;)V

    .line 8
    invoke-static {p3}, Ldy;->c(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcy;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 9
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/e;->c:Landroid/graphics/drawable/Drawable;

    const/4 p2, 0x2

    new-array p2, p2, [Landroid/graphics/drawable/Drawable;

    const/4 p3, 0x0

    .line 10
    iget-object p4, p0, Lcom/google/android/material/floatingactionbutton/e;->b:Lmy;

    .line 11
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    aput-object p4, p2, p3

    const/4 p3, 0x1

    aput-object p1, p2, p3

    .line 12
    new-instance p1, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {p1, p2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/e;->e:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method o()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/e;->x:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 2
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/e;->t:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 3
    :cond_1
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/e;->t:I

    if-eq v0, v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method p()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/e;->k:Lcom/google/android/material/internal/f;

    invoke-virtual {v0}, Lcom/google/android/material/internal/f;->b()V

    return-void
.end method

.method q()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/e;->b:Lmy;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/e;->x:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-static {v1, v0}, Lny;->b(Landroid/view/View;Lmy;)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/e;->x()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/e;->x:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/e;->D:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-nez v1, :cond_1

    .line 6
    new-instance v1, Lcom/google/android/material/floatingactionbutton/g;

    invoke-direct {v1, p0}, Lcom/google/android/material/floatingactionbutton/g;-><init>(Lcom/google/android/material/floatingactionbutton/e;)V

    iput-object v1, p0, Lcom/google/android/material/floatingactionbutton/e;->D:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 7
    :cond_1
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/e;->D:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_2
    return-void
.end method

.method r()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/e;->x:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/e;->D:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/e;->D:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    :cond_0
    return-void
.end method

.method s([I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/e;->k:Lcom/google/android/material/internal/f;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/f;->c([I)V

    return-void
.end method

.method t(FFF)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/e;->J()V

    .line 2
    iget-object p2, p0, Lcom/google/android/material/floatingactionbutton/e;->b:Lmy;

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p2, p1}, Lmy;->E(F)V

    :cond_0
    return-void
.end method

.method u()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/e;->x:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getRotation()F

    move-result v0

    .line 2
    iget v1, p0, Lcom/google/android/material/floatingactionbutton/e;->q:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_0

    .line 3
    iput v0, p0, Lcom/google/android/material/floatingactionbutton/e;->q:F

    .line 4
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/e;->H()V

    :cond_0
    return-void
.end method

.method v()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/e;->w:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/floatingactionbutton/e$g;

    .line 3
    invoke-interface {v1}, Lcom/google/android/material/floatingactionbutton/e$g;->b()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method w()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/e;->w:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/floatingactionbutton/e$g;

    .line 3
    invoke-interface {v1}, Lcom/google/android/material/floatingactionbutton/e$g;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method x()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method final y(Lpx;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/e;->p:Lpx;

    return-void
.end method

.method final z(F)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/google/android/material/floatingactionbutton/e;->r:F

    .line 2
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/e;->C:Landroid/graphics/Matrix;

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/floatingactionbutton/e;->g(FLandroid/graphics/Matrix;)V

    .line 4
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/e;->x:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method
