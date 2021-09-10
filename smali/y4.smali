.class public Ly4;
.super Lx4;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly4$c;,
        Ly4$b;,
        Ly4$f;,
        Ly4$d;,
        Ly4$e;,
        Ly4$g;,
        Ly4$h;,
        Ly4$i;
    }
.end annotation


# static fields
.field static final k:Landroid/graphics/PorterDuff$Mode;


# instance fields
.field private c:Ly4$h;

.field private d:Landroid/graphics/PorterDuffColorFilter;

.field private e:Landroid/graphics/ColorFilter;

.field private f:Z

.field private g:Z

.field private final h:[F

.field private final i:Landroid/graphics/Matrix;

.field private final j:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Ly4;->k:Landroid/graphics/PorterDuff$Mode;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lx4;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Ly4;->g:Z

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 3
    iput-object v0, p0, Ly4;->h:[F

    .line 4
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Ly4;->i:Landroid/graphics/Matrix;

    .line 5
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Ly4;->j:Landroid/graphics/Rect;

    .line 6
    new-instance v0, Ly4$h;

    invoke-direct {v0}, Ly4$h;-><init>()V

    iput-object v0, p0, Ly4;->c:Ly4$h;

    return-void
.end method

.method constructor <init>(Ly4$h;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Lx4;-><init>()V

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Ly4;->g:Z

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 9
    iput-object v0, p0, Ly4;->h:[F

    .line 10
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Ly4;->i:Landroid/graphics/Matrix;

    .line 11
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Ly4;->j:Landroid/graphics/Rect;

    .line 12
    iput-object p1, p0, Ly4;->c:Ly4$h;

    .line 13
    iget-object v0, p1, Ly4$h;->c:Landroid/content/res/ColorStateList;

    iget-object p1, p1, Ly4$h;->d:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v0, p1}, Ly4;->d(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, Ly4;->d:Landroid/graphics/PorterDuffColorFilter;

    return-void
.end method

.method public static a(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Ly4;
    .locals 1

    .line 1
    new-instance v0, Ly4;

    invoke-direct {v0}, Ly4;-><init>()V

    .line 2
    invoke-virtual {v0, p0, p1, p2, p3}, Ly4;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-object v0
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lx4;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    :cond_0
    return-void
.end method

.method b(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Ly4;->c:Ly4$h;

    iget-object v0, v0, Ly4$h;->b:Ly4$g;

    iget-object v0, v0, Ly4$g;->p:Lx;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, p1, v1}, Le0;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method c(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Ly4;->g:Z

    return-void
.end method

.method public canApplyTheme()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lx4;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method d(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 2

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-super {p0}, Lx4;->getState()[I

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    .line 3
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v0, p1, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lx4;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Ly4;->j:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 4
    iget-object v0, p0, Ly4;->j:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_11

    iget-object v0, p0, Ly4;->j:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-gtz v0, :cond_1

    goto/16 :goto_5

    .line 5
    :cond_1
    iget-object v0, p0, Ly4;->e:Landroid/graphics/ColorFilter;

    if-nez v0, :cond_2

    iget-object v0, p0, Ly4;->d:Landroid/graphics/PorterDuffColorFilter;

    .line 6
    :cond_2
    iget-object v1, p0, Ly4;->i:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    .line 7
    iget-object v1, p0, Ly4;->i:Landroid/graphics/Matrix;

    iget-object v2, p0, Ly4;->h:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->getValues([F)V

    .line 8
    iget-object v1, p0, Ly4;->h:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 9
    iget-object v3, p0, Ly4;->h:[F

    const/4 v4, 0x4

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 10
    iget-object v4, p0, Ly4;->h:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 11
    iget-object v6, p0, Ly4;->h:[F

    const/4 v7, 0x3

    aget v6, v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v7

    if-nez v4, :cond_3

    cmpl-float v4, v6, v7

    if-eqz v4, :cond_4

    :cond_3
    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 12
    :cond_4
    iget-object v4, p0, Ly4;->j:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v1

    float-to-int v1, v4

    .line 13
    iget-object v4, p0, Ly4;->j:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v3

    float-to-int v3, v4

    const/16 v4, 0x800

    .line 14
    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 15
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-lez v1, :cond_11

    if-gtz v3, :cond_5

    goto/16 :goto_5

    .line 16
    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 17
    iget-object v6, p0, Ly4;->j:Landroid/graphics/Rect;

    iget v9, v6, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    invoke-virtual {p1, v9, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 18
    invoke-virtual {p0}, Ly4;->isAutoMirrored()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 19
    invoke-static {p0}, Landroidx/core/graphics/drawable/a;->b(Landroid/graphics/drawable/Drawable;)I

    move-result v6

    if-ne v6, v5, :cond_6

    const/4 v6, 0x1

    goto :goto_0

    :cond_6
    const/4 v6, 0x0

    :goto_0
    if-eqz v6, :cond_7

    .line 20
    iget-object v6, p0, Ly4;->j:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v6, -0x40800000    # -1.0f

    .line 21
    invoke-virtual {p1, v6, v8}, Landroid/graphics/Canvas;->scale(FF)V

    .line 22
    :cond_7
    iget-object v6, p0, Ly4;->j:Landroid/graphics/Rect;

    invoke-virtual {v6, v2, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 23
    iget-object v6, p0, Ly4;->c:Ly4$h;

    .line 24
    iget-object v7, v6, Ly4$h;->f:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_9

    .line 25
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    if-ne v1, v7, :cond_8

    iget-object v7, v6, Ly4$h;->f:Landroid/graphics/Bitmap;

    .line 26
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    if-ne v3, v7, :cond_8

    const/4 v7, 0x1

    goto :goto_1

    :cond_8
    const/4 v7, 0x0

    :goto_1
    if-nez v7, :cond_a

    .line 27
    :cond_9
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v3, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, v6, Ly4$h;->f:Landroid/graphics/Bitmap;

    .line 28
    iput-boolean v5, v6, Ly4$h;->k:Z

    .line 29
    :cond_a
    iget-boolean v6, p0, Ly4;->g:Z

    const/4 v7, 0x0

    if-nez v6, :cond_b

    .line 30
    iget-object v6, p0, Ly4;->c:Ly4$h;

    .line 31
    iget-object v8, v6, Ly4$h;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v8, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 32
    new-instance v8, Landroid/graphics/Canvas;

    iget-object v9, v6, Ly4$h;->f:Landroid/graphics/Bitmap;

    invoke-direct {v8, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 33
    iget-object v6, v6, Ly4$h;->b:Ly4$g;

    invoke-virtual {v6, v8, v1, v3, v7}, Ly4$g;->a(Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V

    goto :goto_3

    .line 34
    :cond_b
    iget-object v6, p0, Ly4;->c:Ly4$h;

    .line 35
    iget-boolean v8, v6, Ly4$h;->k:Z

    if-nez v8, :cond_c

    iget-object v8, v6, Ly4$h;->g:Landroid/content/res/ColorStateList;

    iget-object v9, v6, Ly4$h;->c:Landroid/content/res/ColorStateList;

    if-ne v8, v9, :cond_c

    iget-object v8, v6, Ly4$h;->h:Landroid/graphics/PorterDuff$Mode;

    iget-object v9, v6, Ly4$h;->d:Landroid/graphics/PorterDuff$Mode;

    if-ne v8, v9, :cond_c

    iget-boolean v8, v6, Ly4$h;->j:Z

    iget-boolean v9, v6, Ly4$h;->e:Z

    if-ne v8, v9, :cond_c

    iget v8, v6, Ly4$h;->i:I

    iget-object v6, v6, Ly4$h;->b:Ly4$g;

    .line 36
    invoke-virtual {v6}, Ly4$g;->getRootAlpha()I

    move-result v6

    if-ne v8, v6, :cond_c

    const/4 v6, 0x1

    goto :goto_2

    :cond_c
    const/4 v6, 0x0

    :goto_2
    if-nez v6, :cond_d

    .line 37
    iget-object v6, p0, Ly4;->c:Ly4$h;

    .line 38
    iget-object v8, v6, Ly4$h;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v8, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 39
    new-instance v8, Landroid/graphics/Canvas;

    iget-object v9, v6, Ly4$h;->f:Landroid/graphics/Bitmap;

    invoke-direct {v8, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 40
    iget-object v6, v6, Ly4$h;->b:Ly4$g;

    invoke-virtual {v6, v8, v1, v3, v7}, Ly4$g;->a(Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V

    .line 41
    iget-object v1, p0, Ly4;->c:Ly4$h;

    .line 42
    iget-object v3, v1, Ly4$h;->c:Landroid/content/res/ColorStateList;

    iput-object v3, v1, Ly4$h;->g:Landroid/content/res/ColorStateList;

    .line 43
    iget-object v3, v1, Ly4$h;->d:Landroid/graphics/PorterDuff$Mode;

    iput-object v3, v1, Ly4$h;->h:Landroid/graphics/PorterDuff$Mode;

    .line 44
    iget-object v3, v1, Ly4$h;->b:Ly4$g;

    invoke-virtual {v3}, Ly4$g;->getRootAlpha()I

    move-result v3

    iput v3, v1, Ly4$h;->i:I

    .line 45
    iget-boolean v3, v1, Ly4$h;->e:Z

    iput-boolean v3, v1, Ly4$h;->j:Z

    .line 46
    iput-boolean v2, v1, Ly4$h;->k:Z

    .line 47
    :cond_d
    :goto_3
    iget-object v1, p0, Ly4;->c:Ly4$h;

    iget-object v3, p0, Ly4;->j:Landroid/graphics/Rect;

    .line 48
    iget-object v6, v1, Ly4$h;->b:Ly4$g;

    invoke-virtual {v6}, Ly4$g;->getRootAlpha()I

    move-result v6

    const/16 v8, 0xff

    if-ge v6, v8, :cond_e

    const/4 v2, 0x1

    :cond_e
    if-nez v2, :cond_f

    if-nez v0, :cond_f

    move-object v0, v7

    goto :goto_4

    .line 49
    :cond_f
    iget-object v2, v1, Ly4$h;->l:Landroid/graphics/Paint;

    if-nez v2, :cond_10

    .line 50
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, v1, Ly4$h;->l:Landroid/graphics/Paint;

    .line 51
    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 52
    :cond_10
    iget-object v2, v1, Ly4$h;->l:Landroid/graphics/Paint;

    iget-object v5, v1, Ly4$h;->b:Ly4$g;

    invoke-virtual {v5}, Ly4$g;->getRootAlpha()I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 53
    iget-object v2, v1, Ly4$h;->l:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 54
    iget-object v0, v1, Ly4$h;->l:Landroid/graphics/Paint;

    .line 55
    :goto_4
    iget-object v1, v1, Ly4$h;->f:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1, v7, v3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 56
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_11
    :goto_5
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .line 1
    iget-object v0, p0, Lx4;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Ly4;->c:Ly4$h;

    iget-object v0, v0, Ly4$h;->b:Ly4$g;

    invoke-virtual {v0}, Ly4$g;->getRootAlpha()I

    move-result v0

    return v0
.end method

.method public getChangingConfigurations()I
    .locals 2

    .line 1
    iget-object v0, p0, Lx4;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Ly4;->c:Ly4$h;

    invoke-virtual {v1}, Ly4$h;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 3

    .line 1
    iget-object v0, p0, Lx4;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 4
    :cond_1
    iget-object v0, p0, Ly4;->e:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    .line 1
    iget-object v0, p0, Lx4;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 2
    new-instance v0, Ly4$i;

    iget-object v1, p0, Lx4;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-direct {v0, v1}, Ly4$i;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;)V

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Ly4;->c:Ly4$h;

    invoke-virtual {p0}, Ly4;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Ly4$h;->a:I

    .line 4
    iget-object v0, p0, Ly4;->c:Ly4$h;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Lx4;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Ly4;->c:Ly4$h;

    iget-object v0, v0, Ly4$h;->b:Ly4$g;

    iget v0, v0, Ly4$g;->j:F

    float-to-int v0, v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Lx4;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Ly4;->c:Ly4$h;

    iget-object v0, v0, Ly4$h;->b:Ly4$g;

    iget v0, v0, Ly4$g;->i:F

    float-to-int v0, v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .line 1
    iget-object v0, p0, Lx4;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x3

    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lx4;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, p2, p3, v0}, Ly4;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    .line 4
    iget-object v0, v1, Lx4;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 5
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-lt v6, v7, :cond_0

    .line 6
    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    :goto_0
    return-void

    .line 8
    :cond_1
    iget-object v6, v1, Ly4;->c:Ly4$h;

    .line 9
    new-instance v0, Ly4$g;

    invoke-direct {v0}, Ly4$g;-><init>()V

    .line 10
    iput-object v0, v6, Ly4$h;->b:Ly4$g;

    .line 11
    sget-object v0, Lr4;->a:[I

    invoke-static {v2, v5, v4, v0}, Lc1;->n(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 12
    iget-object v8, v1, Ly4;->c:Ly4$h;

    .line 13
    iget-object v9, v8, Ly4$h;->b:Ly4$g;

    const-string v0, "tintMode"

    .line 14
    invoke-static {v3, v0}, Lc1;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    const/4 v10, -0x1

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x6

    .line 15
    invoke-virtual {v7, v0, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    .line 16
    :goto_1
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    const/4 v11, 0x5

    const/4 v12, 0x3

    if-eq v10, v12, :cond_4

    if-eq v10, v11, :cond_5

    const/16 v13, 0x9

    if-eq v10, v13, :cond_3

    packed-switch v10, :pswitch_data_0

    goto :goto_2

    .line 17
    :pswitch_0
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    goto :goto_2

    .line 18
    :pswitch_1
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    goto :goto_2

    .line 19
    :pswitch_2
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    goto :goto_2

    .line 20
    :cond_3
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    goto :goto_2

    .line 21
    :cond_4
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    .line 22
    :cond_5
    :goto_2
    iput-object v0, v8, Ly4$h;->d:Landroid/graphics/PorterDuff$Mode;

    const-string v0, "tint"

    .line 23
    invoke-static {v3, v0}, Lc1;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    const/4 v10, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x2

    if-eqz v0, :cond_8

    .line 24
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 25
    invoke-virtual {v7, v13, v0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 26
    iget v15, v0, Landroid/util/TypedValue;->type:I

    if-eq v15, v14, :cond_7

    const/16 v14, 0x1c

    if-lt v15, v14, :cond_6

    const/16 v14, 0x1f

    if-gt v15, v14, :cond_6

    .line 27
    iget v0, v0, Landroid/util/TypedValue;->data:I

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_4

    .line 28
    :cond_6
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 29
    invoke-virtual {v7, v13, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    .line 30
    :try_start_0
    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v14

    .line 31
    invoke-static {v0, v14, v5}, Lc1;->a(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    const-string v14, "CSLCompat"

    const-string v15, "Failed to inflate ColorStateList."

    .line 32
    invoke-static {v14, v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 33
    :cond_7
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to resolve attribute at index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_8
    :goto_3
    const/4 v0, 0x0

    :goto_4
    if-eqz v0, :cond_9

    .line 34
    iput-object v0, v8, Ly4$h;->c:Landroid/content/res/ColorStateList;

    .line 35
    :cond_9
    iget-boolean v0, v8, Ly4$h;->e:Z

    const-string v14, "autoMirrored"

    .line 36
    invoke-static {v3, v14}, Lc1;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_a

    goto :goto_5

    .line 37
    :cond_a
    invoke-virtual {v7, v11, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 38
    :goto_5
    iput-boolean v0, v8, Ly4$h;->e:Z

    const/4 v0, 0x7

    .line 39
    iget v8, v9, Ly4$g;->k:F

    const-string v11, "viewportWidth"

    .line 40
    invoke-static {v3, v11}, Lc1;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_b

    goto :goto_6

    .line 41
    :cond_b
    invoke-virtual {v7, v0, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    .line 42
    :goto_6
    iput v8, v9, Ly4$g;->k:F

    const/16 v0, 0x8

    .line 43
    iget v8, v9, Ly4$g;->l:F

    const-string v11, "viewportHeight"

    .line 44
    invoke-static {v3, v11}, Lc1;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_c

    goto :goto_7

    .line 45
    :cond_c
    invoke-virtual {v7, v0, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    .line 46
    :goto_7
    iput v8, v9, Ly4$g;->l:F

    .line 47
    iget v0, v9, Ly4$g;->k:F

    const/4 v11, 0x0

    cmpg-float v0, v0, v11

    if-lez v0, :cond_21

    cmpg-float v0, v8, v11

    if-lez v0, :cond_20

    .line 48
    iget v0, v9, Ly4$g;->i:F

    invoke-virtual {v7, v12, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, v9, Ly4$g;->i:F

    .line 49
    iget v0, v9, Ly4$g;->j:F

    const/4 v8, 0x2

    invoke-virtual {v7, v8, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, v9, Ly4$g;->j:F

    .line 50
    iget v8, v9, Ly4$g;->i:F

    cmpg-float v8, v8, v11

    if-lez v8, :cond_1f

    cmpg-float v0, v0, v11

    if-lez v0, :cond_1e

    const/4 v0, 0x4

    .line 51
    invoke-virtual {v9}, Ly4$g;->getAlpha()F

    move-result v8

    const-string v11, "alpha"

    .line 52
    invoke-static {v3, v11}, Lc1;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_d

    goto :goto_8

    .line 53
    :cond_d
    invoke-virtual {v7, v0, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    .line 54
    :goto_8
    invoke-virtual {v9, v8}, Ly4$g;->setAlpha(F)V

    .line 55
    invoke-virtual {v7, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 56
    iput-object v0, v9, Ly4$g;->n:Ljava/lang/String;

    .line 57
    iget-object v8, v9, Ly4$g;->p:Lx;

    invoke-virtual {v8, v0, v9}, Le0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    :cond_e
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 59
    invoke-virtual/range {p0 .. p0}, Ly4;->getChangingConfigurations()I

    move-result v0

    iput v0, v6, Ly4$h;->a:I

    .line 60
    iput-boolean v13, v6, Ly4$h;->k:Z

    .line 61
    iget-object v0, v1, Ly4;->c:Ly4$h;

    .line 62
    iget-object v7, v0, Ly4$h;->b:Ly4$g;

    .line 63
    new-instance v8, Ljava/util/ArrayDeque;

    invoke-direct {v8}, Ljava/util/ArrayDeque;-><init>()V

    .line 64
    iget-object v9, v7, Ly4$g;->h:Ly4$d;

    invoke-virtual {v8, v9}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 65
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v9

    .line 66
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v11

    add-int/2addr v11, v13

    const/4 v14, 0x1

    :goto_9
    if-eq v9, v13, :cond_1c

    .line 67
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v15

    if-ge v15, v11, :cond_f

    if-eq v9, v12, :cond_1c

    :cond_f
    const-string v15, "group"

    const/4 v12, 0x2

    if-ne v9, v12, :cond_1a

    .line 68
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 69
    invoke-virtual {v8}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ly4$d;

    const-string v13, "path"

    .line 70
    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_11

    .line 71
    new-instance v9, Ly4$c;

    invoke-direct {v9}, Ly4$c;-><init>()V

    .line 72
    invoke-virtual {v9, v2, v4, v5, v3}, Ly4$c;->d(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 73
    iget-object v12, v12, Ly4$d;->b:Ljava/util/ArrayList;

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    invoke-virtual {v9}, Ly4$f;->getPathName()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_10

    .line 75
    iget-object v12, v7, Ly4$g;->p:Lx;

    invoke-virtual {v9}, Ly4$f;->getPathName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13, v9}, Le0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    :cond_10
    iget v12, v0, Ly4$h;->a:I

    iget v9, v9, Ly4$f;->d:I

    or-int/2addr v9, v12

    iput v9, v0, Ly4$h;->a:I

    const/4 v10, 0x1

    const/4 v12, 0x3

    const/4 v13, 0x2

    const/4 v14, 0x0

    goto/16 :goto_d

    :cond_11
    const-string v13, "clip-path"

    .line 77
    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_17

    .line 78
    new-instance v9, Ly4$b;

    invoke-direct {v9}, Ly4$b;-><init>()V

    const-string v13, "pathData"

    .line 79
    invoke-static {v3, v13}, Lc1;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_12

    const/4 v15, 0x2

    goto :goto_b

    .line 80
    :cond_12
    sget-object v13, Lr4;->d:[I

    invoke-static {v2, v5, v4, v13}, Lc1;->n(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v13

    .line 81
    invoke-virtual {v13, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_13

    .line 82
    iput-object v15, v9, Ly4$f;->b:Ljava/lang/String;

    :cond_13
    const/4 v15, 0x1

    .line 83
    invoke-virtual {v13, v15}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_14

    .line 84
    invoke-static/range {v17 .. v17}, Ll1;->e(Ljava/lang/String;)[Ll1$a;

    move-result-object v15

    iput-object v15, v9, Ly4$f;->a:[Ll1$a;

    :cond_14
    const-string v15, "fillType"

    .line 85
    invoke-static {v3, v15}, Lc1;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_15

    const/4 v15, 0x2

    goto :goto_a

    :cond_15
    const/4 v15, 0x2

    .line 86
    invoke-virtual {v13, v15, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v16

    move/from16 v10, v16

    .line 87
    :goto_a
    iput v10, v9, Ly4$f;->c:I

    .line 88
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 89
    :goto_b
    iget-object v10, v12, Ly4$d;->b:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    invoke-virtual {v9}, Ly4$f;->getPathName()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_16

    .line 91
    iget-object v10, v7, Ly4$g;->p:Lx;

    invoke-virtual {v9}, Ly4$f;->getPathName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12, v9}, Le0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    :cond_16
    iget v10, v0, Ly4$h;->a:I

    iget v9, v9, Ly4$f;->d:I

    or-int/2addr v9, v10

    iput v9, v0, Ly4$h;->a:I

    const/4 v10, 0x1

    const/4 v13, 0x2

    goto :goto_c

    :cond_17
    const/4 v10, 0x1

    const/4 v13, 0x2

    .line 93
    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_19

    .line 94
    new-instance v9, Ly4$d;

    invoke-direct {v9}, Ly4$d;-><init>()V

    .line 95
    invoke-virtual {v9, v2, v4, v5, v3}, Ly4$d;->c(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 96
    iget-object v12, v12, Ly4$d;->b:Ljava/util/ArrayList;

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    invoke-virtual {v8, v9}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 98
    invoke-virtual {v9}, Ly4$d;->getGroupName()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_18

    .line 99
    iget-object v12, v7, Ly4$g;->p:Lx;

    invoke-virtual {v9}, Ly4$d;->getGroupName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15, v9}, Le0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    :cond_18
    iget v12, v0, Ly4$h;->a:I

    iget v9, v9, Ly4$d;->k:I

    or-int/2addr v9, v12

    iput v9, v0, Ly4$h;->a:I

    :cond_19
    :goto_c
    const/4 v12, 0x3

    goto :goto_d

    :cond_1a
    const/4 v10, 0x1

    const/4 v12, 0x3

    const/4 v13, 0x2

    if-ne v9, v12, :cond_1b

    .line 101
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 102
    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1b

    .line 103
    invoke-virtual {v8}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    .line 104
    :cond_1b
    :goto_d
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    const/4 v10, 0x0

    const/4 v13, 0x1

    goto/16 :goto_9

    :cond_1c
    if-nez v14, :cond_1d

    .line 105
    iget-object v0, v6, Ly4$h;->c:Landroid/content/res/ColorStateList;

    iget-object v2, v6, Ly4$h;->d:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Ly4;->d(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, v1, Ly4;->d:Landroid/graphics/PorterDuffColorFilter;

    return-void

    .line 106
    :cond_1d
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "no path defined"

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_1e
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "<vector> tag requires height > 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_1f
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "<vector> tag requires width > 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_20
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "<vector> tag requires viewportHeight > 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_21
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "<vector> tag requires viewportWidth > 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    goto :goto_f

    :goto_e
    throw v0

    :goto_f
    goto :goto_e

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public invalidateSelf()V
    .locals 1

    .line 1
    iget-object v0, p0, Lx4;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public isAutoMirrored()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lx4;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isAutoMirrored()Z

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Ly4;->c:Ly4$h;

    iget-boolean v0, v0, Ly4$h;->e:Z

    return v0
.end method

.method public isStateful()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lx4;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Ly4;->c:Ly4$h;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Ly4$h;->a()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Ly4;->c:Ly4$h;

    iget-object v0, v0, Ly4$h;->c:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    iget-object v0, p0, Lx4;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    return-object p0

    .line 3
    :cond_0
    iget-boolean v0, p0, Ly4;->f:Z

    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_1

    .line 4
    new-instance v0, Ly4$h;

    iget-object v1, p0, Ly4;->c:Ly4$h;

    invoke-direct {v0, v1}, Ly4$h;-><init>(Ly4$h;)V

    iput-object v0, p0, Ly4;->c:Ly4$h;

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Ly4;->f:Z

    :cond_1
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lx4;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method protected onStateChange([I)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lx4;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x0

    .line 3
    iget-object v1, p0, Ly4;->c:Ly4$h;

    .line 4
    iget-object v2, v1, Ly4$h;->c:Landroid/content/res/ColorStateList;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iget-object v4, v1, Ly4$h;->d:Landroid/graphics/PorterDuff$Mode;

    if-eqz v4, :cond_1

    .line 5
    invoke-virtual {p0, v2, v4}, Ly4;->d(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Ly4;->d:Landroid/graphics/PorterDuffColorFilter;

    .line 6
    invoke-virtual {p0}, Ly4;->invalidateSelf()V

    const/4 v0, 0x1

    .line 7
    :cond_1
    invoke-virtual {v1}, Ly4$h;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 8
    iget-object v2, v1, Ly4$h;->b:Ly4$g;

    .line 9
    iget-object v2, v2, Ly4$g;->h:Ly4$d;

    invoke-virtual {v2, p1}, Ly4$d;->b([I)Z

    move-result p1

    .line 10
    iget-boolean v2, v1, Ly4$h;->k:Z

    or-int/2addr v2, p1

    iput-boolean v2, v1, Ly4$h;->k:Z

    if-eqz p1, :cond_2

    .line 11
    invoke-virtual {p0}, Ly4;->invalidateSelf()V

    goto :goto_0

    :cond_2
    move v3, v0

    :goto_0
    return v3
.end method

.method public scheduleSelf(Ljava/lang/Runnable;J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lx4;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lx4;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Ly4;->c:Ly4$h;

    iget-object v0, v0, Ly4$h;->b:Ly4$g;

    invoke-virtual {v0}, Ly4$g;->getRootAlpha()I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 4
    iget-object v0, p0, Ly4;->c:Ly4$h;

    iget-object v0, v0, Ly4$h;->b:Ly4$g;

    invoke-virtual {v0, p1}, Ly4$g;->setRootAlpha(I)V

    .line 5
    invoke-virtual {p0}, Ly4;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public setAutoMirrored(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lx4;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Ly4;->c:Ly4$h;

    iput-boolean p1, v0, Ly4$h;->e:Z

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lx4;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void

    .line 4
    :cond_0
    iput-object p1, p0, Ly4;->e:Landroid/graphics/ColorFilter;

    .line 5
    invoke-virtual {p0}, Ly4;->invalidateSelf()V

    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lx4;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    :cond_0
    return-void
.end method

.method public setHotspot(FF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lx4;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0, p1, p2}, Landroidx/core/graphics/drawable/a;->c(Landroid/graphics/drawable/Drawable;FF)V

    :cond_0
    return-void
.end method

.method public setHotspotBounds(IIII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lx4;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0, p1, p2, p3, p4}, Landroidx/core/graphics/drawable/a;->d(Landroid/graphics/drawable/Drawable;IIII)V

    :cond_0
    return-void
.end method

.method public setTint(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lx4;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/a;->f(Landroid/graphics/drawable/Drawable;I)V

    return-void

    .line 3
    :cond_0
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Ly4;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lx4;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/a;->g(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Ly4;->c:Ly4$h;

    .line 4
    iget-object v1, v0, Ly4$h;->c:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_1

    .line 5
    iput-object p1, v0, Ly4$h;->c:Landroid/content/res/ColorStateList;

    .line 6
    iget-object v0, v0, Ly4$h;->d:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, p1, v0}, Ly4;->d(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, Ly4;->d:Landroid/graphics/PorterDuffColorFilter;

    .line 7
    invoke-virtual {p0}, Ly4;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lx4;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/a;->h(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Ly4;->c:Ly4$h;

    .line 4
    iget-object v1, v0, Ly4$h;->d:Landroid/graphics/PorterDuff$Mode;

    if-eq v1, p1, :cond_1

    .line 5
    iput-object p1, v0, Ly4$h;->d:Landroid/graphics/PorterDuff$Mode;

    .line 6
    iget-object v0, v0, Ly4$h;->c:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0, p1}, Ly4;->d(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, Ly4;->d:Landroid/graphics/PorterDuffColorFilter;

    .line 7
    invoke-virtual {p0}, Ly4;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lx4;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p1

    return p1
.end method

.method public unscheduleSelf(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lx4;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    return-void
.end method
