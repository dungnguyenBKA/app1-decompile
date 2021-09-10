.class public Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$e;,
        Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$h;,
        Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$g;,
        Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;,
        Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$d;
    }
.end annotation


# static fields
.field private static a0:[I


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:Landroid/graphics/drawable/Drawable;

.field private E:Landroid/animation/AnimatorSet;

.field private F:Landroid/animation/ValueAnimator;

.field private G:Z

.field private H:Landroid/graphics/Paint;

.field private I:Landroid/graphics/Paint;

.field private J:Landroid/graphics/Paint;

.field private K:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$d;

.field private L:Landroid/graphics/PointF;

.field private M:Landroid/graphics/RectF;

.field private N:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;

.field private O:Lyo;

.field private P:Ldp;

.field private Q:Landroid/animation/ValueAnimator;

.field private R:Landroid/animation/PropertyValuesHolder;

.field private S:Landroid/animation/PropertyValuesHolder;

.field private T:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$e;

.field private U:Landroid/animation/Animator$AnimatorListener;

.field private V:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private W:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private b:I

.field private c:Landroid/graphics/Bitmap;

.field private d:Landroid/graphics/Matrix;

.field private e:Landroid/graphics/Matrix;

.field private f:Landroid/graphics/Matrix;

.field private g:Landroid/graphics/Matrix;

.field private h:Landroid/graphics/Matrix;

.field private i:Landroid/graphics/Matrix;

.field private j:Landroid/graphics/RectF;

.field private k:Landroid/graphics/Rect;

.field private l:Landroid/graphics/RectF;

.field private m:I

.field private n:Landroid/graphics/Rect;

.field private o:Landroid/graphics/RectF;

.field private p:Landroid/graphics/RectF;

.field private q:Landroid/graphics/RectF;

.field private r:Landroid/graphics/Rect;

.field private s:Landroid/graphics/RectF;

.field private t:Landroid/graphics/RectF;

.field private u:Landroid/graphics/RectF;

.field private v:F

.field private w:F

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p2, 0x32

    .line 3
    iput p2, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->b:I

    .line 4
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->d:Landroid/graphics/Matrix;

    .line 5
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->e:Landroid/graphics/Matrix;

    .line 6
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->f:Landroid/graphics/Matrix;

    .line 7
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->g:Landroid/graphics/Matrix;

    .line 8
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->h:Landroid/graphics/Matrix;

    .line 9
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->i:Landroid/graphics/Matrix;

    .line 10
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->j:Landroid/graphics/RectF;

    .line 11
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->k:Landroid/graphics/Rect;

    .line 12
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->l:Landroid/graphics/RectF;

    .line 13
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->n:Landroid/graphics/Rect;

    .line 14
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->o:Landroid/graphics/RectF;

    .line 15
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->p:Landroid/graphics/RectF;

    .line 16
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->q:Landroid/graphics/RectF;

    .line 17
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->r:Landroid/graphics/Rect;

    .line 18
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->s:Landroid/graphics/RectF;

    .line 19
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->t:Landroid/graphics/RectF;

    .line 20
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->u:Landroid/graphics/RectF;

    const/4 p2, 0x0

    .line 21
    iput-boolean p2, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->G:Z

    .line 22
    sget-object p2, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$d;->b:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$d;

    iput-object p2, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->K:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$d;

    .line 23
    new-instance p2, Landroid/graphics/PointF;

    invoke-direct {p2}, Landroid/graphics/PointF;-><init>()V

    iput-object p2, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->L:Landroid/graphics/PointF;

    .line 24
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->M:Landroid/graphics/RectF;

    .line 25
    new-instance p2, Landroid/graphics/PorterDuffXfermode;

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, p3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 26
    new-instance p2, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$a;

    invoke-direct {p2, p0}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$a;-><init>(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)V

    iput-object p2, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->U:Landroid/animation/Animator$AnimatorListener;

    .line 27
    new-instance p2, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$b;

    invoke-direct {p2, p0}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$b;-><init>(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)V

    iput-object p2, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->V:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 28
    new-instance p2, Lcom/camerasideas/collagemaker/photoproc/crop/a;

    invoke-direct {p2, p0}, Lcom/camerasideas/collagemaker/photoproc/crop/a;-><init>(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)V

    iput-object p2, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->W:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 29
    new-instance p2, Landroid/graphics/Paint;

    const/4 p3, 0x7

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->H:Landroid/graphics/Paint;

    const p3, 0x7f0500b5

    .line 30
    invoke-static {p1, p3}, Landroidx/core/content/a;->b(Landroid/content/Context;I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 31
    new-instance p2, Landroid/graphics/Paint;

    const/4 p3, 0x3

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->I:Landroid/graphics/Paint;

    .line 32
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->J:Landroid/graphics/Paint;

    .line 33
    iget p3, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->z:I

    int-to-float p3, p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 34
    iget-object p2, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->J:Landroid/graphics/Paint;

    const/4 p3, -0x1

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 35
    iget-object p2, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->J:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 p2, 0x0

    .line 36
    invoke-virtual {p0, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0700c0

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->D:Landroid/graphics/drawable/Drawable;

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f050064

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->B:I

    const/high16 p2, 0x3f000000    # 0.5f

    .line 39
    invoke-static {p1, p2}, Lc2;->b(Landroid/content/Context;F)I

    move-result p2

    iput p2, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->z:I

    const/high16 p2, 0x41a00000    # 20.0f

    .line 40
    invoke-static {p1, p2}, Lc2;->b(Landroid/content/Context;F)I

    move-result p2

    iput p2, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->A:I

    const/high16 p2, 0x41c80000    # 25.0f

    .line 41
    invoke-static {p1, p2}, Lc2;->b(Landroid/content/Context;F)I

    move-result p2

    iput p2, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->x:I

    const/high16 p2, 0x42200000    # 40.0f

    .line 42
    invoke-static {p1, p2}, Lc2;->b(Landroid/content/Context;F)I

    move-result p2

    iput p2, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->y:I

    const/high16 p2, 0x40c00000    # 6.0f

    .line 43
    invoke-static {p1, p2}, Lc2;->b(Landroid/content/Context;F)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->m:I

    return-void
.end method

.method static synthetic A(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->G:Z

    return p1
.end method

.method static synthetic B(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->v:F

    return p0
.end method

.method private D(Landroid/graphics/RectF;Z)V
    .locals 7

    .line 1
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->g:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 3
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 4
    invoke-virtual {v0, v1, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 5
    iget-object v2, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->l:Landroid/graphics/RectF;

    invoke-virtual {v2, v1}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 6
    new-instance v2, Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->g:Landroid/graphics/Matrix;

    invoke-direct {v2, v3}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 7
    new-instance v3, Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->g:Landroid/graphics/Matrix;

    invoke-direct {v3, v4}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 8
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget-object v5, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->l:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    cmpl-float v4, v4, v5

    if-gtz v4, :cond_0

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v4

    iget-object v5, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->l:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    .line 9
    :cond_0
    iget-object v4, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->l:Landroid/graphics/RectF;

    invoke-direct {p0, v4, v1}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->I(Landroid/graphics/RectF;Landroid/graphics/RectF;)F

    move-result v4

    .line 10
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    invoke-virtual {v3, v4, v4, v5, v6}, Landroid/graphics/Matrix;->preScale(FFFF)Z

    .line 11
    :cond_1
    invoke-virtual {v3, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 12
    invoke-virtual {v0, v1, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 13
    iget-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->l:Landroid/graphics/RectF;

    invoke-virtual {p1, v1}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 14
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    .line 15
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->l:Landroid/graphics/RectF;

    invoke-direct {p0, v0, v1, p1}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->J(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/PointF;)V

    .line 16
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v0, p1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    :cond_2
    if-eqz p2, :cond_3

    const/4 p1, 0x1

    .line 17
    invoke-direct {p0, v2, v3, p1}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->N(Landroid/graphics/Matrix;Landroid/graphics/Matrix;Z)V

    .line 18
    iget-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->F:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 19
    :cond_3
    iget-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->g:Landroid/graphics/Matrix;

    invoke-virtual {p1, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 20
    invoke-direct {p0}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->G()V

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 22
    :cond_4
    invoke-direct {p0}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->G()V

    :goto_0
    return-void
.end method

.method private G()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->G:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->T:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$e;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->g:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->e:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 3
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->e:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->t:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->s:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 4
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->T:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$e;

    check-cast v0, Lcom/camerasideas/collagemaker/activity/ImageCropActivity;

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->G:Z

    :cond_0
    return-void
.end method

.method private H()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->g:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->l:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->o:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->h:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->l:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->o:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 3
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->g:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->s:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->l:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 4
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->i:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->g:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    return-void
.end method

.method private I(Landroid/graphics/RectF;Landroid/graphics/RectF;)F
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 2
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v0, v1

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 3
    :goto_0
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 4
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    div-float/2addr p2, p1

    invoke-static {v0, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    return p1

    :cond_1
    return v0
.end method

.method private J(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/PointF;)V
    .locals 5

    .line 1
    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iput v1, p3, Landroid/graphics/PointF;->x:F

    .line 3
    iput v1, p3, Landroid/graphics/PointF;->y:F

    return-void

    .line 4
    :cond_0
    iget v0, p2, Landroid/graphics/RectF;->top:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    cmpg-float v3, v0, v2

    if-gez v3, :cond_1

    :goto_0
    sub-float/2addr v0, v2

    goto :goto_1

    .line 5
    :cond_1
    iget v0, p2, Landroid/graphics/RectF;->bottom:F

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v3, v0, v2

    if-lez v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 6
    :goto_1
    iget v2, p2, Landroid/graphics/RectF;->left:F

    iget v3, p1, Landroid/graphics/RectF;->left:F

    cmpg-float v4, v2, v3

    if-gez v4, :cond_3

    sub-float v1, v2, v3

    goto :goto_2

    .line 7
    :cond_3
    iget p2, p2, Landroid/graphics/RectF;->right:F

    iget p1, p1, Landroid/graphics/RectF;->right:F

    cmpl-float v2, p2, p1

    if-lez v2, :cond_4

    sub-float v1, p2, p1

    .line 8
    :cond_4
    :goto_2
    iput v1, p3, Landroid/graphics/PointF;->x:F

    .line 9
    iput v0, p3, Landroid/graphics/PointF;->y:F

    return-void
.end method

.method private M(Landroid/animation/Animator;Landroid/animation/Animator;Lcom/camerasideas/collagemaker/photoproc/crop/b;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->E:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->E:Landroid/animation/AnimatorSet;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    .line 3
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->E:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    if-eqz p3, :cond_1

    .line 5
    iget-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->E:Landroid/animation/AnimatorSet;

    invoke-virtual {p1, p3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_1
    return-void
.end method

.method private N(Landroid/graphics/Matrix;Landroid/graphics/Matrix;Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->F:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->F:Landroid/animation/ValueAnimator;

    .line 3
    new-instance v0, Lcom/camerasideas/collagemaker/photoproc/crop/d;

    invoke-direct {v0}, Lcom/camerasideas/collagemaker/photoproc/crop/d;-><init>()V

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p1, v4, v3

    aput-object p2, v4, v2

    const-string v5, "matrix"

    invoke-static {v5, v0, v4}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->R:Landroid/animation/PropertyValuesHolder;

    .line 4
    iget-object v4, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->F:Landroid/animation/ValueAnimator;

    new-array v5, v2, [Ljava/lang/Object;

    aput-object v0, v5, v3

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->F:Landroid/animation/ValueAnimator;

    iget-object v4, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->V:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_0
    if-eqz p3, :cond_1

    .line 6
    iget-object p3, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->F:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->U:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p3, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object p3, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->F:Landroid/animation/ValueAnimator;

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 8
    :goto_0
    iget-object p3, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->R:Landroid/animation/PropertyValuesHolder;

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p1, v0, v3

    aput-object p2, v0, v2

    invoke-virtual {p3, v0}, Landroid/animation/PropertyValuesHolder;->setObjectValues([Ljava/lang/Object;)V

    .line 9
    iget-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->F:Landroid/animation/ValueAnimator;

    const-wide/16 p2, 0x96

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 10
    iget-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->F:Landroid/animation/ValueAnimator;

    new-array p2, v2, [Landroid/animation/PropertyValuesHolder;

    iget-object p3, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->R:Landroid/animation/PropertyValuesHolder;

    aput-object p3, p2, v3

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    return-void
.end method

.method private O(Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->Q:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->Q:Landroid/animation/ValueAnimator;

    .line 3
    new-instance v0, Lcom/camerasideas/collagemaker/photoproc/crop/c;

    invoke-direct {v0}, Lcom/camerasideas/collagemaker/photoproc/crop/c;-><init>()V

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p1, v4, v3

    aput-object p2, v4, v2

    const-string v5, "window"

    invoke-static {v5, v0, v4}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->S:Landroid/animation/PropertyValuesHolder;

    .line 4
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->Q:Landroid/animation/ValueAnimator;

    iget-object v4, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->W:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->Q:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x96

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 6
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->S:Landroid/animation/PropertyValuesHolder;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/PropertyValuesHolder;->setObjectValues([Ljava/lang/Object;)V

    .line 7
    iget-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->Q:Landroid/animation/ValueAnimator;

    new-array p2, v2, [Landroid/animation/PropertyValuesHolder;

    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->S:Landroid/animation/PropertyValuesHolder;

    aput-object v0, p2, v3

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    return-void
.end method

.method static synthetic a(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->G()V

    return-void
.end method

.method static synthetic b(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->w:F

    return p0
.end method

.method static c(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)V
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->G:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    new-instance v2, Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->g:Landroid/graphics/Matrix;

    invoke-direct {v2, v3}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 3
    new-instance v3, Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->g:Landroid/graphics/Matrix;

    invoke-direct {v3, v4}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 4
    new-instance v4, Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->s:Landroid/graphics/RectF;

    invoke-direct {v4, v5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 5
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    .line 6
    iget-object v6, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->d:Landroid/graphics/Matrix;

    iget-object v7, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->s:Landroid/graphics/RectF;

    iget-object v8, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->o:Landroid/graphics/RectF;

    sget-object v9, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v6, v7, v8, v9}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 7
    iget-object v6, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->d:Landroid/graphics/Matrix;

    iget-object v7, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->s:Landroid/graphics/RectF;

    invoke-virtual {v6, v5, v7}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 8
    iget-object v6, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->d:Landroid/graphics/Matrix;

    invoke-virtual {v3, v6}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 9
    invoke-direct {p0, v2, v3, v1}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->N(Landroid/graphics/Matrix;Landroid/graphics/Matrix;Z)V

    .line 10
    invoke-direct {p0, v4, v5}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->O(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 11
    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->F:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->Q:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v1, v2, v0}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->M(Landroid/animation/Animator;Landroid/animation/Animator;Lcom/camerasideas/collagemaker/photoproc/crop/b;)V

    .line 12
    iget-object p0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->E:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/PointF;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->L:Landroid/graphics/PointF;

    return-object p0
.end method

.method static synthetic e(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->q:Landroid/graphics/RectF;

    return-object p0
.end method

.method static synthetic f(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->l:Landroid/graphics/RectF;

    return-object p0
.end method

.method static synthetic g(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/Rect;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->k:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic h(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/Rect;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->r:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic i(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->T:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$e;

    return-object p0
.end method

.method static synthetic j(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/Matrix;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->e:Landroid/graphics/Matrix;

    return-object p0
.end method

.method static synthetic k(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->t:Landroid/graphics/RectF;

    return-object p0
.end method

.method static synthetic l(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/Matrix;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->g:Landroid/graphics/Matrix;

    return-object p0
.end method

.method static m(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->T:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$e;

    check-cast p0, Lcom/camerasideas/collagemaker/activity/ImageCropActivity;

    .line 2
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic n(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->p:Landroid/graphics/RectF;

    return-object p0
.end method

.method static synthetic o(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->x:I

    return p0
.end method

.method static synthetic p(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;Landroid/graphics/RectF;Landroid/graphics/RectF;)F
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->I(Landroid/graphics/RectF;Landroid/graphics/RectF;)F

    move-result p0

    return p0
.end method

.method static synthetic q(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/PointF;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->J(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/PointF;)V

    return-void
.end method

.method static synthetic r(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->b:I

    return p0
.end method

.method static synthetic s(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->y:I

    return p0
.end method

.method static t(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->F:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->F:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method static u(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;Landroid/graphics/RectF;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->D(Landroid/graphics/RectF;Z)V

    return-void
.end method

.method static synthetic v(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;Landroid/graphics/RectF;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->D(Landroid/graphics/RectF;Z)V

    return-void
.end method

.method static synthetic w(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/graphics/RectF;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->s:Landroid/graphics/RectF;

    return-object p0
.end method

.method static synthetic x(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->F:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic y(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->K:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$d;

    return-object p0
.end method

.method static synthetic z(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$d;)Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$d;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->K:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$d;

    return-object p1
.end method


# virtual methods
.method public C(FFZ)V
    .locals 7

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-eqz v1, :cond_0

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, p2, v1

    if-eqz v1, :cond_0

    float-to-double v1, p1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 1
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    float-to-double v5, p2

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v5

    iget v5, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->v:F

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v3

    iget v3, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->w:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v5, v3

    cmpl-double v3, v1, v5

    if-nez v3, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->Q:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->Q:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->end()V

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->F:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->F:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->end()V

    .line 6
    :cond_2
    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->E:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 7
    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->E:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->end()V

    .line 8
    :cond_3
    iput p1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->v:F

    .line 9
    iput p2, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->w:F

    if-eqz p3, :cond_4

    .line 10
    iput v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->v:F

    .line 11
    iput v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->w:F

    :cond_4
    cmpl-float v1, p1, v0

    if-eqz v1, :cond_5

    cmpl-float v1, p2, v0

    if-nez v1, :cond_6

    :cond_5
    if-eqz p3, :cond_9

    .line 12
    :cond_6
    iget-object p3, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->s:Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result p3

    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->s:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float/2addr p3, v0

    div-float/2addr p1, p2

    sub-float p2, p3, p1

    .line 13
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    const/high16 v0, 0x800000

    cmpl-float p2, p2, v0

    if-lez p2, :cond_a

    .line 14
    new-instance p2, Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->s:Landroid/graphics/RectF;

    invoke-direct {p2, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    const/high16 v0, 0x40000000    # 2.0f

    cmpl-float p3, p3, p1

    if-lez p3, :cond_7

    .line 15
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p3

    div-float/2addr p3, p1

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p1

    sub-float/2addr p3, p1

    div-float/2addr p3, v0

    .line 16
    iget p1, p2, Landroid/graphics/RectF;->top:F

    sub-float/2addr p1, p3

    iput p1, p2, Landroid/graphics/RectF;->top:F

    .line 17
    iget p1, p2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr p1, p3

    iput p1, p2, Landroid/graphics/RectF;->bottom:F

    goto :goto_0

    .line 18
    :cond_7
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p3

    mul-float p3, p3, p1

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p1

    sub-float/2addr p3, p1

    div-float/2addr p3, v0

    .line 19
    iget p1, p2, Landroid/graphics/RectF;->left:F

    sub-float/2addr p1, p3

    iput p1, p2, Landroid/graphics/RectF;->left:F

    .line 20
    iget p1, p2, Landroid/graphics/RectF;->right:F

    add-float/2addr p1, p3

    iput p1, p2, Landroid/graphics/RectF;->right:F

    .line 21
    :goto_0
    iget-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->o:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 22
    iget-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->o:Landroid/graphics/RectF;

    invoke-direct {p0, p1, p2}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->I(Landroid/graphics/RectF;Landroid/graphics/RectF;)F

    move-result p1

    .line 23
    new-instance p3, Landroid/graphics/Matrix;

    invoke-direct {p3}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, p1

    .line 24
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result p1

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-virtual {p3, v0, v0, p1, v1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 25
    invoke-virtual {p3, p2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 26
    :cond_8
    new-instance p1, Landroid/graphics/Matrix;

    iget-object p3, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->g:Landroid/graphics/Matrix;

    invoke-direct {p1, p3}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 27
    new-instance p3, Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->g:Landroid/graphics/Matrix;

    invoke-direct {p3, v0}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 28
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->g:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->e:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 29
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->e:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->t:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, p2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 30
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->l:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->t:Landroid/graphics/RectF;

    invoke-direct {p0, v0, v1}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->I(Landroid/graphics/RectF;Landroid/graphics/RectF;)F

    move-result v0

    .line 31
    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->t:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->t:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {p3, v0, v0, v1, v2}, Landroid/graphics/Matrix;->preScale(FFFF)Z

    .line 32
    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->d:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->t:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->t:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 33
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->d:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->j:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->l:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 34
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->j:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->t:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->L:Landroid/graphics/PointF;

    invoke-direct {p0, v0, v1, v2}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->J(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/PointF;)V

    .line 35
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->L:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p3, v1, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 36
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->d:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->o:Landroid/graphics/RectF;

    sget-object v2, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, p2, v1, v2}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 37
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->d:Landroid/graphics/Matrix;

    invoke-virtual {p3, v0}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 38
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->d:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->G:Z

    .line 40
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->s:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-direct {p0, v0, p2}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->O(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    const/4 p2, 0x0

    .line 41
    invoke-direct {p0, p1, p3, p2}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->N(Landroid/graphics/Matrix;Landroid/graphics/Matrix;Z)V

    .line 42
    iget-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->F:Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->Q:Landroid/animation/ValueAnimator;

    new-instance p3, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$c;

    invoke-direct {p3, p0}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$c;-><init>(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->M(Landroid/animation/Animator;Landroid/animation/Animator;Lcom/camerasideas/collagemaker/photoproc/crop/b;)V

    .line 43
    iget-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->E:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_1

    :cond_9
    cmpl-float p1, p1, v0

    if-nez p1, :cond_a

    cmpl-float p1, p2, v0

    if-nez p1, :cond_a

    .line 44
    invoke-direct {p0}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->H()V

    .line 45
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_a
    :goto_1
    return-void
.end method

.method public E()Lcom/camerasideas/collagemaker/filter/ISCropFilter;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->g:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->e:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->e:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->t:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->s:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 3
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->t:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->t:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->t:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float v7, v0, v1

    .line 5
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->l:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    .line 6
    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->l:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    .line 7
    iget-object v2, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->t:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    div-float/2addr v2, v0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v3, v4, v2}, Landroidx/core/app/b;->q(FFF)F

    move-result v2

    .line 8
    iget-object v5, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->t:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    div-float/2addr v5, v1

    invoke-static {v3, v4, v5}, Landroidx/core/app/b;->q(FFF)F

    move-result v5

    .line 9
    iget-object v6, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->t:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    div-float/2addr v6, v0

    invoke-static {v3, v4, v6}, Landroidx/core/app/b;->q(FFF)F

    move-result v0

    .line 10
    iget-object v6, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->t:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    div-float/2addr v6, v1

    invoke-static {v3, v4, v6}, Landroidx/core/app/b;->q(FFF)F

    move-result v6

    add-float v1, v2, v0

    cmpl-float v1, v1, v4

    if-lez v1, :cond_1

    sub-float v1, v4, v0

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    add-float v1, v5, v6

    cmpl-float v1, v1, v4

    if-lez v1, :cond_2

    sub-float/2addr v4, v6

    goto :goto_1

    :cond_2
    move v4, v5

    .line 11
    :goto_1
    new-instance v1, Lcom/camerasideas/collagemaker/filter/ISCropFilter;

    move-object v2, v1

    move v5, v0

    invoke-direct/range {v2 .. v7}, Lcom/camerasideas/collagemaker/filter/ISCropFilter;-><init>(FFFFF)V

    .line 12
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->c:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcm;->l(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 13
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->s(I)V

    :cond_3
    return-object v1
.end method

.method public synthetic F(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->s:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->Q:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public K(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->c:Landroid/graphics/Bitmap;

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->l:Landroid/graphics/RectF;

    const/4 v0, 0x0

    iput v0, p1, Landroid/graphics/RectF;->right:F

    .line 3
    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->l:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 5
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->l:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    int-to-float p1, p1

    iput p1, v0, Landroid/graphics/RectF;->bottom:F

    .line 6
    :goto_0
    invoke-direct {p0}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->H()V

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public L(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->T:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$e;

    return-void
.end method

.method public P()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->g:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->s:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->l:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->i:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->g:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 3
    new-instance v0, Ldp;

    new-instance v1, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$h;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$h;-><init>(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$a;)V

    invoke-direct {v0, v1}, Ldp;-><init>(Ldp$a;)V

    iput-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->P:Ldp;

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$g;

    invoke-direct {v1, p0, v2}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$g;-><init>(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$a;)V

    .line 5
    new-instance v3, Lxo;

    invoke-direct {v3, v0}, Lxo;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x2

    .line 6
    invoke-virtual {v3, v0}, Lxo;->f(I)V

    .line 7
    invoke-virtual {v3, v1}, Lvo;->d(Lzo;)V

    .line 8
    iput-object v3, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->O:Lyo;

    .line 9
    new-instance v0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;

    invoke-direct {v0, p0, v2}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;-><init>(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$a;)V

    iput-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->N:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;

    .line 10
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->u:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->o:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 11
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->u:Landroid/graphics/RectF;

    iget v1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->x:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public Q()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->C:I

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->c:Landroid/graphics/Bitmap;

    .line 3
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->k:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 4
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->o:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    .line 5
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->g:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 6
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->l:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    .line 7
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->u:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    .line 8
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->E:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->E:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->F:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->F:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->Q:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 13
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->Q:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->f:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 3
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->I:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0500b5

    invoke-static {v1, v2}, Landroidx/core/content/a;->b(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->s:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->I:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 5
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->c:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcm;->l(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->c:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->g:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->H:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 7
    :cond_0
    iget v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->B:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 8
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->I:Landroid/graphics/Paint;

    const/4 v1, 0x0

    const/16 v2, 0x1f

    invoke-virtual {p1, v1, v0, v2}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    move-result v0

    .line 9
    iget-object v2, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->s:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->I:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 10
    iget-object v2, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->I:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 11
    iget-object v2, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->c:Landroid/graphics/Bitmap;

    invoke-static {v2}, Lcm;->l(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 12
    iget-object v2, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->c:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->g:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->I:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 13
    :cond_1
    iget-object v2, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->I:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 14
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 15
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->n:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->s:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->m:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v2, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->s:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->m:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget-object v3, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->s:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->m:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget-object v4, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->s:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    iget v5, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->m:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 16
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->D:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->n:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 17
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->D:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 2
    iget-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->o:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->k:Landroid/graphics/Rect;

    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 4
    iput p3, p1, Landroid/graphics/Rect;->top:I

    .line 5
    iput p4, p1, Landroid/graphics/Rect;->right:I

    .line 6
    iput p5, p1, Landroid/graphics/Rect;->bottom:I

    .line 7
    iget-object p1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->o:Landroid/graphics/RectF;

    int-to-float p2, p2

    iget v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->A:I

    int-to-float v1, v0

    add-float/2addr p2, v1

    iput p2, p1, Landroid/graphics/RectF;->left:F

    int-to-float p2, p3

    int-to-float p3, v0

    add-float/2addr p2, p3

    .line 8
    iput p2, p1, Landroid/graphics/RectF;->top:F

    int-to-float p2, p4

    int-to-float p3, v0

    sub-float/2addr p2, p3

    .line 9
    iput p2, p1, Landroid/graphics/RectF;->right:F

    int-to-float p2, p5

    mul-int/lit8 v0, v0, 0x2

    int-to-float p3, v0

    sub-float/2addr p2, p3

    .line 10
    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    .line 11
    invoke-direct {p0}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->H()V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    add-int/2addr v0, v1

    .line 6
    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->c:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    add-int/2addr v2, v3

    .line 8
    iget-object v1, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->c:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 9
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    add-int/2addr v2, v1

    .line 10
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, p2, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$d;->b:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$d;

    iput-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->K:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$d;

    .line 3
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->u:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    sget-object v0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$d;->g:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$d;

    iput-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->K:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$d;

    .line 5
    :cond_0
    sget-object v0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->a0:[I

    const/4 v1, 0x6

    if-eqz v0, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$d;->values()[Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$d;

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 7
    sput-object v0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->a0:[I

    .line 8
    :goto_0
    iget-object v2, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->K:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$d;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_7

    const/4 v3, 0x2

    if-eq v0, v3, :cond_5

    const/4 v3, 0x3

    if-eq v0, v3, :cond_4

    const/4 v3, 0x4

    if-eq v0, v3, :cond_3

    if-eq v0, v1, :cond_2

    const/4 p1, 0x0

    return p1

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->P:Ldp;

    invoke-virtual {v0, p1}, Ldp;->a(Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 10
    :cond_3
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->O:Lyo;

    invoke-interface {v0, p1}, Lyo;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 11
    :cond_4
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->N:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;

    invoke-static {v0, p1}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->a(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 12
    :cond_5
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->F:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 13
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->F:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 14
    :cond_6
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->N:Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;

    invoke-static {v0, p1}, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;->a(Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView$f;Landroid/view/MotionEvent;)Z

    .line 15
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->P:Ldp;

    invoke-virtual {v0, p1}, Ldp;->a(Landroid/view/MotionEvent;)Z

    .line 16
    iget-object v0, p0, Lcom/camerasideas/collagemaker/photoproc/crop/CropEditorView;->O:Lyo;

    invoke-interface {v0, p1}, Lyo;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_7
    :goto_1
    return v2

    nop

    :array_0
    .array-data 4
        0x2
        0x3
        0x4
        0x6
        0x1
        0x5
    .end array-data
.end method
