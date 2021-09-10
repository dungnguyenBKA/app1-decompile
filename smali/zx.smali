.class public Lzx;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:F

.field public final b:Landroid/content/res/ColorStateList;

.field public final c:I

.field public final d:I

.field public final e:Ljava/lang/String;

.field public final f:Landroid/content/res/ColorStateList;

.field public final g:F

.field public final h:F

.field public final i:F

.field private final j:I

.field private k:Z

.field private l:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lzx;->k:Z

    .line 3
    sget-object v1, Lcom/google/android/material/R$styleable;->I:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lzx;->a:F

    const/4 v2, 0x3

    .line 5
    invoke-static {p1, p2, v2}, Lyx;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lzx;->b:Landroid/content/res/ColorStateList;

    const/4 v2, 0x4

    .line 6
    invoke-static {p1, p2, v2}, Lyx;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    const/4 v2, 0x5

    .line 7
    invoke-static {p1, p2, v2}, Lyx;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    const/4 v2, 0x2

    .line 8
    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lzx;->c:I

    const/4 v2, 0x1

    .line 9
    invoke-virtual {p2, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lzx;->d:I

    const/16 v2, 0xc

    .line 10
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0xa

    .line 11
    :goto_0
    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lzx;->j:I

    .line 12
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lzx;->e:Ljava/lang/String;

    const/16 v2, 0xe

    .line 13
    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    const/4 v0, 0x6

    .line 14
    invoke-static {p1, p2, v0}, Lyx;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lzx;->f:Landroid/content/res/ColorStateList;

    const/4 p1, 0x7

    .line 15
    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    iput p1, p0, Lzx;->g:F

    const/16 p1, 0x8

    .line 16
    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    iput p1, p0, Lzx;->h:F

    const/16 p1, 0x9

    .line 17
    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    iput p1, p0, Lzx;->i:F

    .line 18
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic a(Lzx;)Landroid/graphics/Typeface;
    .locals 0

    .line 1
    iget-object p0, p0, Lzx;->l:Landroid/graphics/Typeface;

    return-object p0
.end method

.method static synthetic b(Lzx;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    .locals 0

    .line 1
    iput-object p1, p0, Lzx;->l:Landroid/graphics/Typeface;

    return-object p1
.end method

.method static synthetic c(Lzx;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lzx;->k:Z

    return p1
.end method

.method private d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lzx;->l:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    iget-object v0, p0, Lzx;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    iget v1, p0, Lzx;->c:I

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lzx;->l:Landroid/graphics/Typeface;

    .line 3
    :cond_0
    iget-object v0, p0, Lzx;->l:Landroid/graphics/Typeface;

    if-nez v0, :cond_4

    .line 4
    iget v0, p0, Lzx;->d:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 5
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iput-object v0, p0, Lzx;->l:Landroid/graphics/Typeface;

    goto :goto_0

    .line 6
    :cond_1
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    iput-object v0, p0, Lzx;->l:Landroid/graphics/Typeface;

    goto :goto_0

    .line 7
    :cond_2
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    iput-object v0, p0, Lzx;->l:Landroid/graphics/Typeface;

    goto :goto_0

    .line 8
    :cond_3
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    iput-object v0, p0, Lzx;->l:Landroid/graphics/Typeface;

    .line 9
    :goto_0
    iget-object v0, p0, Lzx;->l:Landroid/graphics/Typeface;

    iget v1, p0, Lzx;->c:I

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lzx;->l:Landroid/graphics/Typeface;

    :cond_4
    return-void
.end method


# virtual methods
.method public e()Landroid/graphics/Typeface;
    .locals 1

    .line 1
    invoke-direct {p0}, Lzx;->d()V

    .line 2
    iget-object v0, p0, Lzx;->l:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public f(Landroid/content/Context;Lby;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lzx;->d()V

    .line 2
    iget v0, p0, Lzx;->j:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 3
    iput-boolean v1, p0, Lzx;->k:Z

    .line 4
    :cond_0
    iget-boolean v2, p0, Lzx;->k:Z

    if-eqz v2, :cond_1

    .line 5
    iget-object p1, p0, Lzx;->l:Landroid/graphics/Typeface;

    invoke-virtual {p2, p1, v1}, Lby;->b(Landroid/graphics/Typeface;Z)V

    return-void

    .line 6
    :cond_1
    :try_start_0
    new-instance v2, Lzx$a;

    invoke-direct {v2, p0, p2}, Lzx$a;-><init>(Lzx;Lby;)V

    const/4 v3, 0x0

    invoke-static {p1, v0, v2, v3}, Lc1;->e(Landroid/content/Context;ILj1;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 7
    :catch_0
    iput-boolean v1, p0, Lzx;->k:Z

    const/4 p1, -0x3

    .line 8
    invoke-virtual {p2, p1}, Lby;->a(I)V

    goto :goto_0

    .line 9
    :catch_1
    iput-boolean v1, p0, Lzx;->k:Z

    .line 10
    invoke-virtual {p2, v1}, Lby;->a(I)V

    :goto_0
    return-void
.end method

.method public g(Landroid/content/Context;Landroid/text/TextPaint;Lby;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lzx;->d()V

    .line 2
    iget-object v0, p0, Lzx;->l:Landroid/graphics/Typeface;

    .line 3
    invoke-virtual {p0, p2, v0}, Lzx;->i(Landroid/text/TextPaint;Landroid/graphics/Typeface;)V

    .line 4
    new-instance v0, Lay;

    invoke-direct {v0, p0, p2, p3}, Lay;-><init>(Lzx;Landroid/text/TextPaint;Lby;)V

    invoke-virtual {p0, p1, v0}, Lzx;->f(Landroid/content/Context;Lby;)V

    .line 5
    iget-object p1, p0, Lzx;->b:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_0

    iget-object p3, p2, Landroid/text/TextPaint;->drawableState:[I

    .line 6
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    invoke-virtual {p1, p3, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    goto :goto_0

    :cond_0
    const/high16 p1, -0x1000000

    .line 7
    :goto_0
    invoke-virtual {p2, p1}, Landroid/text/TextPaint;->setColor(I)V

    .line 8
    iget p1, p0, Lzx;->i:F

    iget p3, p0, Lzx;->g:F

    iget v0, p0, Lzx;->h:F

    iget-object v1, p0, Lzx;->f:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_1

    iget-object v2, p2, Landroid/text/TextPaint;->drawableState:[I

    .line 9
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 10
    :goto_1
    invoke-virtual {p2, p1, p3, v0, v1}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    return-void
.end method

.method public h(Landroid/content/Context;Landroid/text/TextPaint;Lby;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lzx;->d()V

    .line 2
    iget-object v0, p0, Lzx;->l:Landroid/graphics/Typeface;

    .line 3
    invoke-virtual {p0, p2, v0}, Lzx;->i(Landroid/text/TextPaint;Landroid/graphics/Typeface;)V

    .line 4
    new-instance v0, Lay;

    invoke-direct {v0, p0, p2, p3}, Lay;-><init>(Lzx;Landroid/text/TextPaint;Lby;)V

    invoke-virtual {p0, p1, v0}, Lzx;->f(Landroid/content/Context;Lby;)V

    return-void
.end method

.method public i(Landroid/text/TextPaint;Landroid/graphics/Typeface;)V
    .locals 1

    .line 1
    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2
    iget v0, p0, Lzx;->c:I

    invoke-virtual {p2}, Landroid/graphics/Typeface;->getStyle()I

    move-result p2

    xor-int/lit8 p2, p2, -0x1

    and-int/2addr p2, v0

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_1

    const/high16 p2, -0x41800000    # -0.25f

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    .line 4
    :goto_1
    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 5
    iget p2, p0, Lzx;->a:F

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTextSize(F)V

    return-void
.end method
