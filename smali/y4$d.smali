.class Ly4$d;
.super Ly4$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field final a:Landroid/graphics/Matrix;

.field final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ly4$e;",
            ">;"
        }
    .end annotation
.end field

.field c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field final j:Landroid/graphics/Matrix;

.field k:I

.field private l:[I

.field private m:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, v0}, Ly4$e;-><init>(Ly4$a;)V

    .line 40
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Ly4$d;->a:Landroid/graphics/Matrix;

    .line 41
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ly4$d;->b:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 42
    iput v1, p0, Ly4$d;->c:F

    .line 43
    iput v1, p0, Ly4$d;->d:F

    .line 44
    iput v1, p0, Ly4$d;->e:F

    const/high16 v2, 0x3f800000    # 1.0f

    .line 45
    iput v2, p0, Ly4$d;->f:F

    .line 46
    iput v2, p0, Ly4$d;->g:F

    .line 47
    iput v1, p0, Ly4$d;->h:F

    .line 48
    iput v1, p0, Ly4$d;->i:F

    .line 49
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Ly4$d;->j:Landroid/graphics/Matrix;

    .line 50
    iput-object v0, p0, Ly4$d;->m:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ly4$d;Lx;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly4$d;",
            "Lx<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Ly4$e;-><init>(Ly4$a;)V

    .line 2
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Ly4$d;->a:Landroid/graphics/Matrix;

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ly4$d;->b:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Ly4$d;->c:F

    .line 5
    iput v1, p0, Ly4$d;->d:F

    .line 6
    iput v1, p0, Ly4$d;->e:F

    const/high16 v2, 0x3f800000    # 1.0f

    .line 7
    iput v2, p0, Ly4$d;->f:F

    .line 8
    iput v2, p0, Ly4$d;->g:F

    .line 9
    iput v1, p0, Ly4$d;->h:F

    .line 10
    iput v1, p0, Ly4$d;->i:F

    .line 11
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Ly4$d;->j:Landroid/graphics/Matrix;

    .line 12
    iput-object v0, p0, Ly4$d;->m:Ljava/lang/String;

    .line 13
    iget v0, p1, Ly4$d;->c:F

    iput v0, p0, Ly4$d;->c:F

    .line 14
    iget v0, p1, Ly4$d;->d:F

    iput v0, p0, Ly4$d;->d:F

    .line 15
    iget v0, p1, Ly4$d;->e:F

    iput v0, p0, Ly4$d;->e:F

    .line 16
    iget v0, p1, Ly4$d;->f:F

    iput v0, p0, Ly4$d;->f:F

    .line 17
    iget v0, p1, Ly4$d;->g:F

    iput v0, p0, Ly4$d;->g:F

    .line 18
    iget v0, p1, Ly4$d;->h:F

    iput v0, p0, Ly4$d;->h:F

    .line 19
    iget v0, p1, Ly4$d;->i:F

    iput v0, p0, Ly4$d;->i:F

    .line 20
    iget-object v0, p1, Ly4$d;->l:[I

    iput-object v0, p0, Ly4$d;->l:[I

    .line 21
    iget-object v0, p1, Ly4$d;->m:Ljava/lang/String;

    iput-object v0, p0, Ly4$d;->m:Ljava/lang/String;

    .line 22
    iget v2, p1, Ly4$d;->k:I

    iput v2, p0, Ly4$d;->k:I

    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {p2, v0, p0}, Le0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    :cond_0
    iget-object v0, p1, Ly4$d;->j:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 25
    iget-object p1, p1, Ly4$d;->b:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 26
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 27
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 28
    instance-of v2, v1, Ly4$d;

    if-eqz v2, :cond_1

    .line 29
    check-cast v1, Ly4$d;

    .line 30
    iget-object v2, p0, Ly4$d;->b:Ljava/util/ArrayList;

    new-instance v3, Ly4$d;

    invoke-direct {v3, v1, p2}, Ly4$d;-><init>(Ly4$d;Lx;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 31
    :cond_1
    instance-of v2, v1, Ly4$c;

    if-eqz v2, :cond_2

    .line 32
    new-instance v2, Ly4$c;

    check-cast v1, Ly4$c;

    invoke-direct {v2, v1}, Ly4$c;-><init>(Ly4$c;)V

    goto :goto_1

    .line 33
    :cond_2
    instance-of v2, v1, Ly4$b;

    if-eqz v2, :cond_4

    .line 34
    new-instance v2, Ly4$b;

    check-cast v1, Ly4$b;

    invoke-direct {v2, v1}, Ly4$b;-><init>(Ly4$b;)V

    .line 35
    :goto_1
    iget-object v1, p0, Ly4$d;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    iget-object v1, v2, Ly4$f;->b:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 37
    invoke-virtual {p2, v1, v2}, Le0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 38
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unknown object in the tree!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    return-void
.end method

.method private d()V
    .locals 4

    .line 1
    iget-object v0, p0, Ly4$d;->j:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 2
    iget-object v0, p0, Ly4$d;->j:Landroid/graphics/Matrix;

    iget v1, p0, Ly4$d;->d:F

    neg-float v1, v1

    iget v2, p0, Ly4$d;->e:F

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 3
    iget-object v0, p0, Ly4$d;->j:Landroid/graphics/Matrix;

    iget v1, p0, Ly4$d;->f:F

    iget v2, p0, Ly4$d;->g:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 4
    iget-object v0, p0, Ly4$d;->j:Landroid/graphics/Matrix;

    iget v1, p0, Ly4$d;->c:F

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 5
    iget-object v0, p0, Ly4$d;->j:Landroid/graphics/Matrix;

    iget v1, p0, Ly4$d;->h:F

    iget v2, p0, Ly4$d;->d:F

    add-float/2addr v1, v2

    iget v2, p0, Ly4$d;->i:F

    iget v3, p0, Ly4$d;->e:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Ly4$d;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2
    iget-object v2, p0, Ly4$d;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ly4$e;

    invoke-virtual {v2}, Ly4$e;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public b([I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Ly4$d;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 2
    iget-object v2, p0, Ly4$d;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ly4$e;

    invoke-virtual {v2, p1}, Ly4$e;->b([I)Z

    move-result v2

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public c(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1

    .line 1
    sget-object v0, Lr4;->b:[I

    invoke-static {p1, p3, p2, v0}, Lc1;->n(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 2
    iput-object p2, p0, Ly4$d;->l:[I

    .line 3
    iget p2, p0, Ly4$d;->c:F

    const-string p3, "rotation"

    .line 4
    invoke-static {p4, p3}, Lc1;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x5

    .line 5
    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    .line 6
    :goto_0
    iput p2, p0, Ly4$d;->c:F

    const/4 p2, 0x1

    .line 7
    iget p3, p0, Ly4$d;->d:F

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Ly4$d;->d:F

    const/4 p2, 0x2

    .line 8
    iget p3, p0, Ly4$d;->e:F

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Ly4$d;->e:F

    const/4 p2, 0x3

    .line 9
    iget p3, p0, Ly4$d;->f:F

    const-string v0, "scaleX"

    .line 10
    invoke-static {p4, v0}, Lc1;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 11
    :cond_1
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    .line 12
    :goto_1
    iput p3, p0, Ly4$d;->f:F

    const/4 p2, 0x4

    .line 13
    iget p3, p0, Ly4$d;->g:F

    const-string v0, "scaleY"

    .line 14
    invoke-static {p4, v0}, Lc1;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    .line 15
    :cond_2
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    .line 16
    :goto_2
    iput p3, p0, Ly4$d;->g:F

    const/4 p2, 0x6

    .line 17
    iget p3, p0, Ly4$d;->h:F

    const-string v0, "translateX"

    .line 18
    invoke-static {p4, v0}, Lc1;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_3

    .line 19
    :cond_3
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    .line 20
    :goto_3
    iput p3, p0, Ly4$d;->h:F

    const/4 p2, 0x7

    .line 21
    iget p3, p0, Ly4$d;->i:F

    const-string v0, "translateY"

    .line 22
    invoke-static {p4, v0}, Lc1;->l(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_4

    goto :goto_4

    .line 23
    :cond_4
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    .line 24
    :goto_4
    iput p3, p0, Ly4$d;->i:F

    const/4 p2, 0x0

    .line 25
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 26
    iput-object p2, p0, Ly4$d;->m:Ljava/lang/String;

    .line 27
    :cond_5
    invoke-direct {p0}, Ly4$d;->d()V

    .line 28
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ly4$d;->m:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalMatrix()Landroid/graphics/Matrix;
    .locals 1

    .line 1
    iget-object v0, p0, Ly4$d;->j:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getPivotX()F
    .locals 1

    .line 1
    iget v0, p0, Ly4$d;->d:F

    return v0
.end method

.method public getPivotY()F
    .locals 1

    .line 1
    iget v0, p0, Ly4$d;->e:F

    return v0
.end method

.method public getRotation()F
    .locals 1

    .line 1
    iget v0, p0, Ly4$d;->c:F

    return v0
.end method

.method public getScaleX()F
    .locals 1

    .line 1
    iget v0, p0, Ly4$d;->f:F

    return v0
.end method

.method public getScaleY()F
    .locals 1

    .line 1
    iget v0, p0, Ly4$d;->g:F

    return v0
.end method

.method public getTranslateX()F
    .locals 1

    .line 1
    iget v0, p0, Ly4$d;->h:F

    return v0
.end method

.method public getTranslateY()F
    .locals 1

    .line 1
    iget v0, p0, Ly4$d;->i:F

    return v0
.end method

.method public setPivotX(F)V
    .locals 1

    .line 1
    iget v0, p0, Ly4$d;->d:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 2
    iput p1, p0, Ly4$d;->d:F

    .line 3
    invoke-direct {p0}, Ly4$d;->d()V

    :cond_0
    return-void
.end method

.method public setPivotY(F)V
    .locals 1

    .line 1
    iget v0, p0, Ly4$d;->e:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 2
    iput p1, p0, Ly4$d;->e:F

    .line 3
    invoke-direct {p0}, Ly4$d;->d()V

    :cond_0
    return-void
.end method

.method public setRotation(F)V
    .locals 1

    .line 1
    iget v0, p0, Ly4$d;->c:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 2
    iput p1, p0, Ly4$d;->c:F

    .line 3
    invoke-direct {p0}, Ly4$d;->d()V

    :cond_0
    return-void
.end method

.method public setScaleX(F)V
    .locals 1

    .line 1
    iget v0, p0, Ly4$d;->f:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 2
    iput p1, p0, Ly4$d;->f:F

    .line 3
    invoke-direct {p0}, Ly4$d;->d()V

    :cond_0
    return-void
.end method

.method public setScaleY(F)V
    .locals 1

    .line 1
    iget v0, p0, Ly4$d;->g:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 2
    iput p1, p0, Ly4$d;->g:F

    .line 3
    invoke-direct {p0}, Ly4$d;->d()V

    :cond_0
    return-void
.end method

.method public setTranslateX(F)V
    .locals 1

    .line 1
    iget v0, p0, Ly4$d;->h:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 2
    iput p1, p0, Ly4$d;->h:F

    .line 3
    invoke-direct {p0}, Ly4$d;->d()V

    :cond_0
    return-void
.end method

.method public setTranslateY(F)V
    .locals 1

    .line 1
    iget v0, p0, Ly4$d;->i:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 2
    iput p1, p0, Ly4$d;->i:F

    .line 3
    invoke-direct {p0}, Ly4$d;->d()V

    :cond_0
    return-void
.end method
