.class public Lcom/airbnb/lottie/g;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/g$g;
    }
.end annotation


# instance fields
.field private final b:Landroid/graphics/Matrix;

.field private c:Lcom/airbnb/lottie/e;

.field private final d:Lac;

.field private e:F

.field private f:Z

.field private final g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/airbnb/lottie/g$g;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private i:Landroid/widget/ImageView$ScaleType;

.field private j:Lj8;

.field private k:Ljava/lang/String;

.field private l:Li8;

.field private m:Z

.field private n:Laa;

.field private o:I

.field private p:Z

.field private q:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/airbnb/lottie/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/g;->b:Landroid/graphics/Matrix;

    .line 3
    new-instance v0, Lac;

    invoke-direct {v0}, Lac;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/g;->d:Lac;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 4
    iput v1, p0, Lcom/airbnb/lottie/g;->e:F

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Lcom/airbnb/lottie/g;->f:Z

    .line 6
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 7
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/airbnb/lottie/g;->g:Ljava/util/ArrayList;

    .line 8
    new-instance v2, Lcom/airbnb/lottie/g$d;

    invoke-direct {v2, p0}, Lcom/airbnb/lottie/g$d;-><init>(Lcom/airbnb/lottie/g;)V

    iput-object v2, p0, Lcom/airbnb/lottie/g;->h:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    const/16 v3, 0xff

    .line 9
    iput v3, p0, Lcom/airbnb/lottie/g;->o:I

    .line 10
    iput-boolean v1, p0, Lcom/airbnb/lottie/g;->p:Z

    const/4 v1, 0x0

    .line 11
    iput-boolean v1, p0, Lcom/airbnb/lottie/g;->q:Z

    .line 12
    invoke-virtual {v0, v2}, Lwb;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method private G()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/g;->c:Lcom/airbnb/lottie/e;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v1, p0, Lcom/airbnb/lottie/g;->e:F

    .line 3
    invoke-virtual {v0}, Lcom/airbnb/lottie/e;->b()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, v1

    float-to-int v0, v0

    iget-object v2, p0, Lcom/airbnb/lottie/g;->c:Lcom/airbnb/lottie/e;

    .line 4
    invoke-virtual {v2}, Lcom/airbnb/lottie/e;->b()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v1

    float-to-int v1, v2

    const/4 v2, 0x0

    .line 5
    invoke-virtual {p0, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method static synthetic a(Lcom/airbnb/lottie/g;)Laa;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/g;->n:Laa;

    return-object p0
.end method

.method static synthetic b(Lcom/airbnb/lottie/g;)Lac;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/g;->d:Lac;

    return-object p0
.end method

.method private f()V
    .locals 28

    move-object/from16 v0, p0

    .line 1
    new-instance v1, Laa;

    iget-object v4, v0, Lcom/airbnb/lottie/g;->c:Lcom/airbnb/lottie/e;

    .line 2
    sget v2, Lcb;->d:I

    .line 3
    invoke-virtual {v4}, Lcom/airbnb/lottie/e;->b()Landroid/graphics/Rect;

    move-result-object v5

    .line 4
    new-instance v11, Lca;

    move-object v2, v11

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    sget-object v8, Lca$a;->b:Lca$a;

    .line 6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v12

    new-instance v14, Le9;

    move-object v13, v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    .line 7
    invoke-direct/range {v14 .. v23}, Le9;-><init>(Lx8;Lf9;Lz8;Lu8;Lw8;Lu8;Lu8;Lu8;Lu8;)V

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 8
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v19

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v20

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v23

    sget-object v24, Lca$b;->b:Lca$b;

    const/16 v25, 0x0

    const/16 v26, 0x0

    const-wide/16 v6, -0x1

    const-wide/16 v9, -0x1

    const/4 v5, 0x0

    move-object/from16 v27, v11

    move-object v11, v5

    const-string v5, "__container"

    invoke-direct/range {v2 .. v26}, Lca;-><init>(Ljava/util/List;Lcom/airbnb/lottie/e;Ljava/lang/String;JLca$a;JLjava/lang/String;Ljava/util/List;Le9;IIIFFIILc9;Ld9;Ljava/util/List;Lca$b;Lu8;Z)V

    .line 9
    iget-object v2, v0, Lcom/airbnb/lottie/g;->c:Lcom/airbnb/lottie/e;

    invoke-virtual {v2}, Lcom/airbnb/lottie/e;->j()Ljava/util/List;

    move-result-object v2

    iget-object v3, v0, Lcom/airbnb/lottie/g;->c:Lcom/airbnb/lottie/e;

    move-object/from16 v4, v27

    invoke-direct {v1, v0, v4, v2, v3}, Laa;-><init>(Lcom/airbnb/lottie/g;Lca;Ljava/util/List;Lcom/airbnb/lottie/e;)V

    iput-object v1, v0, Lcom/airbnb/lottie/g;->n:Laa;

    return-void
.end method

.method private i(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    iget-object v1, p0, Lcom/airbnb/lottie/g;->i:Landroid/widget/ImageView$ScaleType;

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, -0x1

    const/high16 v4, 0x3f800000    # 1.0f

    if-ne v0, v1, :cond_3

    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/g;->n:Laa;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget-object v5, p0, Lcom/airbnb/lottie/g;->c:Lcom/airbnb/lottie/e;

    invoke-virtual {v5}, Lcom/airbnb/lottie/e;->b()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v1, v5

    .line 5
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/airbnb/lottie/g;->c:Lcom/airbnb/lottie/e;

    invoke-virtual {v6}, Lcom/airbnb/lottie/e;->b()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 6
    iget-boolean v6, p0, Lcom/airbnb/lottie/g;->p:Z

    if-eqz v6, :cond_2

    .line 7
    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    move-result v6

    cmpg-float v7, v6, v4

    if-gez v7, :cond_1

    div-float v7, v4, v6

    div-float/2addr v1, v7

    div-float/2addr v5, v7

    goto :goto_0

    :cond_1
    const/high16 v7, 0x3f800000    # 1.0f

    :goto_0
    cmpl-float v4, v7, v4

    if-lez v4, :cond_2

    .line 8
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 9
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    .line 10
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    mul-float v2, v4, v6

    mul-float v6, v6, v0

    sub-float/2addr v4, v2

    sub-float/2addr v0, v6

    .line 11
    invoke-virtual {p1, v4, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 12
    invoke-virtual {p1, v7, v7, v2, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 13
    :cond_2
    iget-object v0, p0, Lcom/airbnb/lottie/g;->b:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 14
    iget-object v0, p0, Lcom/airbnb/lottie/g;->b:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v5}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 15
    iget-object v0, p0, Lcom/airbnb/lottie/g;->n:Laa;

    iget-object v1, p0, Lcom/airbnb/lottie/g;->b:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/airbnb/lottie/g;->o:I

    invoke-virtual {v0, p1, v1, v2}, Lz9;->f(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    if-lez v3, :cond_7

    .line 16
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_2

    .line 17
    :cond_3
    iget-object v0, p0, Lcom/airbnb/lottie/g;->n:Laa;

    if-nez v0, :cond_4

    goto/16 :goto_2

    .line 18
    :cond_4
    iget v0, p0, Lcom/airbnb/lottie/g;->e:F

    .line 19
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v5, p0, Lcom/airbnb/lottie/g;->c:Lcom/airbnb/lottie/e;

    invoke-virtual {v5}, Lcom/airbnb/lottie/e;->b()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v1, v5

    .line 20
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/airbnb/lottie/g;->c:Lcom/airbnb/lottie/e;

    invoke-virtual {v6}, Lcom/airbnb/lottie/e;->b()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 21
    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    move-result v1

    cmpl-float v5, v0, v1

    if-lez v5, :cond_5

    .line 22
    iget v0, p0, Lcom/airbnb/lottie/g;->e:F

    div-float/2addr v0, v1

    goto :goto_1

    :cond_5
    move v1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1
    cmpl-float v4, v0, v4

    if-lez v4, :cond_6

    .line 23
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 24
    iget-object v4, p0, Lcom/airbnb/lottie/g;->c:Lcom/airbnb/lottie/e;

    invoke-virtual {v4}, Lcom/airbnb/lottie/e;->b()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    .line 25
    iget-object v5, p0, Lcom/airbnb/lottie/g;->c:Lcom/airbnb/lottie/e;

    invoke-virtual {v5}, Lcom/airbnb/lottie/e;->b()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v2

    mul-float v2, v4, v1

    mul-float v6, v5, v1

    .line 26
    iget v7, p0, Lcom/airbnb/lottie/g;->e:F

    mul-float v4, v4, v7

    sub-float/2addr v4, v2

    mul-float v7, v7, v5

    sub-float/2addr v7, v6

    .line 27
    invoke-virtual {p1, v4, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 28
    invoke-virtual {p1, v0, v0, v2, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 29
    :cond_6
    iget-object v0, p0, Lcom/airbnb/lottie/g;->b:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 30
    iget-object v0, p0, Lcom/airbnb/lottie/g;->b:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 31
    iget-object v0, p0, Lcom/airbnb/lottie/g;->n:Laa;

    iget-object v1, p0, Lcom/airbnb/lottie/g;->b:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/airbnb/lottie/g;->o:I

    invoke-virtual {v0, p1, v1, v2}, Lz9;->f(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    if-lez v3, :cond_7

    .line 32
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_7
    :goto_2
    return-void
.end method


# virtual methods
.method public A(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/g;->d:Lac;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    return-void
.end method

.method public B(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/g;->d:Lac;

    invoke-virtual {v0, p1}, Lac;->setRepeatMode(I)V

    return-void
.end method

.method public C(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/airbnb/lottie/g;->e:F

    .line 2
    invoke-direct {p0}, Lcom/airbnb/lottie/g;->G()V

    return-void
.end method

.method D(Landroid/widget/ImageView$ScaleType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/airbnb/lottie/g;->i:Landroid/widget/ImageView$ScaleType;

    return-void
.end method

.method public E(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/g;->d:Lac;

    invoke-virtual {v0, p1}, Lac;->v(F)V

    return-void
.end method

.method F(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/airbnb/lottie/g;->f:Z

    return-void
.end method

.method public H()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/g;->c:Lcom/airbnb/lottie/e;

    invoke-virtual {v0}, Lcom/airbnb/lottie/e;->c()Lf0;

    move-result-object v0

    invoke-virtual {v0}, Lf0;->l()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/g;->d:Lac;

    invoke-virtual {v0, p1}, Lwb;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public d(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/g;->d:Lac;

    invoke-virtual {v0, p1}, Lwb;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/airbnb/lottie/g;->q:Z

    .line 2
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/g;->i(Landroid/graphics/Canvas;)V

    const-string p1, "Drawable#draw"

    .line 3
    invoke-static {p1}, Lcom/airbnb/lottie/b;->a(Ljava/lang/String;)F

    return-void
.end method

.method public e(Lo8;Ljava/lang/Object;Lgc;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo8;",
            "TT;",
            "Lgc<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/g;->n:Laa;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/g;->g:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/g$c;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/airbnb/lottie/g$c;-><init>(Lcom/airbnb/lottie/g;Lo8;Ljava/lang/Object;Lgc;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 3
    :cond_0
    sget-object v1, Lo8;->c:Lo8;

    const/4 v2, 0x1

    if-ne p1, v1, :cond_1

    .line 4
    invoke-virtual {v0, p2, p3}, Laa;->g(Ljava/lang/Object;Lgc;)V

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {p1}, Lo8;->d()Lp8;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p1}, Lo8;->d()Lp8;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Lp8;->g(Ljava/lang/Object;Lgc;)V

    goto :goto_1

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/airbnb/lottie/g;->n:Laa;

    const/4 v1, 0x0

    if-nez v0, :cond_3

    const-string p1, "Cannot resolve KeyPath. Composition is not set yet."

    .line 8
    invoke-static {p1}, Lzb;->b(Ljava/lang/String;)V

    .line 9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 10
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    iget-object v3, p0, Lcom/airbnb/lottie/g;->n:Laa;

    new-instance v4, Lo8;

    new-array v5, v1, [Ljava/lang/String;

    invoke-direct {v4, v5}, Lo8;-><init>([Ljava/lang/String;)V

    invoke-virtual {v3, p1, v1, v0, v4}, Lz9;->c(Lo8;ILjava/util/List;Lo8;)V

    move-object p1, v0

    .line 12
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 13
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo8;

    invoke-virtual {v0}, Lo8;->d()Lp8;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Lp8;->g(Ljava/lang/Object;Lgc;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 14
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    xor-int/2addr v2, p1

    :goto_1
    if-eqz v2, :cond_5

    .line 15
    invoke-virtual {p0}, Lcom/airbnb/lottie/g;->invalidateSelf()V

    .line 16
    sget-object p1, Lcom/airbnb/lottie/l;->A:Ljava/lang/Float;

    if-ne p2, p1, :cond_5

    .line 17
    iget-object p1, p0, Lcom/airbnb/lottie/g;->d:Lac;

    invoke-virtual {p1}, Lac;->h()F

    move-result p1

    .line 18
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/g;->z(F)V

    :cond_5
    return-void
.end method

.method public g()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/g;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/g;->d:Lac;

    invoke-virtual {v0}, Lac;->cancel()V

    return-void
.end method

.method public getAlpha()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/airbnb/lottie/g;->o:I

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/g;->c:Lcom/airbnb/lottie/e;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/airbnb/lottie/e;->b()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    .line 2
    iget v1, p0, Lcom/airbnb/lottie/g;->e:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    :goto_0
    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/g;->c:Lcom/airbnb/lottie/e;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/airbnb/lottie/e;->b()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    .line 2
    iget v1, p0, Lcom/airbnb/lottie/g;->e:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    :goto_0
    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public h()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/g;->d:Lac;

    invoke-virtual {v0}, Lac;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/g;->d:Lac;

    invoke-virtual {v0}, Lac;->cancel()V

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/airbnb/lottie/g;->c:Lcom/airbnb/lottie/e;

    .line 4
    iput-object v0, p0, Lcom/airbnb/lottie/g;->n:Laa;

    .line 5
    iput-object v0, p0, Lcom/airbnb/lottie/g;->j:Lj8;

    .line 6
    iget-object v0, p0, Lcom/airbnb/lottie/g;->d:Lac;

    invoke-virtual {v0}, Lac;->f()V

    .line 7
    invoke-virtual {p0}, Lcom/airbnb/lottie/g;->invalidateSelf()V

    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {p1, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public invalidateSelf()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/airbnb/lottie/g;->q:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/airbnb/lottie/g;->q:Z

    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/airbnb/lottie/g;->s()Z

    move-result v0

    return v0
.end method

.method public j(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/airbnb/lottie/g;->m:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput-boolean p1, p0, Lcom/airbnb/lottie/g;->m:Z

    .line 3
    iget-object p1, p0, Lcom/airbnb/lottie/g;->c:Lcom/airbnb/lottie/e;

    if-eqz p1, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/airbnb/lottie/g;->f()V

    :cond_1
    return-void
.end method

.method public k()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/airbnb/lottie/g;->m:Z

    return v0
.end method

.method public l()Lcom/airbnb/lottie/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/g;->c:Lcom/airbnb/lottie/e;

    return-object v0
.end method

.method public m(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_2

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/g;->j:Lj8;

    if-eqz v0, :cond_3

    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    instance-of v3, v2, Landroid/view/View;

    if-eqz v3, :cond_2

    .line 5
    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    goto :goto_1

    :cond_2
    :goto_0
    move-object v2, v1

    .line 6
    :goto_1
    invoke-virtual {v0, v2}, Lj8;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 7
    iput-object v1, p0, Lcom/airbnb/lottie/g;->j:Lj8;

    .line 8
    :cond_3
    iget-object v0, p0, Lcom/airbnb/lottie/g;->j:Lj8;

    if-nez v0, :cond_4

    .line 9
    new-instance v0, Lj8;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v2

    iget-object v3, p0, Lcom/airbnb/lottie/g;->k:Ljava/lang/String;

    iget-object v4, p0, Lcom/airbnb/lottie/g;->c:Lcom/airbnb/lottie/e;

    .line 10
    invoke-virtual {v4}, Lcom/airbnb/lottie/e;->i()Ljava/util/Map;

    move-result-object v4

    invoke-direct {v0, v2, v3, v1, v4}, Lj8;-><init>(Landroid/graphics/drawable/Drawable$Callback;Ljava/lang/String;Lcom/airbnb/lottie/a;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/airbnb/lottie/g;->j:Lj8;

    .line 11
    :cond_4
    iget-object v0, p0, Lcom/airbnb/lottie/g;->j:Lj8;

    :goto_2
    if-eqz v0, :cond_5

    .line 12
    invoke-virtual {v0, p1}, Lj8;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_5
    return-object v1
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/g;->k:Ljava/lang/String;

    return-object v0
.end method

.method public o()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/g;->d:Lac;

    invoke-virtual {v0}, Lac;->h()F

    move-result v0

    return v0
.end method

.method public p()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/g;->d:Lac;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getRepeatCount()I

    move-result v0

    return v0
.end method

.method public q()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/g;->d:Lac;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getRepeatMode()I

    move-result v0

    return v0
.end method

.method public r(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/g;->l:Li8;

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Li8;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v2

    invoke-direct {v0, v2}, Li8;-><init>(Landroid/graphics/drawable/Drawable$Callback;)V

    iput-object v0, p0, Lcom/airbnb/lottie/g;->l:Li8;

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/g;->l:Li8;

    :goto_0
    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {v0, p1, p2}, Li8;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v1
.end method

.method public s()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/g;->d:Lac;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lac;->isRunning()Z

    move-result v0

    return v0
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {p1, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/airbnb/lottie/g;->o:I

    .line 2
    invoke-virtual {p0}, Lcom/airbnb/lottie/g;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    const-string p1, "Use addColorFilter instead."

    .line 1
    invoke-static {p1}, Lzb;->b(Ljava/lang/String;)V

    return-void
.end method

.method public start()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 2
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/airbnb/lottie/g;->u()V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/g;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/g;->d:Lac;

    invoke-virtual {v0}, Lac;->g()V

    return-void
.end method

.method public t()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/g;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/g;->d:Lac;

    invoke-virtual {v0}, Lac;->m()V

    return-void
.end method

.method public u()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/g;->n:Laa;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/g;->g:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/g$e;

    invoke-direct {v1, p0}, Lcom/airbnb/lottie/g$e;-><init>(Lcom/airbnb/lottie/g;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/airbnb/lottie/g;->f:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/airbnb/lottie/g;->p()I

    move-result v0

    if-nez v0, :cond_2

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/g;->d:Lac;

    invoke-virtual {v0}, Lac;->n()V

    .line 5
    :cond_2
    iget-boolean v0, p0, Lcom/airbnb/lottie/g;->f:Z

    if-nez v0, :cond_4

    .line 6
    iget-object v0, p0, Lcom/airbnb/lottie/g;->d:Lac;

    invoke-virtual {v0}, Lac;->k()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    .line 7
    iget-object v0, p0, Lcom/airbnb/lottie/g;->d:Lac;

    invoke-virtual {v0}, Lac;->j()F

    move-result v0

    goto :goto_0

    .line 8
    :cond_3
    iget-object v0, p0, Lcom/airbnb/lottie/g;->d:Lac;

    invoke-virtual {v0}, Lac;->i()F

    move-result v0

    :goto_0
    float-to-int v0, v0

    .line 9
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/g;->x(I)V

    .line 10
    iget-object v0, p0, Lcom/airbnb/lottie/g;->d:Lac;

    invoke-virtual {v0}, Lac;->g()V

    :cond_4
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {p1, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public v()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/g;->n:Laa;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/g;->g:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/g$f;

    invoke-direct {v1, p0}, Lcom/airbnb/lottie/g$f;-><init>(Lcom/airbnb/lottie/g;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/airbnb/lottie/g;->f:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/airbnb/lottie/g;->p()I

    move-result v0

    if-nez v0, :cond_2

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/g;->d:Lac;

    invoke-virtual {v0}, Lac;->r()V

    .line 5
    :cond_2
    iget-boolean v0, p0, Lcom/airbnb/lottie/g;->f:Z

    if-nez v0, :cond_4

    .line 6
    iget-object v0, p0, Lcom/airbnb/lottie/g;->d:Lac;

    invoke-virtual {v0}, Lac;->k()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    .line 7
    iget-object v0, p0, Lcom/airbnb/lottie/g;->d:Lac;

    invoke-virtual {v0}, Lac;->j()F

    move-result v0

    goto :goto_0

    .line 8
    :cond_3
    iget-object v0, p0, Lcom/airbnb/lottie/g;->d:Lac;

    invoke-virtual {v0}, Lac;->i()F

    move-result v0

    :goto_0
    float-to-int v0, v0

    .line 9
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/g;->x(I)V

    .line 10
    iget-object v0, p0, Lcom/airbnb/lottie/g;->d:Lac;

    invoke-virtual {v0}, Lac;->g()V

    :cond_4
    return-void
.end method

.method public w(Lcom/airbnb/lottie/e;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/g;->c:Lcom/airbnb/lottie/e;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    return v1

    .line 2
    :cond_0
    iput-boolean v1, p0, Lcom/airbnb/lottie/g;->q:Z

    .line 3
    invoke-virtual {p0}, Lcom/airbnb/lottie/g;->h()V

    .line 4
    iput-object p1, p0, Lcom/airbnb/lottie/g;->c:Lcom/airbnb/lottie/e;

    .line 5
    invoke-direct {p0}, Lcom/airbnb/lottie/g;->f()V

    .line 6
    iget-object v0, p0, Lcom/airbnb/lottie/g;->d:Lac;

    invoke-virtual {v0, p1}, Lac;->s(Lcom/airbnb/lottie/e;)V

    .line 7
    iget-object v0, p0, Lcom/airbnb/lottie/g;->d:Lac;

    invoke-virtual {v0}, Lac;->getAnimatedFraction()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/g;->z(F)V

    .line 8
    iget v0, p0, Lcom/airbnb/lottie/g;->e:F

    .line 9
    iput v0, p0, Lcom/airbnb/lottie/g;->e:F

    .line 10
    invoke-direct {p0}, Lcom/airbnb/lottie/g;->G()V

    .line 11
    invoke-direct {p0}, Lcom/airbnb/lottie/g;->G()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/airbnb/lottie/g;->g:Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 13
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/g$g;

    .line 15
    invoke-interface {v2, p1}, Lcom/airbnb/lottie/g$g;->a(Lcom/airbnb/lottie/e;)V

    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 17
    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/g;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 18
    invoke-virtual {p1, v1}, Lcom/airbnb/lottie/e;->t(Z)V

    .line 19
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    .line 20
    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 21
    check-cast p1, Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 22
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public x(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/g;->c:Lcom/airbnb/lottie/e;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/g;->g:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/g$a;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/lottie/g$a;-><init>(Lcom/airbnb/lottie/g;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/g;->d:Lac;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Lac;->t(F)V

    return-void
.end method

.method public y(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/airbnb/lottie/g;->k:Ljava/lang/String;

    return-void
.end method

.method public z(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/g;->c:Lcom/airbnb/lottie/e;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/g;->g:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/g$b;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/lottie/g$b;-><init>(Lcom/airbnb/lottie/g;F)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/airbnb/lottie/g;->d:Lac;

    invoke-virtual {v0}, Lcom/airbnb/lottie/e;->n()F

    move-result v0

    iget-object v2, p0, Lcom/airbnb/lottie/g;->c:Lcom/airbnb/lottie/e;

    invoke-virtual {v2}, Lcom/airbnb/lottie/e;->f()F

    move-result v2

    invoke-static {v0, v2, p1}, Lcc;->f(FFF)F

    move-result p1

    invoke-virtual {v1, p1}, Lac;->t(F)V

    const-string p1, "Drawable#setProgress"

    .line 4
    invoke-static {p1}, Lcom/airbnb/lottie/b;->a(Ljava/lang/String;)F

    return-void
.end method
