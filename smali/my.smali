.class public Lmy;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Landroidx/core/graphics/drawable/b;
.implements Lty;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmy$b;
    }
.end annotation


# static fields
.field private static final w:Landroid/graphics/Paint;


# instance fields
.field private b:Lmy$b;

.field private final c:[Lsy$g;

.field private final d:[Lsy$g;

.field private e:Z

.field private final f:Landroid/graphics/Matrix;

.field private final g:Landroid/graphics/Path;

.field private final h:Landroid/graphics/Path;

.field private final i:Landroid/graphics/RectF;

.field private final j:Landroid/graphics/RectF;

.field private final k:Landroid/graphics/Region;

.field private final l:Landroid/graphics/Region;

.field private m:Lqy;

.field private final n:Landroid/graphics/Paint;

.field private final o:Landroid/graphics/Paint;

.field private final p:Ley;

.field private final q:Lry$a;

.field private final r:Lry;

.field private s:Landroid/graphics/PorterDuffColorFilter;

.field private t:Landroid/graphics/PorterDuffColorFilter;

.field private u:Landroid/graphics/Rect;

.field private final v:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lmy;->w:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 2
    new-instance v0, Lqy;

    invoke-direct {v0}, Lqy;-><init>()V

    invoke-direct {p0, v0}, Lmy;-><init>(Lqy;)V

    return-void
.end method

.method private constructor <init>(Lmy$b;)V
    .locals 3

    .line 4
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [Lsy$g;

    .line 5
    iput-object v1, p0, Lmy;->c:[Lsy$g;

    new-array v0, v0, [Lsy$g;

    .line 6
    iput-object v0, p0, Lmy;->d:[Lsy$g;

    .line 7
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lmy;->f:Landroid/graphics/Matrix;

    .line 8
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lmy;->g:Landroid/graphics/Path;

    .line 9
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lmy;->h:Landroid/graphics/Path;

    .line 10
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lmy;->i:Landroid/graphics/RectF;

    .line 11
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lmy;->j:Landroid/graphics/RectF;

    .line 12
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lmy;->k:Landroid/graphics/Region;

    .line 13
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lmy;->l:Landroid/graphics/Region;

    .line 14
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lmy;->n:Landroid/graphics/Paint;

    .line 15
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lmy;->o:Landroid/graphics/Paint;

    .line 16
    new-instance v1, Ley;

    invoke-direct {v1}, Ley;-><init>()V

    iput-object v1, p0, Lmy;->p:Ley;

    .line 17
    new-instance v1, Lry;

    invoke-direct {v1}, Lry;-><init>()V

    iput-object v1, p0, Lmy;->r:Lry;

    .line 18
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lmy;->v:Landroid/graphics/RectF;

    .line 19
    iput-object p1, p0, Lmy;->b:Lmy$b;

    .line 20
    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 21
    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 22
    sget-object p1, Lmy;->w:Landroid/graphics/Paint;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 23
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 24
    invoke-direct {p0}, Lmy;->S()Z

    .line 25
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-direct {p0, p1}, Lmy;->R([I)Z

    .line 26
    new-instance p1, Lmy$a;

    invoke-direct {p1, p0}, Lmy$a;-><init>(Lmy;)V

    iput-object p1, p0, Lmy;->q:Lry$a;

    return-void
.end method

.method synthetic constructor <init>(Lmy$b;Lmy$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lmy;-><init>(Lmy$b;)V

    return-void
.end method

.method public constructor <init>(Lqy;)V
    .locals 2

    .line 3
    new-instance v0, Lmy$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lmy$b;-><init>(Lqy;Ltx;)V

    invoke-direct {p0, v0}, Lmy;-><init>(Lmy$b;)V

    return-void
.end method

.method private R([I)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lmy;->b:Lmy$b;

    iget-object v0, v0, Lmy$b;->d:Landroid/content/res/ColorStateList;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lmy;->n:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    .line 3
    iget-object v2, p0, Lmy;->b:Lmy$b;

    iget-object v2, v2, Lmy$b;->d:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, p1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lmy;->n:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    :goto_0
    iget-object v2, p0, Lmy;->b:Lmy$b;

    iget-object v2, v2, Lmy$b;->e:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_1

    .line 6
    iget-object v2, p0, Lmy;->o:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    .line 7
    iget-object v3, p0, Lmy;->b:Lmy$b;

    iget-object v3, v3, Lmy$b;->e:Landroid/content/res/ColorStateList;

    .line 8
    invoke-virtual {v3, p1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    if-eq v2, p1, :cond_1

    .line 9
    iget-object v0, p0, Lmy;->o:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    return v1
.end method

.method private S()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lmy;->s:Landroid/graphics/PorterDuffColorFilter;

    .line 2
    iget-object v1, p0, Lmy;->t:Landroid/graphics/PorterDuffColorFilter;

    .line 3
    iget-object v2, p0, Lmy;->b:Lmy$b;

    iget-object v3, v2, Lmy$b;->g:Landroid/content/res/ColorStateList;

    iget-object v2, v2, Lmy$b;->h:Landroid/graphics/PorterDuff$Mode;

    iget-object v4, p0, Lmy;->n:Landroid/graphics/Paint;

    const/4 v5, 0x1

    .line 4
    invoke-direct {p0, v3, v2, v4, v5}, Lmy;->h(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Landroid/graphics/Paint;Z)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v2

    iput-object v2, p0, Lmy;->s:Landroid/graphics/PorterDuffColorFilter;

    .line 5
    iget-object v2, p0, Lmy;->b:Lmy$b;

    iget-object v3, v2, Lmy$b;->f:Landroid/content/res/ColorStateList;

    iget-object v2, v2, Lmy$b;->h:Landroid/graphics/PorterDuff$Mode;

    iget-object v4, p0, Lmy;->o:Landroid/graphics/Paint;

    const/4 v6, 0x0

    .line 6
    invoke-direct {p0, v3, v2, v4, v6}, Lmy;->h(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Landroid/graphics/Paint;Z)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v2

    iput-object v2, p0, Lmy;->t:Landroid/graphics/PorterDuffColorFilter;

    .line 7
    iget-object v2, p0, Lmy;->b:Lmy$b;

    iget-boolean v3, v2, Lmy$b;->u:Z

    if-eqz v3, :cond_0

    .line 8
    iget-object v3, p0, Lmy;->p:Ley;

    iget-object v2, v2, Lmy$b;->g:Landroid/content/res/ColorStateList;

    .line 9
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v4

    invoke-virtual {v2, v4, v6}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    .line 10
    invoke-virtual {v3, v2}, Ley;->d(I)V

    .line 11
    :cond_0
    iget-object v2, p0, Lmy;->s:Landroid/graphics/PorterDuffColorFilter;

    .line 12
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 13
    iget-object v0, p0, Lmy;->t:Landroid/graphics/PorterDuffColorFilter;

    .line 14
    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :cond_2
    :goto_0
    return v5
.end method

.method private T()V
    .locals 4

    .line 1
    iget-object v0, p0, Lmy;->b:Lmy$b;

    iget v1, v0, Lmy$b;->o:F

    .line 2
    iget v2, v0, Lmy$b;->p:F

    add-float/2addr v1, v2

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float v2, v2, v1

    float-to-double v2, v2

    .line 3
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, v0, Lmy$b;->r:I

    .line 4
    iget-object v0, p0, Lmy;->b:Lmy$b;

    const/high16 v2, 0x3e800000    # 0.25f

    mul-float v1, v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, v0, Lmy$b;->s:I

    .line 5
    invoke-direct {p0}, Lmy;->S()Z

    .line 6
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method static synthetic b(Lmy;)[Lsy$g;
    .locals 0

    .line 1
    iget-object p0, p0, Lmy;->c:[Lsy$g;

    return-object p0
.end method

.method static synthetic c(Lmy;)[Lsy$g;
    .locals 0

    .line 1
    iget-object p0, p0, Lmy;->d:[Lsy$g;

    return-object p0
.end method

.method static synthetic d(Lmy;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lmy;->e:Z

    return p1
.end method

.method private f(Landroid/graphics/RectF;Landroid/graphics/Path;)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1, p2}, Lmy;->g(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    .line 2
    iget-object v0, p0, Lmy;->b:Lmy$b;

    iget v0, v0, Lmy$b;->j:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lmy;->f:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 4
    iget-object v0, p0, Lmy;->f:Landroid/graphics/Matrix;

    iget-object v1, p0, Lmy;->b:Lmy$b;

    iget v1, v1, Lmy$b;->j:F

    .line 5
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    div-float/2addr p1, v3

    .line 6
    invoke-virtual {v0, v1, v1, v2, p1}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 7
    iget-object p1, p0, Lmy;->f:Landroid/graphics/Matrix;

    invoke-virtual {p2, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 8
    :cond_0
    iget-object p1, p0, Lmy;->v:Landroid/graphics/RectF;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    return-void
.end method

.method private h(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Landroid/graphics/Paint;Z)Landroid/graphics/PorterDuffColorFilter;
    .locals 1

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    if-eqz p4, :cond_1

    .line 2
    invoke-direct {p0, p1}, Lmy;->i(I)I

    move-result p1

    .line 3
    :cond_1
    new-instance p3, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {p3, p1, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_2

    :cond_2
    :goto_0
    if-eqz p4, :cond_3

    .line 4
    invoke-virtual {p3}, Landroid/graphics/Paint;->getColor()I

    move-result p1

    .line 5
    invoke-direct {p0, p1}, Lmy;->i(I)I

    move-result p2

    if-eq p2, p1, :cond_3

    .line 6
    new-instance p1, Landroid/graphics/PorterDuffColorFilter;

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p2, p3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    move-object p3, p1

    :goto_2
    return-object p3
.end method

.method private i(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Lmy;->b:Lmy$b;

    iget v1, v0, Lmy$b;->o:F

    .line 2
    iget v2, v0, Lmy$b;->p:F

    add-float/2addr v1, v2

    .line 3
    iget v2, v0, Lmy$b;->n:F

    add-float/2addr v1, v2

    .line 4
    iget-object v0, v0, Lmy$b;->b:Ltx;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1, v1}, Ltx;->a(IF)I

    move-result p1

    :cond_0
    return p1
.end method

.method public static j(Landroid/content/Context;F)Lmy;
    .locals 4

    .line 1
    const-class v0, Lmy;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0300c0

    .line 3
    invoke-static {p0, v1, v0}, Landroidx/core/app/b;->x0(Landroid/content/Context;ILjava/lang/String;)I

    move-result v0

    .line 4
    new-instance v1, Lmy;

    invoke-direct {v1}, Lmy;-><init>()V

    .line 5
    iget-object v2, v1, Lmy;->b:Lmy$b;

    new-instance v3, Ltx;

    invoke-direct {v3, p0}, Ltx;-><init>(Landroid/content/Context;)V

    iput-object v3, v2, Lmy$b;->b:Ltx;

    .line 6
    invoke-direct {v1}, Lmy;->T()V

    .line 7
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {v1, p0}, Lmy;->F(Landroid/content/res/ColorStateList;)V

    .line 8
    iget-object p0, v1, Lmy;->b:Lmy$b;

    iget v0, p0, Lmy$b;->o:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 9
    iput p1, p0, Lmy$b;->o:F

    .line 10
    invoke-direct {v1}, Lmy;->T()V

    :cond_0
    return-object v1
.end method

.method private l(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Lqy;Landroid/graphics/RectF;)V
    .locals 1

    .line 1
    invoke-virtual {p4, p5}, Lqy;->n(Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p3, p4, Lqy;->f:Liy;

    .line 3
    invoke-interface {p3, p5}, Liy;->a(Landroid/graphics/RectF;)F

    move-result p3

    .line 4
    invoke-virtual {p1, p5, p3, p3, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method private p()Landroid/graphics/RectF;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lmy;->o()Landroid/graphics/RectF;

    move-result-object v0

    .line 2
    invoke-direct {p0}, Lmy;->w()F

    move-result v1

    .line 3
    iget-object v2, p0, Lmy;->j:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v1

    iget v4, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v1

    iget v5, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v5, v1

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 4
    iget-object v0, p0, Lmy;->j:Landroid/graphics/RectF;

    return-object v0
.end method

.method private w()F
    .locals 2

    .line 1
    invoke-direct {p0}, Lmy;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lmy;->o:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private z()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lmy;->b:Lmy$b;

    iget-object v0, v0, Lmy$b;->v:Landroid/graphics/Paint$Style;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    if-eq v0, v1, :cond_0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lmy;->o:Landroid/graphics/Paint;

    .line 2
    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public A(Landroid/content/Context;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lmy;->b:Lmy$b;

    new-instance v1, Ltx;

    invoke-direct {v1, p1}, Ltx;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lmy$b;->b:Ltx;

    .line 2
    invoke-direct {p0}, Lmy;->T()V

    return-void
.end method

.method public B()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lmy;->b:Lmy$b;

    iget-object v0, v0, Lmy$b;->b:Ltx;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ltx;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public C()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lmy;->b:Lmy$b;

    iget-object v0, v0, Lmy$b;->a:Lqy;

    invoke-virtual {p0}, Lmy;->o()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lqy;->n(Landroid/graphics/RectF;)Z

    move-result v0

    return v0
.end method

.method public D(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmy;->b:Lmy$b;

    iget-object v0, v0, Lmy$b;->a:Lqy;

    invoke-virtual {v0, p1}, Lqy;->o(F)Lqy;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lmy;->b:Lmy$b;

    iput-object p1, v0, Lmy$b;->a:Lqy;

    .line 3
    invoke-virtual {p0}, Lmy;->invalidateSelf()V

    return-void
.end method

.method public E(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lmy;->b:Lmy$b;

    iget v1, v0, Lmy$b;->o:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    .line 2
    iput p1, v0, Lmy$b;->o:F

    .line 3
    invoke-direct {p0}, Lmy;->T()V

    :cond_0
    return-void
.end method

.method public F(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lmy;->b:Lmy$b;

    iget-object v1, v0, Lmy$b;->d:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_0

    .line 2
    iput-object p1, v0, Lmy$b;->d:Landroid/content/res/ColorStateList;

    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lmy;->onStateChange([I)Z

    :cond_0
    return-void
.end method

.method public G(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lmy;->b:Lmy$b;

    iget v1, v0, Lmy$b;->k:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    .line 2
    iput p1, v0, Lmy$b;->k:F

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lmy;->e:Z

    .line 4
    invoke-virtual {p0}, Lmy;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public H(IIII)V
    .locals 2

    .line 1
    iget-object v0, p0, Lmy;->b:Lmy$b;

    iget-object v1, v0, Lmy$b;->i:Landroid/graphics/Rect;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lmy$b;->i:Landroid/graphics/Rect;

    .line 3
    :cond_0
    iget-object v0, p0, Lmy;->b:Lmy$b;

    iget-object v0, v0, Lmy$b;->i:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 4
    iget-object p1, p0, Lmy;->b:Lmy$b;

    iget-object p1, p1, Lmy$b;->i:Landroid/graphics/Rect;

    iput-object p1, p0, Lmy;->u:Landroid/graphics/Rect;

    .line 5
    invoke-virtual {p0}, Lmy;->invalidateSelf()V

    return-void
.end method

.method public I(Landroid/graphics/Paint$Style;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmy;->b:Lmy$b;

    iput-object p1, v0, Lmy$b;->v:Landroid/graphics/Paint$Style;

    .line 2
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public J(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lmy;->b:Lmy$b;

    iget v1, v0, Lmy$b;->n:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    .line 2
    iput p1, v0, Lmy$b;->n:F

    .line 3
    invoke-direct {p0}, Lmy;->T()V

    :cond_0
    return-void
.end method

.method public K(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmy;->p:Ley;

    invoke-virtual {v0, p1}, Ley;->d(I)V

    .line 2
    iget-object p1, p0, Lmy;->b:Lmy$b;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lmy$b;->u:Z

    .line 3
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public L(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lmy;->b:Lmy$b;

    iget v1, v0, Lmy$b;->t:I

    if-eq v1, p1, :cond_0

    .line 2
    iput p1, v0, Lmy$b;->t:I

    .line 3
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public M(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lmy;->b:Lmy$b;

    iget v1, v0, Lmy$b;->q:I

    if-eq v1, p1, :cond_0

    .line 2
    iput p1, v0, Lmy$b;->q:I

    .line 3
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public N(FI)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmy;->b:Lmy$b;

    iput p1, v0, Lmy$b;->l:F

    .line 2
    invoke-virtual {p0}, Lmy;->invalidateSelf()V

    .line 3
    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmy;->P(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public O(FLandroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmy;->b:Lmy$b;

    iput p1, v0, Lmy$b;->l:F

    .line 2
    invoke-virtual {p0}, Lmy;->invalidateSelf()V

    .line 3
    invoke-virtual {p0, p2}, Lmy;->P(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public P(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lmy;->b:Lmy$b;

    iget-object v1, v0, Lmy$b;->e:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_0

    .line 2
    iput-object p1, v0, Lmy$b;->e:Landroid/content/res/ColorStateList;

    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lmy;->onStateChange([I)Z

    :cond_0
    return-void
.end method

.method public Q(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmy;->b:Lmy$b;

    iput p1, v0, Lmy$b;->l:F

    .line 2
    invoke-virtual {p0}, Lmy;->invalidateSelf()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 1
    iget-object v0, p0, Lmy;->n:Landroid/graphics/Paint;

    iget-object v1, p0, Lmy;->s:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 2
    iget-object v0, p0, Lmy;->n:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    .line 3
    iget-object v1, p0, Lmy;->n:Landroid/graphics/Paint;

    iget-object v2, p0, Lmy;->b:Lmy$b;

    iget v2, v2, Lmy$b;->m:I

    ushr-int/lit8 v3, v2, 0x7

    add-int/2addr v2, v3

    mul-int v2, v2, v0

    ushr-int/lit8 v2, v2, 0x8

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 4
    iget-object v1, p0, Lmy;->o:Landroid/graphics/Paint;

    iget-object v2, p0, Lmy;->t:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 5
    iget-object v1, p0, Lmy;->o:Landroid/graphics/Paint;

    iget-object v2, p0, Lmy;->b:Lmy$b;

    iget v2, v2, Lmy$b;->l:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 6
    iget-object v1, p0, Lmy;->o:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    .line 7
    iget-object v2, p0, Lmy;->o:Landroid/graphics/Paint;

    iget-object v3, p0, Lmy;->b:Lmy$b;

    iget v3, v3, Lmy$b;->m:I

    ushr-int/lit8 v4, v3, 0x7

    add-int/2addr v3, v4

    mul-int v3, v3, v1

    ushr-int/lit8 v3, v3, 0x8

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 8
    iget-boolean v2, p0, Lmy;->e:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    .line 9
    invoke-direct {p0}, Lmy;->w()F

    move-result v2

    neg-float v2, v2

    .line 10
    iget-object v4, p0, Lmy;->b:Lmy$b;

    iget-object v4, v4, Lmy$b;->a:Lqy;

    .line 11
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    new-instance v5, Lqy$b;

    invoke-direct {v5, v4}, Lqy$b;-><init>(Lqy;)V

    .line 13
    iget-object v6, v4, Lqy;->e:Liy;

    .line 14
    instance-of v7, v6, Loy;

    if-eqz v7, :cond_0

    goto :goto_0

    :cond_0
    new-instance v7, Lhy;

    invoke-direct {v7, v2, v6}, Lhy;-><init>(FLiy;)V

    move-object v6, v7

    .line 15
    :goto_0
    invoke-virtual {v5, v6}, Lqy$b;->y(Liy;)Lqy$b;

    .line 16
    iget-object v6, v4, Lqy;->f:Liy;

    .line 17
    instance-of v7, v6, Loy;

    if-eqz v7, :cond_1

    goto :goto_1

    :cond_1
    new-instance v7, Lhy;

    invoke-direct {v7, v2, v6}, Lhy;-><init>(FLiy;)V

    move-object v6, v7

    .line 18
    :goto_1
    invoke-virtual {v5, v6}, Lqy$b;->B(Liy;)Lqy$b;

    .line 19
    iget-object v6, v4, Lqy;->h:Liy;

    .line 20
    instance-of v7, v6, Loy;

    if-eqz v7, :cond_2

    goto :goto_2

    :cond_2
    new-instance v7, Lhy;

    invoke-direct {v7, v2, v6}, Lhy;-><init>(FLiy;)V

    move-object v6, v7

    .line 21
    :goto_2
    invoke-virtual {v5, v6}, Lqy$b;->r(Liy;)Lqy$b;

    .line 22
    iget-object v4, v4, Lqy;->g:Liy;

    .line 23
    instance-of v6, v4, Loy;

    if-eqz v6, :cond_3

    goto :goto_3

    :cond_3
    new-instance v6, Lhy;

    invoke-direct {v6, v2, v4}, Lhy;-><init>(FLiy;)V

    move-object v4, v6

    .line 24
    :goto_3
    invoke-virtual {v5, v4}, Lqy$b;->u(Liy;)Lqy$b;

    .line 25
    invoke-virtual {v5}, Lqy$b;->m()Lqy;

    move-result-object v7

    .line 26
    iput-object v7, p0, Lmy;->m:Lqy;

    .line 27
    iget-object v6, p0, Lmy;->r:Lry;

    iget-object v2, p0, Lmy;->b:Lmy$b;

    iget v8, v2, Lmy$b;->k:F

    .line 28
    invoke-direct {p0}, Lmy;->p()Landroid/graphics/RectF;

    move-result-object v9

    iget-object v11, p0, Lmy;->h:Landroid/graphics/Path;

    const/4 v10, 0x0

    .line 29
    invoke-virtual/range {v6 .. v11}, Lry;->a(Lqy;FLandroid/graphics/RectF;Lry$a;Landroid/graphics/Path;)V

    .line 30
    invoke-virtual {p0}, Lmy;->o()Landroid/graphics/RectF;

    move-result-object v2

    iget-object v4, p0, Lmy;->g:Landroid/graphics/Path;

    invoke-direct {p0, v2, v4}, Lmy;->f(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    .line 31
    iput-boolean v3, p0, Lmy;->e:Z

    .line 32
    :cond_4
    iget-object v2, p0, Lmy;->b:Lmy$b;

    iget v4, v2, Lmy$b;->q:I

    const/16 v5, 0x15

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eq v4, v7, :cond_8

    iget v2, v2, Lmy$b;->r:I

    if-lez v2, :cond_8

    if-eq v4, v6, :cond_7

    .line 33
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v5, :cond_6

    invoke-virtual {p0}, Lmy;->C()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lmy;->g:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->isConvex()Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    goto :goto_5

    :cond_6
    :goto_4
    const/4 v2, 0x1

    :goto_5
    if-eqz v2, :cond_8

    :cond_7
    const/4 v2, 0x1

    goto :goto_6

    :cond_8
    const/4 v2, 0x0

    :goto_6
    if-eqz v2, :cond_c

    .line 34
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 35
    invoke-virtual {p0}, Lmy;->s()I

    move-result v2

    .line 36
    invoke-virtual {p0}, Lmy;->t()I

    move-result v4

    .line 37
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v8, v5, :cond_9

    .line 38
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v5

    .line 39
    iget-object v8, p0, Lmy;->b:Lmy$b;

    iget v8, v8, Lmy$b;->r:I

    neg-int v8, v8

    invoke-virtual {v5, v8, v8}, Landroid/graphics/Rect;->inset(II)V

    .line 40
    invoke-virtual {v5, v2, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 41
    sget-object v8, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v5, v8}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    :cond_9
    int-to-float v2, v2

    int-to-float v4, v4

    .line 42
    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 43
    iget-object v2, p0, Lmy;->v:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v2, v4

    float-to-int v2, v2

    .line 44
    iget-object v4, p0, Lmy;->v:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    .line 45
    iget-object v5, p0, Lmy;->v:Landroid/graphics/RectF;

    .line 46
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    float-to-int v5, v5

    iget-object v8, p0, Lmy;->b:Lmy$b;

    iget v8, v8, Lmy$b;->r:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v5

    add-int/2addr v8, v2

    iget-object v5, p0, Lmy;->v:Landroid/graphics/RectF;

    .line 47
    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    float-to-int v5, v5

    iget-object v9, p0, Lmy;->b:Lmy$b;

    iget v9, v9, Lmy$b;->r:I

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v5

    add-int/2addr v9, v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 48
    invoke-static {v8, v9, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 49
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 50
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget-object v9, p0, Lmy;->b:Lmy$b;

    iget v9, v9, Lmy$b;->r:I

    sub-int/2addr v8, v9

    sub-int/2addr v8, v2

    int-to-float v2, v8

    .line 51
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Lmy;->b:Lmy$b;

    iget v9, v9, Lmy$b;->r:I

    sub-int/2addr v8, v9

    sub-int/2addr v8, v4

    int-to-float v4, v8

    neg-float v8, v2

    neg-float v9, v4

    .line 52
    invoke-virtual {v6, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 53
    iget-object v8, p0, Lmy;->b:Lmy$b;

    iget v8, v8, Lmy$b;->s:I

    if-eqz v8, :cond_a

    .line 54
    iget-object v8, p0, Lmy;->g:Landroid/graphics/Path;

    iget-object v9, p0, Lmy;->p:Ley;

    invoke-virtual {v9}, Ley;->c()Landroid/graphics/Paint;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_a
    const/4 v8, 0x0

    :goto_7
    const/4 v9, 0x4

    if-ge v8, v9, :cond_b

    .line 55
    iget-object v9, p0, Lmy;->c:[Lsy$g;

    aget-object v9, v9, v8

    iget-object v10, p0, Lmy;->p:Ley;

    iget-object v11, p0, Lmy;->b:Lmy$b;

    iget v11, v11, Lmy$b;->r:I

    .line 56
    sget-object v12, Lsy$g;->a:Landroid/graphics/Matrix;

    invoke-virtual {v9, v12, v10, v11, v6}, Lsy$g;->a(Landroid/graphics/Matrix;Ley;ILandroid/graphics/Canvas;)V

    .line 57
    iget-object v9, p0, Lmy;->d:[Lsy$g;

    aget-object v9, v9, v8

    iget-object v10, p0, Lmy;->p:Ley;

    iget-object v11, p0, Lmy;->b:Lmy$b;

    iget v11, v11, Lmy$b;->r:I

    .line 58
    invoke-virtual {v9, v12, v10, v11, v6}, Lsy$g;->a(Landroid/graphics/Matrix;Ley;ILandroid/graphics/Canvas;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 59
    :cond_b
    invoke-virtual {p0}, Lmy;->s()I

    move-result v8

    .line 60
    invoke-virtual {p0}, Lmy;->t()I

    move-result v9

    neg-int v10, v8

    int-to-float v10, v10

    neg-int v11, v9

    int-to-float v11, v11

    .line 61
    invoke-virtual {v6, v10, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 62
    iget-object v10, p0, Lmy;->g:Landroid/graphics/Path;

    sget-object v11, Lmy;->w:Landroid/graphics/Paint;

    invoke-virtual {v6, v10, v11}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    int-to-float v8, v8

    int-to-float v9, v9

    .line 63
    invoke-virtual {v6, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v6, 0x0

    .line 64
    invoke-virtual {p1, v5, v2, v4, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 65
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 66
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 67
    :cond_c
    iget-object v2, p0, Lmy;->b:Lmy$b;

    iget-object v4, v2, Lmy$b;->v:Landroid/graphics/Paint$Style;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    if-eq v4, v5, :cond_d

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    if-ne v4, v5, :cond_e

    :cond_d
    const/4 v3, 0x1

    :cond_e
    if-eqz v3, :cond_f

    .line 68
    iget-object v6, p0, Lmy;->n:Landroid/graphics/Paint;

    iget-object v7, p0, Lmy;->g:Landroid/graphics/Path;

    iget-object v8, v2, Lmy$b;->a:Lqy;

    invoke-virtual {p0}, Lmy;->o()Landroid/graphics/RectF;

    move-result-object v9

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v4 .. v9}, Lmy;->l(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Lqy;Landroid/graphics/RectF;)V

    .line 69
    :cond_f
    invoke-direct {p0}, Lmy;->z()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 70
    iget-object v5, p0, Lmy;->o:Landroid/graphics/Paint;

    iget-object v6, p0, Lmy;->h:Landroid/graphics/Path;

    iget-object v7, p0, Lmy;->m:Lqy;

    .line 71
    invoke-direct {p0}, Lmy;->p()Landroid/graphics/RectF;

    move-result-object v8

    move-object v3, p0

    move-object v4, p1

    .line 72
    invoke-direct/range {v3 .. v8}, Lmy;->l(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Lqy;Landroid/graphics/RectF;)V

    .line 73
    :cond_10
    iget-object p1, p0, Lmy;->n:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 74
    iget-object p1, p0, Lmy;->o:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public e(Lqy;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmy;->b:Lmy$b;

    iput-object p1, v0, Lmy$b;->a:Lqy;

    .line 2
    invoke-virtual {p0}, Lmy;->invalidateSelf()V

    return-void
.end method

.method protected final g(Landroid/graphics/RectF;Landroid/graphics/Path;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lmy;->r:Lry;

    iget-object v1, p0, Lmy;->b:Lmy$b;

    iget-object v2, v1, Lmy$b;->a:Lqy;

    iget v3, v1, Lmy$b;->k:F

    iget-object v4, p0, Lmy;->q:Lry$a;

    move-object v1, v2

    move v2, v3

    move-object v3, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lry;->a(Lqy;FLandroid/graphics/RectF;Lry$a;Landroid/graphics/Path;)V

    return-void
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    .line 1
    iget-object v0, p0, Lmy;->b:Lmy$b;

    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1
    iget-object v0, p0, Lmy;->b:Lmy$b;

    iget v0, v0, Lmy$b;->q:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lmy;->C()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lmy;->x()F

    move-result v0

    .line 4
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    return-void

    .line 5
    :cond_1
    invoke-virtual {p0}, Lmy;->o()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lmy;->g:Landroid/graphics/Path;

    invoke-direct {p0, v0, v1}, Lmy;->f(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    .line 6
    iget-object v0, p0, Lmy;->g:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isConvex()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lmy;->g:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Outline;->setConvexPath(Landroid/graphics/Path;)V

    :cond_2
    return-void
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lmy;->u:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 p1, 0x1

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public getTransparentRegion()Landroid/graphics/Region;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lmy;->k:Landroid/graphics/Region;

    invoke-virtual {v1, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 3
    invoke-virtual {p0}, Lmy;->o()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lmy;->g:Landroid/graphics/Path;

    invoke-direct {p0, v0, v1}, Lmy;->f(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    .line 4
    iget-object v0, p0, Lmy;->l:Landroid/graphics/Region;

    iget-object v1, p0, Lmy;->g:Landroid/graphics/Path;

    iget-object v2, p0, Lmy;->k:Landroid/graphics/Region;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    .line 5
    iget-object v0, p0, Lmy;->k:Landroid/graphics/Region;

    iget-object v1, p0, Lmy;->l:Landroid/graphics/Region;

    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 6
    iget-object v0, p0, Lmy;->k:Landroid/graphics/Region;

    return-object v0
.end method

.method public invalidateSelf()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lmy;->e:Z

    .line 2
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public isStateful()Z
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lmy;->b:Lmy$b;

    iget-object v0, v0, Lmy$b;->g:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_0
    iget-object v0, p0, Lmy;->b:Lmy$b;

    iget-object v0, v0, Lmy$b;->f:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_1
    iget-object v0, p0, Lmy;->b:Lmy$b;

    iget-object v0, v0, Lmy$b;->e:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    iget-object v0, p0, Lmy;->b:Lmy$b;

    iget-object v0, v0, Lmy$b;->d:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_3

    .line 5
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected k(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Landroid/graphics/RectF;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lmy;->b:Lmy$b;

    iget-object v5, v0, Lmy$b;->a:Lqy;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lmy;->l(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Lqy;Landroid/graphics/RectF;)V

    return-void
.end method

.method public m()F
    .locals 2

    .line 1
    iget-object v0, p0, Lmy;->b:Lmy$b;

    iget-object v0, v0, Lmy$b;->a:Lqy;

    .line 2
    iget-object v0, v0, Lqy;->h:Liy;

    .line 3
    invoke-virtual {p0}, Lmy;->o()Landroid/graphics/RectF;

    move-result-object v1

    invoke-interface {v0, v1}, Liy;->a(Landroid/graphics/RectF;)F

    move-result v0

    return v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    new-instance v0, Lmy$b;

    iget-object v1, p0, Lmy;->b:Lmy$b;

    invoke-direct {v0, v1}, Lmy$b;-><init>(Lmy$b;)V

    .line 2
    iput-object v0, p0, Lmy;->b:Lmy$b;

    return-object p0
.end method

.method public n()F
    .locals 2

    .line 1
    iget-object v0, p0, Lmy;->b:Lmy$b;

    iget-object v0, v0, Lmy$b;->a:Lqy;

    .line 2
    iget-object v0, v0, Lqy;->g:Liy;

    .line 3
    invoke-virtual {p0}, Lmy;->o()Landroid/graphics/RectF;

    move-result-object v1

    invoke-interface {v0, v1}, Liy;->a(Landroid/graphics/RectF;)F

    move-result v0

    return v0
.end method

.method protected o()Landroid/graphics/RectF;
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lmy;->i:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget v4, v0, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 3
    iget-object v0, p0, Lmy;->i:Landroid/graphics/RectF;

    return-object v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lmy;->e:Z

    .line 2
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    return-void
.end method

.method protected onStateChange([I)Z
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lmy;->R([I)Z

    move-result p1

    .line 2
    invoke-direct {p0}, Lmy;->S()Z

    move-result v0

    if-nez p1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_2

    .line 3
    invoke-virtual {p0}, Lmy;->invalidateSelf()V

    :cond_2
    return p1
.end method

.method public q()F
    .locals 1

    .line 1
    iget-object v0, p0, Lmy;->b:Lmy$b;

    iget v0, v0, Lmy$b;->o:F

    return v0
.end method

.method public r()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Lmy;->b:Lmy$b;

    iget-object v0, v0, Lmy$b;->d:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public s()I
    .locals 5

    .line 1
    iget-object v0, p0, Lmy;->b:Lmy$b;

    iget v1, v0, Lmy$b;->s:I

    int-to-double v1, v1

    iget v0, v0, Lmy$b;->t:I

    int-to-double v3, v0

    .line 2
    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v1

    double-to-int v0, v3

    return v0
.end method

.method public setAlpha(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lmy;->b:Lmy$b;

    iget v1, v0, Lmy$b;->m:I

    if-eq v1, p1, :cond_0

    .line 2
    iput p1, v0, Lmy$b;->m:I

    .line 3
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmy;->b:Lmy$b;

    iput-object p1, v0, Lmy$b;->c:Landroid/graphics/ColorFilter;

    .line 2
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setTint(I)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmy;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmy;->b:Lmy$b;

    iput-object p1, v0, Lmy$b;->g:Landroid/content/res/ColorStateList;

    .line 2
    invoke-direct {p0}, Lmy;->S()Z

    .line 3
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lmy;->b:Lmy$b;

    iget-object v1, v0, Lmy$b;->h:Landroid/graphics/PorterDuff$Mode;

    if-eq v1, p1, :cond_0

    .line 2
    iput-object p1, v0, Lmy$b;->h:Landroid/graphics/PorterDuff$Mode;

    .line 3
    invoke-direct {p0}, Lmy;->S()Z

    .line 4
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public t()I
    .locals 5

    .line 1
    iget-object v0, p0, Lmy;->b:Lmy$b;

    iget v1, v0, Lmy$b;->s:I

    int-to-double v1, v1

    iget v0, v0, Lmy$b;->t:I

    int-to-double v3, v0

    .line 2
    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v1

    double-to-int v0, v3

    return v0
.end method

.method public u()I
    .locals 1

    .line 1
    iget-object v0, p0, Lmy;->b:Lmy$b;

    iget v0, v0, Lmy$b;->r:I

    return v0
.end method

.method public v()Lqy;
    .locals 1

    .line 1
    iget-object v0, p0, Lmy;->b:Lmy$b;

    iget-object v0, v0, Lmy$b;->a:Lqy;

    return-object v0
.end method

.method public x()F
    .locals 2

    .line 1
    iget-object v0, p0, Lmy;->b:Lmy$b;

    iget-object v0, v0, Lmy$b;->a:Lqy;

    .line 2
    iget-object v0, v0, Lqy;->e:Liy;

    .line 3
    invoke-virtual {p0}, Lmy;->o()Landroid/graphics/RectF;

    move-result-object v1

    invoke-interface {v0, v1}, Liy;->a(Landroid/graphics/RectF;)F

    move-result v0

    return v0
.end method

.method public y()F
    .locals 2

    .line 1
    iget-object v0, p0, Lmy;->b:Lmy$b;

    iget-object v0, v0, Lmy$b;->a:Lqy;

    .line 2
    iget-object v0, v0, Lqy;->f:Liy;

    .line 3
    invoke-virtual {p0}, Lmy;->o()Landroid/graphics/RectF;

    move-result-object v1

    invoke-interface {v0, v1}, Liy;->a(Landroid/graphics/RectF;)F

    move-result v0

    return v0
.end method
