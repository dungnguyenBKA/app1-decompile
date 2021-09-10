.class public Lqy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqy$b;
    }
.end annotation


# static fields
.field public static final m:Liy;


# instance fields
.field a:Ljy;

.field b:Ljy;

.field c:Ljy;

.field d:Ljy;

.field e:Liy;

.field f:Liy;

.field g:Liy;

.field h:Liy;

.field i:Lly;

.field j:Lly;

.field k:Lly;

.field l:Lly;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Loy;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {v0, v1}, Loy;-><init>(F)V

    sput-object v0, Lqy;->m:Liy;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lpy;

    invoke-direct {v0}, Lpy;-><init>()V

    .line 16
    iput-object v0, p0, Lqy;->a:Ljy;

    .line 17
    new-instance v0, Lpy;

    invoke-direct {v0}, Lpy;-><init>()V

    .line 18
    iput-object v0, p0, Lqy;->b:Ljy;

    .line 19
    new-instance v0, Lpy;

    invoke-direct {v0}, Lpy;-><init>()V

    .line 20
    iput-object v0, p0, Lqy;->c:Ljy;

    .line 21
    new-instance v0, Lpy;

    invoke-direct {v0}, Lpy;-><init>()V

    .line 22
    iput-object v0, p0, Lqy;->d:Ljy;

    .line 23
    new-instance v0, Lgy;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgy;-><init>(F)V

    iput-object v0, p0, Lqy;->e:Liy;

    .line 24
    new-instance v0, Lgy;

    invoke-direct {v0, v1}, Lgy;-><init>(F)V

    iput-object v0, p0, Lqy;->f:Liy;

    .line 25
    new-instance v0, Lgy;

    invoke-direct {v0, v1}, Lgy;-><init>(F)V

    iput-object v0, p0, Lqy;->g:Liy;

    .line 26
    new-instance v0, Lgy;

    invoke-direct {v0, v1}, Lgy;-><init>(F)V

    iput-object v0, p0, Lqy;->h:Liy;

    .line 27
    new-instance v0, Lly;

    invoke-direct {v0}, Lly;-><init>()V

    .line 28
    iput-object v0, p0, Lqy;->i:Lly;

    .line 29
    new-instance v0, Lly;

    invoke-direct {v0}, Lly;-><init>()V

    .line 30
    iput-object v0, p0, Lqy;->j:Lly;

    .line 31
    new-instance v0, Lly;

    invoke-direct {v0}, Lly;-><init>()V

    .line 32
    iput-object v0, p0, Lqy;->k:Lly;

    .line 33
    new-instance v0, Lly;

    invoke-direct {v0}, Lly;-><init>()V

    .line 34
    iput-object v0, p0, Lqy;->l:Lly;

    return-void
.end method

.method constructor <init>(Lqy$b;Lqy$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lqy$b;->a(Lqy$b;)Ljy;

    move-result-object p2

    iput-object p2, p0, Lqy;->a:Ljy;

    .line 3
    invoke-static {p1}, Lqy$b;->e(Lqy$b;)Ljy;

    move-result-object p2

    iput-object p2, p0, Lqy;->b:Ljy;

    .line 4
    invoke-static {p1}, Lqy$b;->f(Lqy$b;)Ljy;

    move-result-object p2

    iput-object p2, p0, Lqy;->c:Ljy;

    .line 5
    invoke-static {p1}, Lqy$b;->g(Lqy$b;)Ljy;

    move-result-object p2

    iput-object p2, p0, Lqy;->d:Ljy;

    .line 6
    invoke-static {p1}, Lqy$b;->h(Lqy$b;)Liy;

    move-result-object p2

    iput-object p2, p0, Lqy;->e:Liy;

    .line 7
    invoke-static {p1}, Lqy$b;->i(Lqy$b;)Liy;

    move-result-object p2

    iput-object p2, p0, Lqy;->f:Liy;

    .line 8
    invoke-static {p1}, Lqy$b;->j(Lqy$b;)Liy;

    move-result-object p2

    iput-object p2, p0, Lqy;->g:Liy;

    .line 9
    invoke-static {p1}, Lqy$b;->k(Lqy$b;)Liy;

    move-result-object p2

    iput-object p2, p0, Lqy;->h:Liy;

    .line 10
    invoke-static {p1}, Lqy$b;->l(Lqy$b;)Lly;

    move-result-object p2

    iput-object p2, p0, Lqy;->i:Lly;

    .line 11
    invoke-static {p1}, Lqy$b;->b(Lqy$b;)Lly;

    move-result-object p2

    iput-object p2, p0, Lqy;->j:Lly;

    .line 12
    invoke-static {p1}, Lqy$b;->c(Lqy$b;)Lly;

    move-result-object p2

    iput-object p2, p0, Lqy;->k:Lly;

    .line 13
    invoke-static {p1}, Lqy$b;->d(Lqy$b;)Lly;

    move-result-object p1

    iput-object p1, p0, Lqy;->l:Lly;

    return-void
.end method

.method public static a(Landroid/content/Context;II)Lqy$b;
    .locals 2

    .line 1
    new-instance v0, Lgy;

    const/4 v1, 0x0

    int-to-float v1, v1

    invoke-direct {v0, v1}, Lgy;-><init>(F)V

    invoke-static {p0, p1, p2, v0}, Lqy;->b(Landroid/content/Context;IILiy;)Lqy$b;

    move-result-object p0

    return-object p0
.end method

.method private static b(Landroid/content/Context;IILiy;)Lqy$b;
    .locals 6

    if-eqz p2, :cond_0

    .line 1
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-direct {v0, p0, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move p1, p2

    move-object p0, v0

    .line 2
    :cond_0
    sget-object p2, Lcom/google/android/material/R$styleable;->D:[I

    .line 3
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 p1, 0x0

    .line 4
    :try_start_0
    invoke-virtual {p0, p1, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    const/4 p2, 0x3

    .line 5
    invoke-virtual {p0, p2, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    const/4 v0, 0x4

    .line 6
    invoke-virtual {p0, v0, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    const/4 v1, 0x2

    .line 7
    invoke-virtual {p0, v1, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    const/4 v2, 0x1

    .line 8
    invoke-virtual {p0, v2, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    const/4 v2, 0x5

    .line 9
    invoke-static {p0, v2, p3}, Lqy;->h(Landroid/content/res/TypedArray;ILiy;)Liy;

    move-result-object p3

    const/16 v2, 0x8

    .line 10
    invoke-static {p0, v2, p3}, Lqy;->h(Landroid/content/res/TypedArray;ILiy;)Liy;

    move-result-object v2

    const/16 v3, 0x9

    .line 11
    invoke-static {p0, v3, p3}, Lqy;->h(Landroid/content/res/TypedArray;ILiy;)Liy;

    move-result-object v3

    const/4 v4, 0x7

    .line 12
    invoke-static {p0, v4, p3}, Lqy;->h(Landroid/content/res/TypedArray;ILiy;)Liy;

    move-result-object v4

    const/4 v5, 0x6

    .line 13
    invoke-static {p0, v5, p3}, Lqy;->h(Landroid/content/res/TypedArray;ILiy;)Liy;

    move-result-object p3

    .line 14
    new-instance v5, Lqy$b;

    invoke-direct {v5}, Lqy$b;-><init>()V

    .line 15
    invoke-virtual {v5, p2, v2}, Lqy$b;->w(ILiy;)Lqy$b;

    .line 16
    invoke-virtual {v5, v0, v3}, Lqy$b;->z(ILiy;)Lqy$b;

    .line 17
    invoke-virtual {v5, v1, v4}, Lqy$b;->s(ILiy;)Lqy$b;

    .line 18
    invoke-virtual {v5, p1, p3}, Lqy$b;->p(ILiy;)Lqy$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v5

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 20
    throw p1
.end method

.method public static c(Landroid/content/Context;Landroid/util/AttributeSet;IILiy;)Lqy$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/material/R$styleable;->x:[I

    .line 2
    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 3
    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 5
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 6
    invoke-static {p0, p3, p2, p4}, Lqy;->b(Landroid/content/Context;IILiy;)Lqy$b;

    move-result-object p0

    return-object p0
.end method

.method private static h(Landroid/content/res/TypedArray;ILiy;)Liy;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p2

    .line 2
    :cond_0
    iget v0, p1, Landroid/util/TypedValue;->type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 3
    new-instance p2, Lgy;

    iget p1, p1, Landroid/util/TypedValue;->data:I

    .line 4
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result p0

    int-to-float p0, p0

    invoke-direct {p2, p0}, Lgy;-><init>(F)V

    return-object p2

    :cond_1
    const/4 p0, 0x6

    if-ne v0, p0, :cond_2

    .line 5
    new-instance p0, Loy;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2, p2}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result p1

    invoke-direct {p0, p1}, Loy;-><init>(F)V

    return-object p0

    :cond_2
    return-object p2
.end method


# virtual methods
.method public d()Ljy;
    .locals 1

    .line 1
    iget-object v0, p0, Lqy;->d:Ljy;

    return-object v0
.end method

.method public e()Liy;
    .locals 1

    .line 1
    iget-object v0, p0, Lqy;->h:Liy;

    return-object v0
.end method

.method public f()Ljy;
    .locals 1

    .line 1
    iget-object v0, p0, Lqy;->c:Ljy;

    return-object v0
.end method

.method public g()Liy;
    .locals 1

    .line 1
    iget-object v0, p0, Lqy;->g:Liy;

    return-object v0
.end method

.method public i()Lly;
    .locals 1

    .line 1
    iget-object v0, p0, Lqy;->i:Lly;

    return-object v0
.end method

.method public j()Ljy;
    .locals 1

    .line 1
    iget-object v0, p0, Lqy;->a:Ljy;

    return-object v0
.end method

.method public k()Liy;
    .locals 1

    .line 1
    iget-object v0, p0, Lqy;->e:Liy;

    return-object v0
.end method

.method public l()Ljy;
    .locals 1

    .line 1
    iget-object v0, p0, Lqy;->b:Ljy;

    return-object v0
.end method

.method public m()Liy;
    .locals 1

    .line 1
    iget-object v0, p0, Lqy;->f:Liy;

    return-object v0
.end method

.method public n(Landroid/graphics/RectF;)Z
    .locals 5

    .line 1
    const-class v0, Lly;

    iget-object v1, p0, Lqy;->l:Lly;

    .line 2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lqy;->j:Lly;

    .line 3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lqy;->i:Lly;

    .line 4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lqy;->k:Lly;

    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 6
    :goto_0
    iget-object v1, p0, Lqy;->e:Liy;

    invoke-interface {v1, p1}, Liy;->a(Landroid/graphics/RectF;)F

    move-result v1

    .line 7
    iget-object v4, p0, Lqy;->f:Liy;

    .line 8
    invoke-interface {v4, p1}, Liy;->a(Landroid/graphics/RectF;)F

    move-result v4

    cmpl-float v4, v4, v1

    if-nez v4, :cond_1

    iget-object v4, p0, Lqy;->h:Liy;

    .line 9
    invoke-interface {v4, p1}, Liy;->a(Landroid/graphics/RectF;)F

    move-result v4

    cmpl-float v4, v4, v1

    if-nez v4, :cond_1

    iget-object v4, p0, Lqy;->g:Liy;

    .line 10
    invoke-interface {v4, p1}, Liy;->a(Landroid/graphics/RectF;)F

    move-result p1

    cmpl-float p1, p1, v1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 11
    :goto_1
    iget-object v1, p0, Lqy;->b:Ljy;

    instance-of v1, v1, Lpy;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lqy;->a:Ljy;

    instance-of v1, v1, Lpy;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lqy;->c:Ljy;

    instance-of v1, v1, Lpy;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lqy;->d:Ljy;

    instance-of v1, v1, Lpy;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    return v2
.end method

.method public o(F)Lqy;
    .locals 1

    .line 1
    new-instance v0, Lqy$b;

    invoke-direct {v0, p0}, Lqy$b;-><init>(Lqy;)V

    .line 2
    invoke-virtual {v0, p1}, Lqy$b;->o(F)Lqy$b;

    invoke-virtual {v0}, Lqy$b;->m()Lqy;

    move-result-object p1

    return-object p1
.end method
