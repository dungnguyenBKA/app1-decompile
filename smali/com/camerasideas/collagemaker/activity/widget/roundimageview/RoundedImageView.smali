.class public Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "SourceFile"


# static fields
.field public static final t:Landroid/graphics/Shader$TileMode;

.field private static final u:[Landroid/widget/ImageView$ScaleType;


# instance fields
.field private final d:[F

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:Landroid/graphics/drawable/Drawable;

.field private g:Landroid/content/res/ColorStateList;

.field private h:F

.field private i:Landroid/graphics/ColorFilter;

.field private j:Z

.field private k:Landroid/graphics/drawable/Drawable;

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:I

.field private p:I

.field private q:Landroid/widget/ImageView$ScaleType;

.field private r:Landroid/graphics/Shader$TileMode;

.field private s:Landroid/graphics/Shader$TileMode;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;

    .line 2
    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sput-object v0, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->t:Landroid/graphics/Shader$TileMode;

    const/16 v0, 0x8

    new-array v0, v0, [Landroid/widget/ImageView$ScaleType;

    const/4 v1, 0x0

    .line 3
    sget-object v2, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->u:[Landroid/widget/ImageView$ScaleType;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x4

    new-array v1, v0, [F

    .line 3
    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->d:[F

    const/high16 v2, -0x1000000

    .line 4
    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->g:Landroid/content/res/ColorStateList;

    const/4 v3, 0x0

    .line 5
    iput v3, p0, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->h:F

    const/4 v4, 0x0

    .line 6
    iput-object v4, p0, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->i:Landroid/graphics/ColorFilter;

    const/4 v4, 0x0

    .line 7
    iput-boolean v4, p0, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->j:Z

    .line 8
    iput-boolean v4, p0, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->l:Z

    .line 9
    iput-boolean v4, p0, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->m:Z

    .line 10
    iput-boolean v4, p0, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->n:Z

    .line 11
    sget-object v5, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->t:Landroid/graphics/Shader$TileMode;

    iput-object v5, p0, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->r:Landroid/graphics/Shader$TileMode;

    .line 12
    iput-object v5, p0, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->s:Landroid/graphics/Shader$TileMode;

    .line 13
    sget-object v5, Lcom/camerasideas/collagemaker/R$styleable;->j:[I

    invoke-virtual {p1, p2, v5, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    const/4 p3, -0x1

    .line 14
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    if-ltz v5, :cond_0

    .line 15
    sget-object v6, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->u:[Landroid/widget/ImageView$ScaleType;

    aget-object v5, v6, v5

    invoke-virtual {p0, v5}, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 16
    :cond_0
    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v5}, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 17
    :goto_0
    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    int-to-float v5, v5

    const/4 v6, 0x7

    .line 18
    invoke-virtual {p1, v6, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    int-to-float v6, v6

    aput v6, v1, v4

    const/16 v6, 0x8

    .line 19
    invoke-virtual {p1, v6, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    int-to-float v6, v6

    aput v6, v1, p2

    const/4 v6, 0x6

    .line 20
    invoke-virtual {p1, v6, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    int-to-float v6, v6

    const/4 v7, 0x2

    aput v6, v1, v7

    const/4 v6, 0x5

    .line 21
    invoke-virtual {p1, v6, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    int-to-float v6, v6

    const/4 v8, 0x3

    aput v6, v1, v8

    const/4 v1, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 22
    iget-object v9, p0, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->d:[F

    aget v10, v9, v1

    cmpg-float v10, v10, v3

    if-gez v10, :cond_1

    .line 23
    aput v3, v9, v1

    goto :goto_2

    :cond_1
    const/4 v6, 0x1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    if-nez v6, :cond_4

    cmpg-float v0, v5, v3

    if-gez v0, :cond_3

    const/4 v5, 0x0

    .line 24
    :cond_3
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->d:[F

    array-length v0, v0

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_4

    .line 25
    iget-object v6, p0, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->d:[F

    aput v5, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 26
    :cond_4
    invoke-virtual {p1, v8, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    int-to-float p3, p3

    iput p3, p0, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->h:F

    cmpg-float p3, p3, v3

    if-gez p3, :cond_5

    .line 27
    iput v3, p0, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->h:F

    .line 28
    :cond_5
    invoke-virtual {p1, v7}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, p0, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->g:Landroid/content/res/ColorStateList;

    if-nez p3, :cond_6

    .line 29
    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, p0, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->g:Landroid/content/res/ColorStateList;

    :cond_6
    const/16 p3, 0x9

    .line 30
    invoke-virtual {p1, p3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->n:Z

    const/16 p3, 0xa

    .line 31
    invoke-virtual {p1, p3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->m:Z

    const/16 p3, 0xb

    const/4 v0, -0x2

    .line 32
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    if-eq p3, v0, :cond_9

    .line 33
    invoke-static {p3}, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->l(I)Landroid/graphics/Shader$TileMode;

    move-result-object v1

    .line 34
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->r:Landroid/graphics/Shader$TileMode;

    if-ne v2, v1, :cond_7

    goto :goto_4

    .line 35
    :cond_7
    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->r:Landroid/graphics/Shader$TileMode;

    .line 36
    invoke-direct {p0}, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->o()V

    .line 37
    invoke-direct {p0, v4}, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->n(Z)V

    .line 38
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 39
    :goto_4
    invoke-static {p3}, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->l(I)Landroid/graphics/Shader$TileMode;

    move-result-object p3

    .line 40
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->s:Landroid/graphics/Shader$TileMode;

    if-ne v1, p3, :cond_8

    goto :goto_5

    .line 41
    :cond_8
    iput-object p3, p0, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->s:Landroid/graphics/Shader$TileMode;

    .line 42
    invoke-direct {p0}, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->o()V

    .line 43
    invoke-direct {p0, v4}, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->n(Z)V

    .line 44
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_9
    :goto_5
    const/16 p3, 0xc

    .line 45
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    if-eq p3, v0, :cond_b

    .line 46
    invoke-static {p3}, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->l(I)Landroid/graphics/Shader$TileMode;

    move-result-object p3

    .line 47
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->r:Landroid/graphics/Shader$TileMode;

    if-ne v1, p3, :cond_a

    goto :goto_6

    .line 48
    :cond_a
    iput-object p3, p0, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->r:Landroid/graphics/Shader$TileMode;

    .line 49
    invoke-direct {p0}, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->o()V

    .line 50
    invoke-direct {p0, v4}, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->n(Z)V

    .line 51
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_b
    :goto_6
    const/16 p3, 0xd

    .line 52
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    if-eq p3, v0, :cond_d

    .line 53
    invoke-static {p3}, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->l(I)Landroid/graphics/Shader$TileMode;

    move-result-object p3

    .line 54
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->s:Landroid/graphics/Shader$TileMode;

    if-ne v0, p3, :cond_c

    goto :goto_7

    .line 55
    :cond_c
    iput-object p3, p0, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->s:Landroid/graphics/Shader$TileMode;

    .line 56
    invoke-direct {p0}, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->o()V

    .line 57
    invoke-direct {p0, v4}, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->n(Z)V

    .line 58
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 59
    :cond_d
    :goto_7
    invoke-direct {p0}, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->o()V

    .line 60
    invoke-direct {p0, p2}, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->n(Z)V

    .line 61
    iget-boolean p2, p0, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->n:Z

    if-eqz p2, :cond_e

    .line 62
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->f:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, p2}, Landroidx/appcompat/widget/AppCompatImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 63
    :cond_e
    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 64
    invoke-virtual {p0, p2}, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 65
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private k()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->k:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->j:Z

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->k:Landroid/graphics/drawable/Drawable;

    .line 3
    iget-boolean v1, p0, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->l:Z

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->i:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    return-void
.end method

.method private static l(I)Landroid/graphics/Shader$TileMode;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    sget-object p0, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    return-object p0

    .line 2
    :cond_1
    sget-object p0, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    return-object p0

    .line 3
    :cond_2
    sget-object p0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    return-object p0
.end method

.method private m(Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView$ScaleType;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    instance-of v0, p1, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    check-cast p1, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/a;

    .line 3
    invoke-virtual {p1, p2}, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/a;->h(Landroid/widget/ImageView$ScaleType;)Lcom/camerasideas/collagemaker/activity/widget/roundimageview/a;

    iget p2, p0, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->h:F

    .line 4
    invoke-virtual {p1, p2}, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/a;->e(F)Lcom/camerasideas/collagemaker/activity/widget/roundimageview/a;

    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->g:Landroid/content/res/ColorStateList;

    .line 5
    invoke-virtual {p1, p2}, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/a;->d(Landroid/content/res/ColorStateList;)Lcom/camerasideas/collagemaker/activity/widget/roundimageview/a;

    iget-boolean p2, p0, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->m:Z

    .line 6
    invoke-virtual {p1, p2}, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/a;->g(Z)Lcom/camerasideas/collagemaker/activity/widget/roundimageview/a;

    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->r:Landroid/graphics/Shader$TileMode;

    .line 7
    invoke-virtual {p1, p2}, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/a;->i(Landroid/graphics/Shader$TileMode;)Lcom/camerasideas/collagemaker/activity/widget/roundimageview/a;

    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->s:Landroid/graphics/Shader$TileMode;

    .line 8
    invoke-virtual {p1, p2}, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/a;->j(Landroid/graphics/Shader$TileMode;)Lcom/camerasideas/collagemaker/activity/widget/roundimageview/a;

    .line 9
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->d:[F

    if-eqz p2, :cond_1

    .line 10
    aget v0, p2, v1

    const/4 v1, 0x1

    aget v1, p2, v1

    const/4 v2, 0x2

    aget v2, p2, v2

    const/4 v3, 0x3

    aget p2, p2, v3

    invoke-virtual {p1, v0, v1, v2, p2}, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/a;->f(FFFF)Lcom/camerasideas/collagemaker/activity/widget/roundimageview/a;

    .line 11
    :cond_1
    invoke-direct {p0}, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->k()V

    goto :goto_1

    .line 12
    :cond_2
    instance-of v0, p1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_3

    .line 13
    check-cast p1, Landroid/graphics/drawable/LayerDrawable;

    .line 14
    invoke-virtual {p1}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 15
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->m(Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView$ScaleType;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method private n(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->n:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->f:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/a;->b(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->f:Landroid/graphics/drawable/Drawable;

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->f:Landroid/graphics/drawable/Drawable;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-direct {p0, p1, v0}, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->m(Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView$ScaleType;)V

    :cond_1
    return-void
.end method

.method private o()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->k:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->q:Landroid/widget/ImageView$ScaleType;

    invoke-direct {p0, v0, v1}, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->m(Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method


# virtual methods
.method public drawableHotspotChanged(FF)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 2
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->drawableHotspotChanged(FF)V

    .line 3
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->drawableStateChanged()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawableState()[I

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->q:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->e:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 2
    iget-object p3, p0, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->e:Landroid/graphics/drawable/Drawable;

    if-eqz p3, :cond_0

    const/4 p4, 0x0

    invoke-virtual {p3, p4, p4, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->f:Landroid/graphics/drawable/Drawable;

    .line 2
    invoke-virtual {p0, v0}, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->f:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x1

    .line 2
    invoke-direct {p0, p1}, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->n(Z)V

    .line 3
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->f:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->p:I

    if-eq v0, p1, :cond_2

    .line 2
    iput p1, p0, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->p:I

    .line 3
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget v1, p0, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->p:I

    if-eqz v1, :cond_1

    .line 5
    :try_start_0
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "Unable to find resource: "

    .line 6
    invoke-static {v1}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->p:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RoundedImageView"

    invoke-static {v2, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->p:I

    .line 8
    :cond_1
    :goto_0
    invoke-static {v0}, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/a;->b(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 9
    :goto_1
    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->f:Landroid/graphics/drawable/Drawable;

    .line 10
    invoke-virtual {p0, v0}, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->i:Landroid/graphics/ColorFilter;

    if-eq v0, p1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->i:Landroid/graphics/ColorFilter;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->l:Z

    .line 4
    iput-boolean p1, p0, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->j:Z

    .line 5
    invoke-direct {p0}, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->k()V

    .line 6
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setForeground(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 3
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    if-eqz p1, :cond_3

    .line 4
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 5
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 7
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 8
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    invoke-virtual {p1, v1, v1, v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 9
    :cond_3
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->e:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->o:I

    .line 2
    sget v0, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/a;->u:I

    if-eqz p1, :cond_0

    .line 3
    new-instance v0, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/a;

    invoke-direct {v0, p1}, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/a;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->k:Landroid/graphics/drawable/Drawable;

    .line 5
    invoke-direct {p0}, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->o()V

    .line 6
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->k:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->o:I

    .line 2
    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/a;->b(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->k:Landroid/graphics/drawable/Drawable;

    .line 3
    invoke-direct {p0}, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->o()V

    .line 4
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->k:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageResource(I)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->o:I

    if-eq v0, p1, :cond_2

    .line 2
    iput p1, p0, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->o:I

    .line 3
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget v1, p0, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->o:I

    if-eqz v1, :cond_1

    .line 5
    :try_start_0
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "Unable to find resource: "

    .line 6
    invoke-static {v1}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->o:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RoundedImageView"

    invoke-static {v2, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->o:I

    .line 8
    :cond_1
    :goto_0
    invoke-static {v0}, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/a;->b(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 9
    :goto_1
    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->k:Landroid/graphics/drawable/Drawable;

    .line 10
    invoke-direct {p0}, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->o()V

    .line 11
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->k:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageURI(Landroid/net/Uri;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->q:Landroid/widget/ImageView$ScaleType;

    if-eq v0, p1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->q:Landroid/widget/ImageView$ScaleType;

    .line 3
    sget-object v0, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView$a;->a:[I

    invoke-virtual {p1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 4
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 5
    :pswitch_0
    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 6
    :pswitch_1
    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 7
    :pswitch_2
    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 8
    :goto_0
    invoke-direct {p0}, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->o()V

    const/4 p1, 0x0

    .line 9
    invoke-direct {p0, p1}, Lcom/camerasideas/collagemaker/activity/widget/roundimageview/RoundedImageView;->n(Z)V

    .line 10
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
