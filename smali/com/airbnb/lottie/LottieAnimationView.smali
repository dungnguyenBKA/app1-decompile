.class public Lcom/airbnb/lottie/LottieAnimationView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/LottieAnimationView$SavedState;
    }
.end annotation


# static fields
.field private static final u:Ljava/lang/String;

.field private static final v:Lcom/airbnb/lottie/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/i<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final d:Lcom/airbnb/lottie/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/i<",
            "Lcom/airbnb/lottie/e;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/airbnb/lottie/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/i<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private f:I

.field private final g:Lcom/airbnb/lottie/g;

.field private h:Z

.field private i:Ljava/lang/String;

.field private j:I

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Lcom/airbnb/lottie/q;

.field private q:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/airbnb/lottie/k;",
            ">;"
        }
    .end annotation
.end field

.field private r:I

.field private s:Lcom/airbnb/lottie/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/o<",
            "Lcom/airbnb/lottie/e;",
            ">;"
        }
    .end annotation
.end field

.field private t:Lcom/airbnb/lottie/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/LottieAnimationView;->u:Ljava/lang/String;

    .line 2
    new-instance v0, Lcom/airbnb/lottie/LottieAnimationView$a;

    invoke-direct {v0}, Lcom/airbnb/lottie/LottieAnimationView$a;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/LottieAnimationView;->v:Lcom/airbnb/lottie/i;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, Lcom/airbnb/lottie/LottieAnimationView$b;

    invoke-direct {p1, p0}, Lcom/airbnb/lottie/LottieAnimationView$b;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->d:Lcom/airbnb/lottie/i;

    .line 3
    new-instance p1, Lcom/airbnb/lottie/LottieAnimationView$c;

    invoke-direct {p1, p0}, Lcom/airbnb/lottie/LottieAnimationView$c;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lcom/airbnb/lottie/i;

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->f:I

    .line 5
    new-instance v0, Lcom/airbnb/lottie/g;

    invoke-direct {v0}, Lcom/airbnb/lottie/g;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->g:Lcom/airbnb/lottie/g;

    .line 6
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->k:Z

    .line 7
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->l:Z

    .line 8
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->m:Z

    .line 9
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->n:Z

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->o:Z

    .line 11
    sget-object v0, Lcom/airbnb/lottie/q;->b:Lcom/airbnb/lottie/q;

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->p:Lcom/airbnb/lottie/q;

    .line 12
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->q:Ljava/util/Set;

    .line 13
    iput p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->r:I

    const p1, 0x7f03020c

    .line 14
    invoke-direct {p0, p2, p1}, Lcom/airbnb/lottie/LottieAnimationView;->r(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 15
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    new-instance p1, Lcom/airbnb/lottie/LottieAnimationView$b;

    invoke-direct {p1, p0}, Lcom/airbnb/lottie/LottieAnimationView$b;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->d:Lcom/airbnb/lottie/i;

    .line 17
    new-instance p1, Lcom/airbnb/lottie/LottieAnimationView$c;

    invoke-direct {p1, p0}, Lcom/airbnb/lottie/LottieAnimationView$c;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lcom/airbnb/lottie/i;

    const/4 p1, 0x0

    .line 18
    iput p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->f:I

    .line 19
    new-instance v0, Lcom/airbnb/lottie/g;

    invoke-direct {v0}, Lcom/airbnb/lottie/g;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->g:Lcom/airbnb/lottie/g;

    .line 20
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->k:Z

    .line 21
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->l:Z

    .line 22
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->m:Z

    .line 23
    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->n:Z

    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->o:Z

    .line 25
    sget-object v0, Lcom/airbnb/lottie/q;->b:Lcom/airbnb/lottie/q;

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->p:Lcom/airbnb/lottie/q;

    .line 26
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->q:Ljava/util/Set;

    .line 27
    iput p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->r:I

    .line 28
    invoke-direct {p0, p2, p3}, Lcom/airbnb/lottie/LottieAnimationView;->r(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic k(Lcom/airbnb/lottie/LottieAnimationView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->f:I

    return p0
.end method

.method static synthetic l()Lcom/airbnb/lottie/i;
    .locals 1

    .line 1
    sget-object v0, Lcom/airbnb/lottie/LottieAnimationView;->v:Lcom/airbnb/lottie/i;

    return-object v0
.end method

.method static synthetic m(Lcom/airbnb/lottie/LottieAnimationView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->o:Z

    return p0
.end method

.method private p()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->s:Lcom/airbnb/lottie/o;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->d:Lcom/airbnb/lottie/i;

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/o;->h(Lcom/airbnb/lottie/i;)Lcom/airbnb/lottie/o;

    .line 3
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->s:Lcom/airbnb/lottie/o;

    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lcom/airbnb/lottie/i;

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/o;->g(Lcom/airbnb/lottie/i;)Lcom/airbnb/lottie/o;

    :cond_0
    return-void
.end method

.method private q()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->p:Lcom/airbnb/lottie/q;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v2, :cond_7

    :cond_0
    const/4 v1, 0x1

    goto :goto_1

    .line 2
    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->t:Lcom/airbnb/lottie/e;

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/airbnb/lottie/e;->o()Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1c

    if-ge v0, v4, :cond_2

    goto :goto_0

    .line 3
    :cond_2
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->t:Lcom/airbnb/lottie/e;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/airbnb/lottie/e;->k()I

    move-result v0

    const/4 v4, 0x4

    if-le v0, v4, :cond_3

    goto :goto_0

    .line 4
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-ge v0, v4, :cond_4

    goto :goto_0

    :cond_4
    const/16 v4, 0x18

    if-eq v0, v4, :cond_6

    const/16 v4, 0x19

    if-ne v0, v4, :cond_5

    goto :goto_0

    :cond_5
    const/4 v3, 0x1

    :cond_6
    :goto_0
    if-eqz v3, :cond_0

    .line 5
    :cond_7
    :goto_1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayerType()I

    move-result v0

    if-eq v1, v0, :cond_8

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v1, v0}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_8
    return-void
.end method

.method private r(Landroid/util/AttributeSet;I)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/airbnb/lottie/R$styleable;->a:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    .line 2
    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->o:Z

    const/16 v0, 0x9

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    const/4 v3, 0x5

    .line 4
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    const/16 v5, 0xf

    .line 5
    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v1, :cond_1

    if-nez v4, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "lottie_rawRes and lottie_fileName cannot be used at the same time. Please use only one at once."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-eqz v0, :cond_5

    .line 8
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->t(I)V

    goto :goto_2

    :cond_2
    if-eqz v4, :cond_3

    .line 9
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 10
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->u(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    if-eqz v6, :cond_5

    .line 11
    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 12
    iget-boolean v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->o:Z

    if-eqz v1, :cond_4

    .line 13
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/airbnb/lottie/f;->l(Landroid/content/Context;Ljava/lang/String;)Lcom/airbnb/lottie/o;

    move-result-object v0

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v1, v0, v3}, Lcom/airbnb/lottie/f;->m(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/o;

    move-result-object v0

    .line 14
    :goto_1
    invoke-direct {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->w(Lcom/airbnb/lottie/o;)V

    :cond_5
    :goto_2
    const/4 v0, 0x4

    .line 15
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 16
    iput v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->f:I

    .line 17
    invoke-virtual {p1, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 18
    iput-boolean p2, p0, Lcom/airbnb/lottie/LottieAnimationView;->m:Z

    .line 19
    iput-boolean p2, p0, Lcom/airbnb/lottie/LottieAnimationView;->n:Z

    :cond_6
    const/4 v0, 0x7

    .line 20
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_7

    .line 21
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->g:Lcom/airbnb/lottie/g;

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/g;->A(I)V

    :cond_7
    const/16 v0, 0xc

    .line 22
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 23
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 24
    iget-object v3, p0, Lcom/airbnb/lottie/LottieAnimationView;->g:Lcom/airbnb/lottie/g;

    invoke-virtual {v3, v0}, Lcom/airbnb/lottie/g;->B(I)V

    :cond_8
    const/16 v0, 0xb

    .line 25
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 26
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 27
    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->g:Lcom/airbnb/lottie/g;

    invoke-virtual {v1, v0}, Lcom/airbnb/lottie/g;->A(I)V

    :cond_9
    const/16 v0, 0xe

    .line 28
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v1, :cond_a

    .line 29
    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    .line 30
    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->g:Lcom/airbnb/lottie/g;

    invoke-virtual {v1, v0}, Lcom/airbnb/lottie/g;->E(F)V

    :cond_a
    const/4 v0, 0x6

    .line 31
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 32
    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->g:Lcom/airbnb/lottie/g;

    invoke-virtual {v1, v0}, Lcom/airbnb/lottie/g;->y(Ljava/lang/String;)V

    const/16 v0, 0x8

    const/4 v1, 0x0

    .line 33
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    .line 34
    iget-object v4, p0, Lcom/airbnb/lottie/LottieAnimationView;->g:Lcom/airbnb/lottie/g;

    invoke-virtual {v4, v0}, Lcom/airbnb/lottie/g;->z(F)V

    const/4 v0, 0x3

    .line 35
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 36
    iget-object v5, p0, Lcom/airbnb/lottie/LottieAnimationView;->g:Lcom/airbnb/lottie/g;

    invoke-virtual {v5, v4}, Lcom/airbnb/lottie/g;->j(Z)V

    const/4 v4, 0x2

    .line 37
    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 38
    new-instance v5, Lcom/airbnb/lottie/r;

    .line 39
    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    invoke-direct {v5, v4}, Lcom/airbnb/lottie/r;-><init>(I)V

    .line 40
    new-instance v4, Lo8;

    const-string v6, "**"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Lo8;-><init>([Ljava/lang/String;)V

    .line 41
    new-instance v6, Lgc;

    invoke-direct {v6, v5}, Lgc;-><init>(Ljava/lang/Object;)V

    .line 42
    sget-object v5, Lcom/airbnb/lottie/l;->C:Landroid/graphics/ColorFilter;

    .line 43
    iget-object v7, p0, Lcom/airbnb/lottie/LottieAnimationView;->g:Lcom/airbnb/lottie/g;

    invoke-virtual {v7, v4, v5, v6}, Lcom/airbnb/lottie/g;->e(Lo8;Ljava/lang/Object;Lgc;)V

    :cond_b
    const/16 v4, 0xd

    .line 44
    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 45
    iget-object v5, p0, Lcom/airbnb/lottie/LottieAnimationView;->g:Lcom/airbnb/lottie/g;

    invoke-virtual {p1, v4, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    invoke-virtual {v5, v4}, Lcom/airbnb/lottie/g;->C(F)V

    :cond_c
    const/16 v4, 0xa

    .line 46
    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 47
    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 48
    invoke-static {}, Lcom/airbnb/lottie/q;->values()[Lcom/airbnb/lottie/q;

    if-lt v4, v0, :cond_d

    const/4 v4, 0x0

    .line 49
    :cond_d
    invoke-static {}, Lcom/airbnb/lottie/q;->values()[Lcom/airbnb/lottie/q;

    move-result-object v0

    aget-object v0, v0, v4

    .line 50
    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->p:Lcom/airbnb/lottie/q;

    .line 51
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->q()V

    .line 52
    :cond_e
    invoke-virtual {p0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 53
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->g:Lcom/airbnb/lottie/g;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/airbnb/lottie/g;->D(Landroid/widget/ImageView$ScaleType;)V

    .line 54
    :cond_f
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 55
    iget-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->g:Lcom/airbnb/lottie/g;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 56
    sget v4, Ldc;->g:I

    .line 57
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "animator_duration_scale"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_10

    const/4 v2, 0x1

    .line 58
    :cond_10
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/g;->F(Ljava/lang/Boolean;)V

    .line 59
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->q()V

    .line 60
    iput-boolean p2, p0, Lcom/airbnb/lottie/LottieAnimationView;->h:Z

    return-void
.end method

.method private w(Lcom/airbnb/lottie/o;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/o<",
            "Lcom/airbnb/lottie/e;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->t:Lcom/airbnb/lottie/e;

    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->g:Lcom/airbnb/lottie/g;

    invoke-virtual {v0}, Lcom/airbnb/lottie/g;->h()V

    .line 3
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->p()V

    .line 4
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->d:Lcom/airbnb/lottie/i;

    .line 5
    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/o;->f(Lcom/airbnb/lottie/i;)Lcom/airbnb/lottie/o;

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lcom/airbnb/lottie/i;

    .line 6
    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/o;->e(Lcom/airbnb/lottie/i;)Lcom/airbnb/lottie/o;

    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->s:Lcom/airbnb/lottie/o;

    return-void
.end method


# virtual methods
.method public buildDrawingCache(Z)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->r:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->r:I

    .line 2
    invoke-super {p0, p1}, Landroid/widget/ImageView;->buildDrawingCache(Z)V

    .line 3
    iget v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->r:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayerType()I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_0

    .line 5
    sget-object p1, Lcom/airbnb/lottie/q;->c:Lcom/airbnb/lottie/q;

    .line 6
    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->p:Lcom/airbnb/lottie/q;

    .line 7
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->q()V

    .line 8
    :cond_0
    iget p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->r:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->r:I

    const-string p1, "buildDrawingCache"

    .line 9
    invoke-static {p1}, Lcom/airbnb/lottie/b;->a(Ljava/lang/String;)F

    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->g:Lcom/airbnb/lottie/g;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-super {p0, v1}, Landroid/widget/ImageView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public n(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->g:Lcom/airbnb/lottie/g;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/g;->c(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public o(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->g:Lcom/airbnb/lottie/g;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/g;->d(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->n:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->m:Z

    if-eqz v0, :cond_1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->s()V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->n:Z

    .line 5
    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->m:Z

    .line 6
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_2

    .line 7
    invoke-virtual {p0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    invoke-virtual {p0, p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->onVisibilityChanged(Landroid/view/View;I)V

    :cond_2
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->g:Lcom/airbnb/lottie/g;

    invoke-virtual {v0}, Lcom/airbnb/lottie/g;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->m:Z

    .line 3
    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->l:Z

    .line 4
    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->k:Z

    .line 5
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->g:Lcom/airbnb/lottie/g;

    invoke-virtual {v0}, Lcom/airbnb/lottie/g;->g()V

    .line 6
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->q()V

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->m:Z

    .line 8
    :cond_0
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 3
    :cond_0
    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;

    .line 4
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/ImageView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 5
    iget-object v0, p1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->i:Ljava/lang/String;

    .line 6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->i:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->u(Ljava/lang/String;)V

    .line 8
    :cond_1
    iget v0, p1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->c:I

    iput v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->j:I

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->t(I)V

    .line 10
    :cond_2
    iget v0, p1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->d:F

    .line 11
    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->g:Lcom/airbnb/lottie/g;

    invoke-virtual {v1, v0}, Lcom/airbnb/lottie/g;->z(F)V

    .line 12
    iget-boolean v0, p1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->e:Z

    if-eqz v0, :cond_3

    .line 13
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->s()V

    .line 14
    :cond_3
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->g:Lcom/airbnb/lottie/g;

    iget-object v1, p1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/g;->y(Ljava/lang/String;)V

    .line 15
    iget v0, p1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->g:I

    .line 16
    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->g:Lcom/airbnb/lottie/g;

    invoke-virtual {v1, v0}, Lcom/airbnb/lottie/g;->B(I)V

    .line 17
    iget p1, p1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->h:I

    .line 18
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->g:Lcom/airbnb/lottie/g;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/g;->A(I)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/ImageView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;

    invoke-direct {v1, v0}, Lcom/airbnb/lottie/LottieAnimationView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 3
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->i:Ljava/lang/String;

    iput-object v0, v1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->b:Ljava/lang/String;

    .line 4
    iget v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->j:I

    iput v0, v1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->c:I

    .line 5
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->g:Lcom/airbnb/lottie/g;

    invoke-virtual {v0}, Lcom/airbnb/lottie/g;->o()F

    move-result v0

    iput v0, v1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->d:F

    .line 6
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->g:Lcom/airbnb/lottie/g;

    invoke-virtual {v0}, Lcom/airbnb/lottie/g;->s()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    sget v0, Lc3;->g:I

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 9
    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->m:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, v1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->e:Z

    .line 10
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->g:Lcom/airbnb/lottie/g;

    invoke-virtual {v0}, Lcom/airbnb/lottie/g;->n()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->f:Ljava/lang/String;

    .line 11
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->g:Lcom/airbnb/lottie/g;

    invoke-virtual {v0}, Lcom/airbnb/lottie/g;->q()I

    move-result v0

    iput v0, v1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->g:I

    .line 12
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->g:Lcom/airbnb/lottie/g;

    invoke-virtual {v0}, Lcom/airbnb/lottie/g;->p()I

    move-result v0

    iput v0, v1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->h:I

    return-object v1
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    .line 1
    iget-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->h:Z

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->isShown()Z

    move-result p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 3
    iget-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->l:Z

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p0}, Landroid/widget/ImageView;->isShown()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->g:Lcom/airbnb/lottie/g;

    invoke-virtual {p1}, Lcom/airbnb/lottie/g;->v()V

    .line 6
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->q()V

    goto :goto_0

    .line 7
    :cond_1
    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->k:Z

    .line 8
    iput-boolean p2, p0, Lcom/airbnb/lottie/LottieAnimationView;->l:Z

    goto :goto_0

    .line 9
    :cond_2
    iget-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->k:Z

    if-eqz p1, :cond_3

    .line 10
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->s()V

    .line 11
    :cond_3
    :goto_0
    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->l:Z

    .line 12
    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->k:Z

    goto :goto_1

    .line 13
    :cond_4
    iget-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->g:Lcom/airbnb/lottie/g;

    invoke-virtual {p1}, Lcom/airbnb/lottie/g;->s()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 14
    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->n:Z

    .line 15
    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->m:Z

    .line 16
    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->l:Z

    .line 17
    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->k:Z

    .line 18
    iget-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->g:Lcom/airbnb/lottie/g;

    invoke-virtual {p1}, Lcom/airbnb/lottie/g;->t()V

    .line 19
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->q()V

    .line 20
    iput-boolean p2, p0, Lcom/airbnb/lottie/LottieAnimationView;->l:Z

    :cond_5
    :goto_1
    return-void
.end method

.method public s()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->g:Lcom/airbnb/lottie/g;

    invoke-virtual {v0}, Lcom/airbnb/lottie/g;->u()V

    .line 3
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->q()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->k:Z

    :goto_0
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->p()V

    .line 2
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->p()V

    .line 2
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageResource(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->p()V

    .line 2
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->g:Lcom/airbnb/lottie/g;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/g;->D(Landroid/widget/ImageView$ScaleType;)V

    :cond_0
    return-void
.end method

.method public t(I)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->j:I

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->i:Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, Landroid/widget/ImageView;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    new-instance v0, Lcom/airbnb/lottie/o;

    new-instance v1, Lcom/airbnb/lottie/c;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/lottie/c;-><init>(Lcom/airbnb/lottie/LottieAnimationView;I)V

    const/4 p1, 0x1

    invoke-direct {v0, v1, p1}, Lcom/airbnb/lottie/o;-><init>(Ljava/util/concurrent/Callable;Z)V

    goto :goto_1

    .line 5
    :cond_0
    iget-boolean v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->o:Z

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/airbnb/lottie/f;->h(Landroid/content/Context;I)Lcom/airbnb/lottie/o;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, v0}, Lcom/airbnb/lottie/f;->i(Landroid/content/Context;ILjava/lang/String;)Lcom/airbnb/lottie/o;

    move-result-object p1

    :goto_0
    move-object v0, p1

    .line 7
    :goto_1
    invoke-direct {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->w(Lcom/airbnb/lottie/o;)V

    return-void
.end method

.method public u(Ljava/lang/String;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->i:Ljava/lang/String;

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->j:I

    .line 3
    invoke-virtual {p0}, Landroid/widget/ImageView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Lcom/airbnb/lottie/o;

    new-instance v1, Lcom/airbnb/lottie/d;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/lottie/d;-><init>(Lcom/airbnb/lottie/LottieAnimationView;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-direct {v0, v1, p1}, Lcom/airbnb/lottie/o;-><init>(Ljava/util/concurrent/Callable;Z)V

    goto :goto_1

    .line 5
    :cond_0
    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->o:Z

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/airbnb/lottie/f;->c(Landroid/content/Context;Ljava/lang/String;)Lcom/airbnb/lottie/o;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/airbnb/lottie/f;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/o;

    move-result-object p1

    :goto_0
    move-object v0, p1

    .line 7
    :goto_1
    invoke-direct {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->w(Lcom/airbnb/lottie/o;)V

    return-void
.end method

.method public v(Lcom/airbnb/lottie/e;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->g:Lcom/airbnb/lottie/g;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2
    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->t:Lcom/airbnb/lottie/e;

    .line 3
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->g:Lcom/airbnb/lottie/g;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/g;->w(Lcom/airbnb/lottie/e;)Z

    move-result v0

    .line 4
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->q()V

    .line 5
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/lottie/LottieAnimationView;->g:Lcom/airbnb/lottie/g;

    if-ne v1, v2, :cond_0

    if-nez v0, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    invoke-virtual {p0, p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 7
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    .line 8
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->q:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/k;

    .line 9
    invoke-interface {v1, p1}, Lcom/airbnb/lottie/k;->a(Lcom/airbnb/lottie/e;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public x(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->g:Lcom/airbnb/lottie/g;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/g;->y(Ljava/lang/String;)V

    return-void
.end method

.method public y(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->g:Lcom/airbnb/lottie/g;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/g;->z(F)V

    return-void
.end method
