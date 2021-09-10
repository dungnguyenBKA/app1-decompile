.class Ly4$c;
.super Ly4$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private e:[I

.field f:Ld1;

.field g:F

.field h:Ld1;

.field i:F

.field j:F

.field k:F

.field l:F

.field m:F

.field n:Landroid/graphics/Paint$Cap;

.field o:Landroid/graphics/Paint$Join;

.field p:F


# direct methods
.method constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ly4$f;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Ly4$c;->g:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 3
    iput v1, p0, Ly4$c;->i:F

    .line 4
    iput v1, p0, Ly4$c;->j:F

    .line 5
    iput v0, p0, Ly4$c;->k:F

    .line 6
    iput v1, p0, Ly4$c;->l:F

    .line 7
    iput v0, p0, Ly4$c;->m:F

    .line 8
    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Ly4$c;->n:Landroid/graphics/Paint$Cap;

    .line 9
    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    iput-object v0, p0, Ly4$c;->o:Landroid/graphics/Paint$Join;

    const/high16 v0, 0x40800000    # 4.0f

    .line 10
    iput v0, p0, Ly4$c;->p:F

    return-void
.end method

.method constructor <init>(Ly4$c;)V
    .locals 2

    .line 11
    invoke-direct {p0, p1}, Ly4$f;-><init>(Ly4$f;)V

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Ly4$c;->g:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 13
    iput v1, p0, Ly4$c;->i:F

    .line 14
    iput v1, p0, Ly4$c;->j:F

    .line 15
    iput v0, p0, Ly4$c;->k:F

    .line 16
    iput v1, p0, Ly4$c;->l:F

    .line 17
    iput v0, p0, Ly4$c;->m:F

    .line 18
    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Ly4$c;->n:Landroid/graphics/Paint$Cap;

    .line 19
    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    iput-object v0, p0, Ly4$c;->o:Landroid/graphics/Paint$Join;

    const/high16 v0, 0x40800000    # 4.0f

    .line 20
    iput v0, p0, Ly4$c;->p:F

    .line 21
    iget-object v0, p1, Ly4$c;->e:[I

    iput-object v0, p0, Ly4$c;->e:[I

    .line 22
    iget-object v0, p1, Ly4$c;->f:Ld1;

    iput-object v0, p0, Ly4$c;->f:Ld1;

    .line 23
    iget v0, p1, Ly4$c;->g:F

    iput v0, p0, Ly4$c;->g:F

    .line 24
    iget v0, p1, Ly4$c;->i:F

    iput v0, p0, Ly4$c;->i:F

    .line 25
    iget-object v0, p1, Ly4$c;->h:Ld1;

    iput-object v0, p0, Ly4$c;->h:Ld1;

    .line 26
    iget v0, p1, Ly4$f;->c:I

    iput v0, p0, Ly4$f;->c:I

    .line 27
    iget v0, p1, Ly4$c;->j:F

    iput v0, p0, Ly4$c;->j:F

    .line 28
    iget v0, p1, Ly4$c;->k:F

    iput v0, p0, Ly4$c;->k:F

    .line 29
    iget v0, p1, Ly4$c;->l:F

    iput v0, p0, Ly4$c;->l:F

    .line 30
    iget v0, p1, Ly4$c;->m:F

    iput v0, p0, Ly4$c;->m:F

    .line 31
    iget-object v0, p1, Ly4$c;->n:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Ly4$c;->n:Landroid/graphics/Paint$Cap;

    .line 32
    iget-object v0, p1, Ly4$c;->o:Landroid/graphics/Paint$Join;

    iput-object v0, p0, Ly4$c;->o:Landroid/graphics/Paint$Join;

    .line 33
    iget p1, p1, Ly4$c;->p:F

    iput p1, p0, Ly4$c;->p:F

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ly4$c;->h:Ld1;

    invoke-virtual {v0}, Ld1;->g()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ly4$c;->f:Ld1;

    invoke-virtual {v0}, Ld1;->g()Z

    move-result v0

    if-eqz v0, :cond_0

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

.method public b([I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Ly4$c;->h:Ld1;

    invoke-virtual {v0, p1}, Ld1;->h([I)Z

    move-result v0

    .line 2
    iget-object v1, p0, Ly4$c;->f:Ld1;

    invoke-virtual {v1, p1}, Ld1;->h([I)Z

    move-result p1

    or-int/2addr p1, v0

    return p1
.end method

.method public d(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 7

    .line 1
    sget-object v0, Lr4;->c:[I

    invoke-static {p1, p3, p2, v0}, Lc1;->n(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 2
    iput-object p2, p0, Ly4$c;->e:[I

    const-string p2, "pathData"

    .line 3
    invoke-static {p4, p2}, Lc1;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    goto/16 :goto_c

    :cond_0
    const/4 p2, 0x0

    .line 4
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 5
    iput-object p2, p0, Ly4$f;->b:Ljava/lang/String;

    :cond_1
    const/4 p2, 0x2

    .line 6
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7
    invoke-static {v0}, Ll1;->e(Ljava/lang/String;)[Ll1$a;

    move-result-object v0

    iput-object v0, p0, Ly4$f;->a:[Ll1$a;

    :cond_2
    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v4, "fillColor"

    move-object v1, p1

    move-object v2, p4

    move-object v3, p3

    .line 8
    invoke-static/range {v1 .. v6}, Lc1;->g(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;Ljava/lang/String;II)Ld1;

    move-result-object v0

    iput-object v0, p0, Ly4$c;->h:Ld1;

    const/16 v0, 0xc

    .line 9
    iget v1, p0, Ly4$c;->j:F

    const-string v2, "fillAlpha"

    .line 10
    invoke-static {p4, v2}, Lc1;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    .line 11
    :cond_3
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    .line 12
    :goto_0
    iput v1, p0, Ly4$c;->j:F

    const/16 v0, 0x8

    const-string v1, "strokeLineCap"

    .line 13
    invoke-static {p4, v1}, Lc1;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_4

    const/4 v0, -0x1

    goto :goto_1

    .line 14
    :cond_4
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 15
    :goto_1
    iget-object v1, p0, Ly4$c;->n:Landroid/graphics/Paint$Cap;

    const/4 v3, 0x1

    if-eqz v0, :cond_7

    if-eq v0, v3, :cond_6

    if-eq v0, p2, :cond_5

    goto :goto_2

    .line 16
    :cond_5
    sget-object v1, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    goto :goto_2

    .line 17
    :cond_6
    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    goto :goto_2

    .line 18
    :cond_7
    sget-object v1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    .line 19
    :goto_2
    iput-object v1, p0, Ly4$c;->n:Landroid/graphics/Paint$Cap;

    const/16 v0, 0x9

    const-string v1, "strokeLineJoin"

    .line 20
    invoke-static {p4, v1}, Lc1;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_3

    .line 21
    :cond_8
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 22
    :goto_3
    iget-object v0, p0, Ly4$c;->o:Landroid/graphics/Paint$Join;

    if-eqz v2, :cond_b

    if-eq v2, v3, :cond_a

    if-eq v2, p2, :cond_9

    goto :goto_4

    .line 23
    :cond_9
    sget-object v0, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    goto :goto_4

    .line 24
    :cond_a
    sget-object v0, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    goto :goto_4

    .line 25
    :cond_b
    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    .line 26
    :goto_4
    iput-object v0, p0, Ly4$c;->o:Landroid/graphics/Paint$Join;

    const/16 p2, 0xa

    .line 27
    iget v0, p0, Ly4$c;->p:F

    const-string v1, "strokeMiterLimit"

    .line 28
    invoke-static {p4, v1}, Lc1;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_5

    .line 29
    :cond_c
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    .line 30
    :goto_5
    iput v0, p0, Ly4$c;->p:F

    const/4 v5, 0x3

    const/4 v6, 0x0

    const-string v4, "strokeColor"

    move-object v1, p1

    move-object v2, p4

    move-object v3, p3

    .line 31
    invoke-static/range {v1 .. v6}, Lc1;->g(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;Ljava/lang/String;II)Ld1;

    move-result-object p2

    iput-object p2, p0, Ly4$c;->f:Ld1;

    const/16 p2, 0xb

    .line 32
    iget p3, p0, Ly4$c;->i:F

    const-string v0, "strokeAlpha"

    .line 33
    invoke-static {p4, v0}, Lc1;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_6

    .line 34
    :cond_d
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    .line 35
    :goto_6
    iput p3, p0, Ly4$c;->i:F

    const/4 p2, 0x4

    .line 36
    iget p3, p0, Ly4$c;->g:F

    const-string v0, "strokeWidth"

    .line 37
    invoke-static {p4, v0}, Lc1;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_7

    .line 38
    :cond_e
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    .line 39
    :goto_7
    iput p3, p0, Ly4$c;->g:F

    const/4 p2, 0x6

    .line 40
    iget p3, p0, Ly4$c;->l:F

    const-string v0, "trimPathEnd"

    .line 41
    invoke-static {p4, v0}, Lc1;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_8

    .line 42
    :cond_f
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    .line 43
    :goto_8
    iput p3, p0, Ly4$c;->l:F

    const/4 p2, 0x7

    .line 44
    iget p3, p0, Ly4$c;->m:F

    const-string v0, "trimPathOffset"

    .line 45
    invoke-static {p4, v0}, Lc1;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_9

    .line 46
    :cond_10
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    .line 47
    :goto_9
    iput p3, p0, Ly4$c;->m:F

    const/4 p2, 0x5

    .line 48
    iget p3, p0, Ly4$c;->k:F

    const-string v0, "trimPathStart"

    .line 49
    invoke-static {p4, v0}, Lc1;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_a

    .line 50
    :cond_11
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    .line 51
    :goto_a
    iput p3, p0, Ly4$c;->k:F

    const/16 p2, 0xd

    .line 52
    iget p3, p0, Ly4$f;->c:I

    const-string v0, "fillType"

    .line 53
    invoke-static {p4, v0}, Lc1;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_12

    goto :goto_b

    .line 54
    :cond_12
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    .line 55
    :goto_b
    iput p3, p0, Ly4$f;->c:I

    .line 56
    :goto_c
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method getFillAlpha()F
    .locals 1

    .line 1
    iget v0, p0, Ly4$c;->j:F

    return v0
.end method

.method getFillColor()I
    .locals 1

    .line 1
    iget-object v0, p0, Ly4$c;->h:Ld1;

    invoke-virtual {v0}, Ld1;->c()I

    move-result v0

    return v0
.end method

.method getStrokeAlpha()F
    .locals 1

    .line 1
    iget v0, p0, Ly4$c;->i:F

    return v0
.end method

.method getStrokeColor()I
    .locals 1

    .line 1
    iget-object v0, p0, Ly4$c;->f:Ld1;

    invoke-virtual {v0}, Ld1;->c()I

    move-result v0

    return v0
.end method

.method getStrokeWidth()F
    .locals 1

    .line 1
    iget v0, p0, Ly4$c;->g:F

    return v0
.end method

.method getTrimPathEnd()F
    .locals 1

    .line 1
    iget v0, p0, Ly4$c;->l:F

    return v0
.end method

.method getTrimPathOffset()F
    .locals 1

    .line 1
    iget v0, p0, Ly4$c;->m:F

    return v0
.end method

.method getTrimPathStart()F
    .locals 1

    .line 1
    iget v0, p0, Ly4$c;->k:F

    return v0
.end method

.method setFillAlpha(F)V
    .locals 0

    .line 1
    iput p1, p0, Ly4$c;->j:F

    return-void
.end method

.method setFillColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Ly4$c;->h:Ld1;

    invoke-virtual {v0, p1}, Ld1;->i(I)V

    return-void
.end method

.method setStrokeAlpha(F)V
    .locals 0

    .line 1
    iput p1, p0, Ly4$c;->i:F

    return-void
.end method

.method setStrokeColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Ly4$c;->f:Ld1;

    invoke-virtual {v0, p1}, Ld1;->i(I)V

    return-void
.end method

.method setStrokeWidth(F)V
    .locals 0

    .line 1
    iput p1, p0, Ly4$c;->g:F

    return-void
.end method

.method setTrimPathEnd(F)V
    .locals 0

    .line 1
    iput p1, p0, Ly4$c;->l:F

    return-void
.end method

.method setTrimPathOffset(F)V
    .locals 0

    .line 1
    iput p1, p0, Ly4$c;->m:F

    return-void
.end method

.method setTrimPathStart(F)V
    .locals 0

    .line 1
    iput p1, p0, Ly4$c;->k:F

    return-void
.end method
