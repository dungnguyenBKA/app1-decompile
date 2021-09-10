.class public Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;
.super Landroid/widget/HorizontalScrollView;
.source "SourceFile"


# annotations
.annotation runtime Landroidx/viewpager/widget/ViewPager$c;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$g;,
        Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$a;,
        Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$h;,
        Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$e;,
        Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$c;,
        Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$f;,
        Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$d;,
        Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$b;
    }
.end annotation


# static fields
.field private static final E:Lk2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk2<",
            "Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$d;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$e;

.field private B:Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$a;

.field private C:Z

.field private final D:Lk2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk2<",
            "Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$f;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$d;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$d;

.field private final d:Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$c;

.field e:I

.field f:I

.field g:I

.field h:I

.field i:I

.field j:Landroid/content/res/ColorStateList;

.field k:F

.field l:F

.field final m:I

.field n:I

.field private final o:I

.field private final p:I

.field private final q:I

.field private r:I

.field s:I

.field t:I

.field private final u:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$b;",
            ">;"
        }
    .end annotation
.end field

.field private v:Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$b;

.field private w:Lcom/camerasideas/collagemaker/activity/widget/n;

.field x:Landroidx/viewpager/widget/ViewPager;

.field private y:Landroidx/viewpager/widget/a;

.field private z:Landroid/database/DataSetObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lm2;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lm2;-><init>(I)V

    sput-object v0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->E:Lk2;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->b:Ljava/util/ArrayList;

    const v0, 0x7fffffff

    .line 4
    iput v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->n:I

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->u:Ljava/util/ArrayList;

    .line 6
    new-instance v0, Ll2;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Ll2;-><init>(I)V

    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->D:Lk2;

    .line 7
    invoke-static {p1}, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$g;->a(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 9
    new-instance v2, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$c;

    invoke-direct {v2, p0, p1}, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$c;-><init>(Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->d:Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$c;

    .line 10
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-super {p0, v2, v0, v3}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 11
    sget-object v3, Lcom/camerasideas/collagemaker/R$styleable;->e:[I

    const v4, 0x7f0f0256

    invoke-virtual {p1, p2, v3, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 p3, 0x4

    .line 12
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    .line 13
    invoke-virtual {v2, p3}, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$c;->e(I)V

    const/4 p3, 0x5

    .line 14
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    .line 15
    invoke-virtual {v2, p3}, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$c;->f(I)V

    const/4 p3, 0x3

    .line 16
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$c;->d(I)V

    const/16 v3, 0x9

    .line 17
    invoke-virtual {p2, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->h:I

    iput v3, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->g:I

    iput v3, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->f:I

    iput v3, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->e:I

    .line 18
    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->e:I

    .line 19
    iget v1, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->f:I

    const/16 v3, 0xd

    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->f:I

    .line 20
    iget v1, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->g:I

    const/16 v3, 0xb

    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->g:I

    .line 21
    iget v1, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->h:I

    const/16 v3, 0xa

    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->h:I

    const/16 v1, 0xf

    const v3, 0x7f0f0171

    .line 22
    invoke-virtual {p2, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->i:I

    .line 23
    sget-object v3, Lcom/camerasideas/collagemaker/R$styleable;->m:[I

    invoke-virtual {p1, v1, v3}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 24
    :try_start_0
    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->k:F

    .line 25
    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->j:Landroid/content/res/ColorStateList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    const/16 p1, 0x10

    .line 27
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 28
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->j:Landroid/content/res/ColorStateList;

    :cond_0
    const/16 p1, 0xe

    .line 29
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    const/4 v1, 0x2

    const/4 v3, 0x1

    if-eqz p3, :cond_1

    .line 30
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    .line 31
    iget-object p3, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->j:Landroid/content/res/ColorStateList;

    invoke-virtual {p3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p3

    new-array v4, v1, [[I

    new-array v6, v1, [I

    .line 32
    sget-object v7, Landroid/widget/HorizontalScrollView;->SELECTED_STATE_SET:[I

    aput-object v7, v4, v0

    aput p1, v6, v0

    .line 33
    sget-object p1, Landroid/widget/HorizontalScrollView;->EMPTY_STATE_SET:[I

    aput-object p1, v4, v3

    aput p3, v6, v3

    .line 34
    new-instance p1, Landroid/content/res/ColorStateList;

    invoke-direct {p1, v4, v6}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 35
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->j:Landroid/content/res/ColorStateList;

    :cond_1
    const/4 p1, 0x7

    .line 36
    invoke-virtual {p2, p1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->o:I

    const/4 p1, 0x6

    .line 37
    invoke-virtual {p2, p1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->p:I

    .line 38
    invoke-virtual {p2, v0, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->m:I

    .line 39
    invoke-virtual {p2, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->r:I

    const/16 p1, 0x8

    .line 40
    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->t:I

    .line 41
    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->s:I

    .line 42
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 43
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f060217

    .line 44
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->l:F

    const p2, 0x7f060215

    .line 45
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->q:I

    .line 46
    iget p1, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->t:I

    if-nez p1, :cond_2

    .line 47
    iget p1, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->r:I

    iget p2, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->e:I

    sub-int/2addr p1, p2

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 48
    :goto_0
    sget p2, Lc3;->g:I

    .line 49
    invoke-virtual {v2, p1, v0, v0, v0}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 50
    iget p1, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->t:I

    if-eqz p1, :cond_4

    if-eq p1, v3, :cond_3

    goto :goto_1

    .line 51
    :cond_3
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto :goto_1

    :cond_4
    const p1, 0x800003

    .line 52
    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 53
    :goto_1
    invoke-virtual {p0, v3}, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->o(Z)V

    return-void

    :catchall_0
    move-exception p2

    .line 54
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 55
    throw p2
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/google/android/material/tabs/TabItem;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/google/android/material/tabs/TabItem;

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Only TabItem instances can be added to TabLayout"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private b(I)V
    .locals 7

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    .line 2
    sget v0, Lc3;->g:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->isLaidOut()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->d:Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$c;

    .line 5
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_2

    .line 6
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 7
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    if-gtz v6, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v4, :cond_3

    goto :goto_2

    .line 8
    :cond_3
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v0

    .line 9
    invoke-direct {p0, p1, v1}, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->c(IF)I

    move-result v1

    if-eq v0, v1, :cond_5

    .line 10
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->w:Lcom/camerasideas/collagemaker/activity/widget/n;

    if-nez v2, :cond_4

    .line 11
    new-instance v2, Lcom/camerasideas/collagemaker/activity/widget/n;

    new-instance v3, Lcom/camerasideas/collagemaker/activity/widget/o;

    invoke-direct {v3}, Lcom/camerasideas/collagemaker/activity/widget/o;-><init>()V

    invoke-direct {v2, v3}, Lcom/camerasideas/collagemaker/activity/widget/n;-><init>(Lcom/camerasideas/collagemaker/activity/widget/n$f;)V

    .line 12
    iput-object v2, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->w:Lcom/camerasideas/collagemaker/activity/widget/n;

    .line 13
    sget-object v3, Lcom/camerasideas/collagemaker/activity/widget/d;->a:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Lcom/camerasideas/collagemaker/activity/widget/n;->k(Landroid/view/animation/Interpolator;)V

    .line 14
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->w:Lcom/camerasideas/collagemaker/activity/widget/n;

    const-wide/16 v3, 0x12c

    invoke-virtual {v2, v3, v4}, Lcom/camerasideas/collagemaker/activity/widget/n;->h(J)V

    .line 15
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->w:Lcom/camerasideas/collagemaker/activity/widget/n;

    new-instance v3, Lcom/camerasideas/collagemaker/activity/widget/b;

    invoke-direct {v3, p0}, Lcom/camerasideas/collagemaker/activity/widget/b;-><init>(Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;)V

    invoke-virtual {v2, v3}, Lcom/camerasideas/collagemaker/activity/widget/n;->b(Lcom/camerasideas/collagemaker/activity/widget/n$e;)V

    .line 16
    :cond_4
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->w:Lcom/camerasideas/collagemaker/activity/widget/n;

    invoke-virtual {v2, v0, v1}, Lcom/camerasideas/collagemaker/activity/widget/n;->j(II)V

    .line 17
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->w:Lcom/camerasideas/collagemaker/activity/widget/n;

    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/activity/widget/n;->l()V

    .line 18
    :cond_5
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->d:Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$c;

    const/16 v1, 0x12c

    invoke-virtual {v0, p1, v1}, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$c;->a(II)V

    return-void

    .line 19
    :cond_6
    :goto_2
    invoke-virtual {p0, p1, v1, v2, v2}, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->k(IFZZ)V

    return-void
.end method

.method private c(IF)I
    .locals 3

    .line 1
    iget v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->t:I

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->d:Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$c;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    add-int/lit8 p1, p1, 0x1

    .line 3
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->d:Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$c;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 4
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->d:Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$c;

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 7
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result p1

    add-int/2addr v2, v1

    int-to-float v1, v2

    mul-float v1, v1, p2

    const/high16 p2, 0x3f000000    # 0.5f

    mul-float v1, v1, p2

    float-to-int p2, v1

    add-int/2addr p1, p2

    .line 8
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p2, p1

    .line 9
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    sub-int/2addr p2, p1

    return p2

    :cond_3
    return v1
.end method

.method private l(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->d:Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$c;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2
    iget-object v3, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->d:Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$c;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ne v2, p1, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    .line 3
    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private m(Landroidx/viewpager/widget/ViewPager;ZZ)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->x:Landroidx/viewpager/widget/ViewPager;

    if-eqz p2, :cond_1

    .line 2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->A:Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$e;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p2, v0}, Landroidx/viewpager/widget/ViewPager;->t(Landroidx/viewpager/widget/ViewPager$g;)V

    .line 4
    :cond_0
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->B:Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$a;

    if-eqz p2, :cond_1

    .line 5
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->x:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, p2}, Landroidx/viewpager/widget/ViewPager;->s(Landroidx/viewpager/widget/ViewPager$f;)V

    .line 6
    :cond_1
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->v:Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$b;

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 7
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->u:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 8
    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->v:Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$b;

    :cond_2
    if-eqz p1, :cond_6

    .line 9
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->x:Landroidx/viewpager/widget/ViewPager;

    .line 10
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->A:Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$e;

    if-nez p2, :cond_3

    .line 11
    new-instance p2, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$e;

    invoke-direct {p2, p0}, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$e;-><init>(Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;)V

    iput-object p2, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->A:Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$e;

    .line 12
    :cond_3
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->A:Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$e;

    invoke-virtual {p2}, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$e;->d()V

    .line 13
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->A:Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$e;

    invoke-virtual {p1, p2}, Landroidx/viewpager/widget/ViewPager;->b(Landroidx/viewpager/widget/ViewPager$g;)V

    .line 14
    new-instance p2, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$h;

    invoke-direct {p2, p1}, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$h;-><init>(Landroidx/viewpager/widget/ViewPager;)V

    iput-object p2, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->v:Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$b;

    .line 15
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->u:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 16
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->u:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    :cond_4
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->B:Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$a;

    if-nez p2, :cond_5

    .line 18
    new-instance p2, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$a;

    invoke-direct {p2, p0}, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$a;-><init>(Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;)V

    iput-object p2, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->B:Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$a;

    .line 19
    :cond_5
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->B:Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$a;

    .line 20
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->B:Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$a;

    invoke-virtual {p1, p2}, Landroidx/viewpager/widget/ViewPager;->a(Landroidx/viewpager/widget/ViewPager$f;)V

    .line 22
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->i()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    .line 23
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->k(IFZZ)V

    goto :goto_0

    .line 24
    :cond_6
    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->x:Landroidx/viewpager/widget/ViewPager;

    const/4 p1, 0x0

    .line 25
    invoke-virtual {p0, v0, p1}, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->j(Landroidx/viewpager/widget/a;Z)V

    .line 26
    :goto_0
    iput-boolean p3, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->C:Z

    return-void
.end method

.method private n(Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->t:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->s:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 3
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_0

    :cond_0
    const/4 v0, -0x2

    .line 4
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v0, 0x0

    .line 5
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    :goto_0
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->a(Landroid/view/View;)V

    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->a(Landroid/view/View;)V

    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->a(Landroid/view/View;)V

    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->a(Landroid/view/View;)V

    return-void
.end method

.method d(I)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float p1, p1

    mul-float v0, v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method public e()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->c:Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$d;->a()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public f(I)Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$d;
    .locals 1

    if-ltz p1, :cond_1

    .line 1
    invoke-virtual {p0}, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->g()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$d;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public g()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 0

    .line 2
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method h()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->d:Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$c;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, -0x1

    add-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 2
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->d:Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$c;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$f;

    .line 3
    iget-object v3, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->d:Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$c;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v2}, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$f;->a()V

    .line 5
    iget-object v3, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->D:Lk2;

    invoke-interface {v3, v2}, Lk2;->a(Ljava/lang/Object;)Z

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->requestLayout()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 8
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$d;

    .line 9
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 10
    invoke-virtual {v2}, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$d;->d()V

    .line 11
    sget-object v3, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->E:Lk2;

    invoke-interface {v3, v2}, Lk2;->a(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->c:Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$d;

    .line 13
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->y:Landroidx/viewpager/widget/a;

    if-eqz v2, :cond_b

    .line 14
    invoke-virtual {v2}, Landroidx/viewpager/widget/a;->a()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_2
    const/4 v5, 0x1

    if-ge v4, v2, :cond_a

    .line 15
    sget-object v6, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->E:Lk2;

    invoke-interface {v6}, Lk2;->b()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$d;

    if-nez v6, :cond_3

    .line 16
    new-instance v6, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$d;

    invoke-direct {v6}, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$d;-><init>()V

    .line 17
    :cond_3
    iput-object p0, v6, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$d;->c:Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;

    .line 18
    iget-object v7, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->D:Lk2;

    if-eqz v7, :cond_4

    invoke-interface {v7}, Lk2;->b()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$f;

    goto :goto_3

    :cond_4
    move-object v7, v0

    :goto_3
    if-nez v7, :cond_5

    .line 19
    new-instance v7, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$f;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, p0, v8}, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$f;-><init>(Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;Landroid/content/Context;)V

    .line 20
    :cond_5
    invoke-virtual {v7, v6}, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$f;->b(Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$d;)V

    .line 21
    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 22
    iget v8, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->o:I

    if-eq v8, v1, :cond_6

    goto :goto_4

    .line 23
    :cond_6
    iget v8, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->t:I

    if-nez v8, :cond_7

    iget v8, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->q:I

    goto :goto_4

    :cond_7
    const/4 v8, 0x0

    .line 24
    :goto_4
    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setMinimumWidth(I)V

    .line 25
    iput-object v7, v6, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$d;->d:Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$f;

    .line 26
    iget-object v7, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->y:Landroidx/viewpager/widget/a;

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6, v0}, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$d;->f(Ljava/lang/CharSequence;)Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$d;

    .line 27
    iget-object v7, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->b:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 28
    iget-object v8, v6, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$d;->c:Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;

    if-ne v8, p0, :cond_9

    .line 29
    invoke-virtual {v6, v7}, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$d;->e(I)V

    .line 30
    iget-object v8, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->b:Ljava/util/ArrayList;

    invoke-virtual {v8, v7, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 31
    iget-object v8, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->b:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    :goto_5
    add-int/2addr v7, v5

    if-ge v7, v8, :cond_8

    .line 32
    iget-object v9, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->b:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$d;

    invoke-virtual {v9, v7}, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$d;->e(I)V

    goto :goto_5

    .line 33
    :cond_8
    iget-object v5, v6, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$d;->d:Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$f;

    .line 34
    iget-object v7, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->d:Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$c;

    invoke-virtual {v6}, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$d;->a()I

    move-result v6

    .line 35
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x2

    invoke-direct {v8, v9, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 36
    invoke-direct {p0, v8}, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->n(Landroid/widget/LinearLayout$LayoutParams;)V

    .line 37
    invoke-virtual {v7, v5, v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 38
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tab belongs to a different TabLayout."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_a
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->x:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_b

    if-lez v2, :cond_b

    .line 40
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->i()I

    move-result v0

    .line 41
    invoke-virtual {p0}, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->e()I

    move-result v1

    if-eq v0, v1, :cond_b

    invoke-virtual {p0}, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->g()I

    move-result v1

    if-ge v0, v1, :cond_b

    .line 42
    invoke-virtual {p0, v0}, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->f(I)Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$d;

    move-result-object v0

    .line 43
    invoke-virtual {p0, v0, v5}, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->i(Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$d;Z)V

    :cond_b
    return-void
.end method

.method i(Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$d;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->c:Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$d;

    const/4 v1, -0x1

    if-ne v0, p1, :cond_1

    if-eqz v0, :cond_7

    .line 2
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->u:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/2addr p2, v1

    :goto_0
    if-ltz p2, :cond_0

    .line 3
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->u:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$b;

    invoke-interface {v0, p1}, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$b;->b(Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$d;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$d;->a()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->b(I)V

    goto :goto_5

    :cond_1
    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$d;->a()I

    move-result v2

    goto :goto_1

    :cond_2
    const/4 v2, -0x1

    :goto_1
    if-eqz p2, :cond_5

    if-eqz v0, :cond_3

    .line 6
    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$d;->a()I

    move-result p2

    if-ne p2, v1, :cond_4

    :cond_3
    if-eq v2, v1, :cond_4

    const/4 p2, 0x0

    const/4 v3, 0x1

    .line 7
    invoke-virtual {p0, v2, p2, v3, v3}, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->k(IFZZ)V

    goto :goto_2

    .line 8
    :cond_4
    invoke-direct {p0, v2}, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->b(I)V

    :goto_2
    if-eq v2, v1, :cond_5

    .line 9
    invoke-direct {p0, v2}, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->l(I)V

    :cond_5
    if-eqz v0, :cond_6

    .line 10
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->u:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/2addr p2, v1

    :goto_3
    if-ltz p2, :cond_6

    .line 11
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->u:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$b;

    invoke-interface {v2, v0}, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$b;->a(Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$d;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_3

    .line 12
    :cond_6
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->c:Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$d;

    if-eqz p1, :cond_7

    .line 13
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->u:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/2addr p2, v1

    :goto_4
    if-ltz p2, :cond_7

    .line 14
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->u:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$b;

    invoke-interface {v0, p1}, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$b;->c(Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$d;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_4

    :cond_7
    :goto_5
    return-void
.end method

.method j(Landroidx/viewpager/widget/a;Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->y:Landroidx/viewpager/widget/a;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->z:Landroid/database/DataSetObserver;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/a;->b(Landroid/database/DataSetObserver;)V

    :cond_0
    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->y:Landroidx/viewpager/widget/a;

    .line 4
    invoke-virtual {p0}, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->h()V

    return-void
.end method

.method k(IFZZ)V
    .locals 2

    int-to-float v0, p1

    add-float/2addr v0, p2

    .line 1
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    if-ltz v0, :cond_3

    .line 2
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->d:Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$c;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    .line 3
    iget-object p4, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->d:Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$c;

    invoke-virtual {p4, p1, p2}, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$c;->c(IF)V

    .line 4
    :cond_1
    iget-object p4, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->w:Lcom/camerasideas/collagemaker/activity/widget/n;

    if-eqz p4, :cond_2

    invoke-virtual {p4}, Lcom/camerasideas/collagemaker/activity/widget/n;->g()Z

    move-result p4

    if-eqz p4, :cond_2

    .line 5
    iget-object p4, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->w:Lcom/camerasideas/collagemaker/activity/widget/n;

    invoke-virtual {p4}, Lcom/camerasideas/collagemaker/activity/widget/n;->c()V

    .line 6
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->c(IF)I

    move-result p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    if-eqz p3, :cond_3

    .line 7
    invoke-direct {p0, v0}, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->l(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method o(Z)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->d:Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$c;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 2
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->d:Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$c;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3
    iget v3, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->o:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget v3, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->t:I

    if-nez v3, :cond_1

    iget v3, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->q:I

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 5
    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setMinimumWidth(I)V

    .line 6
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v3}, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->n(Landroid/widget/LinearLayout$LayoutParams;)V

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->x:Landroidx/viewpager/widget/ViewPager;

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 4
    instance-of v1, v0, Landroidx/viewpager/widget/ViewPager;

    if-eqz v1, :cond_0

    .line 5
    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v1}, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->m(Landroidx/viewpager/widget/ViewPager;ZZ)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    .line 2
    iget-boolean v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->C:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3
    invoke-direct {p0, v0, v1, v2}, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->m(Landroidx/viewpager/widget/ViewPager;ZZ)V

    .line 4
    iput-boolean v2, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->C:Z

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 2
    iget-object v3, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$d;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x30

    .line 3
    invoke-virtual {p0, v0}, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->d(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingTop()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingBottom()I

    move-result v0

    add-int/2addr v0, v2

    .line 4
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    const/high16 v3, -0x80000000

    const/high16 v4, 0x40000000    # 2.0f

    if-eq v2, v3, :cond_2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_1

    .line 6
    :cond_2
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 7
    invoke-static {p2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 8
    :goto_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 9
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    if-eqz v2, :cond_4

    .line 10
    iget v2, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->p:I

    if-lez v2, :cond_3

    goto :goto_2

    :cond_3
    const/16 v2, 0x38

    .line 11
    invoke-virtual {p0, v2}, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->d(I)I

    move-result v2

    sub-int v2, v0, v2

    :goto_2
    iput v2, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->n:I

    .line 12
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 13
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_8

    .line 14
    invoke-virtual {p0, v1}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 15
    iget v2, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->t:I

    if-eqz v2, :cond_6

    if-eq v2, v0, :cond_5

    goto :goto_4

    .line 16
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    move-result v3

    if-eq v2, v3, :cond_7

    :goto_3
    const/4 v1, 0x1

    goto :goto_4

    .line 17
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    move-result v3

    if-ge v2, v3, :cond_7

    goto :goto_3

    :cond_7
    :goto_4
    if-eqz v1, :cond_8

    .line 18
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingTop()I

    move-result v0

    .line 19
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingBottom()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 20
    invoke-static {p2, v1, v0}, Landroid/widget/HorizontalScrollView;->getChildMeasureSpec(III)I

    move-result p2

    .line 21
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    move-result v0

    .line 22
    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 23
    invoke-virtual {p1, v0, p2}, Landroid/view/View;->measure(II)V

    :cond_8
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout;->d:Lcom/camerasideas/collagemaker/activity/widget/CustomTabLayout$c;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    .line 2
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    .line 3
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method
