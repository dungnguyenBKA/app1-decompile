.class public Lcom/google/android/material/button/MaterialButtonToggleGroup;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/button/MaterialButtonToggleGroup$c;,
        Lcom/google/android/material/button/MaterialButtonToggleGroup$e;,
        Lcom/google/android/material/button/MaterialButtonToggleGroup$b;,
        Lcom/google/android/material/button/MaterialButtonToggleGroup$d;
    }
.end annotation


# static fields
.field private static final k:Ljava/lang/String;


# instance fields
.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/material/button/MaterialButtonToggleGroup$c;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/material/button/MaterialButtonToggleGroup$b;

.field private final d:Lcom/google/android/material/button/MaterialButtonToggleGroup$e;

.field private final e:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lcom/google/android/material/button/MaterialButtonToggleGroup$d;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/google/android/material/button/MaterialButton;",
            ">;"
        }
    .end annotation
.end field

.field private g:[Ljava/lang/Integer;

.field private h:Z

.field private i:Z

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/google/android/material/button/MaterialButtonToggleGroup;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->k:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f030225

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->b:Ljava/util/List;

    .line 4
    new-instance v0, Lcom/google/android/material/button/MaterialButtonToggleGroup$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/material/button/MaterialButtonToggleGroup$b;-><init>(Lcom/google/android/material/button/MaterialButtonToggleGroup;Lcom/google/android/material/button/MaterialButtonToggleGroup$a;)V

    iput-object v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->c:Lcom/google/android/material/button/MaterialButtonToggleGroup$b;

    .line 5
    new-instance v0, Lcom/google/android/material/button/MaterialButtonToggleGroup$e;

    invoke-direct {v0, p0, v1}, Lcom/google/android/material/button/MaterialButtonToggleGroup$e;-><init>(Lcom/google/android/material/button/MaterialButtonToggleGroup;Lcom/google/android/material/button/MaterialButtonToggleGroup$a;)V

    iput-object v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->d:Lcom/google/android/material/button/MaterialButtonToggleGroup$e;

    .line 6
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->e:Ljava/util/LinkedHashSet;

    .line 7
    new-instance v0, Lcom/google/android/material/button/MaterialButtonToggleGroup$a;

    invoke-direct {v0, p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup$a;-><init>(Lcom/google/android/material/button/MaterialButtonToggleGroup;)V

    iput-object v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->f:Ljava/util/Comparator;

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->h:Z

    .line 9
    sget-object v3, Lcom/google/android/material/R$styleable;->r:[I

    new-array v6, v0, [I

    const v5, 0x7f0f0286

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    .line 10
    invoke-static/range {v1 .. v6}, Lcom/google/android/material/internal/i;->f(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    .line 11
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    .line 12
    iget-boolean v1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->i:Z

    const/4 v2, -0x1

    if-eq v1, p3, :cond_1

    .line 13
    iput-boolean p3, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->i:Z

    .line 14
    iput-boolean p2, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->h:Z

    const/4 p3, 0x0

    .line 15
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge p3, v1, :cond_0

    .line 16
    invoke-direct {p0, p3}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->h(I)Lcom/google/android/material/button/MaterialButton;

    move-result-object v1

    .line 17
    invoke-virtual {v1, v0}, Lcom/google/android/material/button/MaterialButton;->setChecked(Z)V

    .line 18
    invoke-virtual {v1}, Landroid/widget/Button;->getId()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->g(IZ)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 19
    :cond_0
    iput-boolean v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->h:Z

    .line 20
    invoke-direct {p0, v2}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->j(I)V

    .line 21
    :cond_1
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->j:I

    .line 22
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setChildrenDrawingOrderEnabled(Z)V

    .line 23
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/button/MaterialButtonToggleGroup;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->h:Z

    return p0
.end method

.method static synthetic b(Lcom/google/android/material/button/MaterialButtonToggleGroup;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->i:Z

    return p0
.end method

.method static synthetic c(Lcom/google/android/material/button/MaterialButtonToggleGroup;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->j:I

    return p1
.end method

.method static synthetic d(Lcom/google/android/material/button/MaterialButtonToggleGroup;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->g(IZ)V

    return-void
.end method

.method static synthetic e(Lcom/google/android/material/button/MaterialButtonToggleGroup;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->l(IZ)V

    return-void
.end method

.method private f()V
    .locals 9

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->i()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v2, v0, 0x1

    .line 2
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    const/4 v4, 0x0

    if-ge v2, v3, :cond_3

    .line 3
    invoke-direct {p0, v2}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->h(I)Lcom/google/android/material/button/MaterialButton;

    move-result-object v3

    add-int/lit8 v5, v2, -0x1

    .line 4
    invoke-direct {p0, v5}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->h(I)Lcom/google/android/material/button/MaterialButton;

    move-result-object v5

    .line 5
    invoke-virtual {v3}, Lcom/google/android/material/button/MaterialButton;->k()I

    move-result v6

    invoke-virtual {v5}, Lcom/google/android/material/button/MaterialButton;->k()I

    move-result v5

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 6
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 7
    instance-of v7, v6, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v7, :cond_1

    .line 8
    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    goto :goto_1

    .line 9
    :cond_1
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    iget v8, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v7, v8, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v6, v7

    .line 10
    :goto_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v7

    if-nez v7, :cond_2

    .line 11
    invoke-virtual {v6, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    neg-int v4, v5

    .line 12
    invoke-virtual {v6, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    goto :goto_2

    .line 13
    :cond_2
    iput v4, v6, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    neg-int v4, v5

    .line 14
    iput v4, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 15
    :goto_2
    invoke-virtual {v3, v6}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 16
    :cond_3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-eqz v2, :cond_6

    if-ne v0, v1, :cond_4

    goto :goto_3

    .line 17
    :cond_4
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    .line 18
    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 19
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 20
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 21
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_3

    .line 22
    :cond_5
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 23
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 24
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 25
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    :cond_6
    :goto_3
    return-void
.end method

.method private g(IZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->e:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/button/MaterialButtonToggleGroup$d;

    .line 2
    invoke-interface {v1, p0, p1, p2}, Lcom/google/android/material/button/MaterialButtonToggleGroup$d;->a(Lcom/google/android/material/button/MaterialButtonToggleGroup;IZ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private h(I)Lcom/google/android/material/button/MaterialButton;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    return-object p1
.end method

.method private i()I
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 2
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method private j(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->j:I

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->g(IZ)V

    return-void
.end method

.method private k(IZ)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 2
    instance-of v0, p1, Lcom/google/android/material/button/MaterialButton;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->h:Z

    .line 4
    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p1, p2}, Lcom/google/android/material/button/MaterialButton;->setChecked(Z)V

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->h:Z

    :cond_0
    return-void
.end method

.method private l(IZ)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2
    invoke-direct {p0, v1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->h(I)Lcom/google/android/material/button/MaterialButton;

    move-result-object v2

    .line 3
    invoke-virtual {v2}, Lcom/google/android/material/button/MaterialButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    iget-boolean v3, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->i:Z

    if-eqz v3, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {v2}, Landroid/widget/Button;->getId()I

    move-result v3

    if-eq v3, p1, :cond_0

    .line 5
    invoke-virtual {v2}, Landroid/widget/Button;->getId()I

    move-result v3

    invoke-direct {p0, v3, v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->k(IZ)V

    .line 6
    invoke-virtual {v2}, Landroid/widget/Button;->getId()I

    move-result v2

    invoke-direct {p0, v2, v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->g(IZ)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/google/android/material/button/MaterialButton;

    if-nez v0, :cond_0

    .line 2
    sget-object p1, Lcom/google/android/material/button/MaterialButtonToggleGroup;->k:Ljava/lang/String;

    const-string p2, "Child views must be of type MaterialButton."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 4
    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    .line 5
    invoke-virtual {p1}, Landroid/widget/Button;->getId()I

    move-result p2

    const/4 p3, -0x1

    if-ne p2, p3, :cond_1

    .line 6
    sget p2, Lc3;->g:I

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result p2

    .line 7
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setId(I)V

    :cond_1
    const/4 p2, 0x1

    .line 8
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setMaxLines(I)V

    .line 9
    sget-object p3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, p3}, Landroid/widget/Button;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 10
    invoke-virtual {p1, p2}, Lcom/google/android/material/button/MaterialButton;->o(Z)V

    .line 11
    iget-object p3, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->c:Lcom/google/android/material/button/MaterialButtonToggleGroup$b;

    invoke-virtual {p1, p3}, Lcom/google/android/material/button/MaterialButton;->b(Lcom/google/android/material/button/MaterialButton$a;)V

    .line 12
    iget-object p3, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->d:Lcom/google/android/material/button/MaterialButtonToggleGroup$e;

    invoke-virtual {p1, p3}, Lcom/google/android/material/button/MaterialButton;->q(Lcom/google/android/material/button/MaterialButton$b;)V

    .line 13
    invoke-virtual {p1, p2}, Lcom/google/android/material/button/MaterialButton;->r(Z)V

    .line 14
    invoke-virtual {p1}, Lcom/google/android/material/button/MaterialButton;->isChecked()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 15
    invoke-virtual {p1}, Landroid/widget/Button;->getId()I

    move-result p3

    invoke-direct {p0, p3, p2}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->l(IZ)V

    .line 16
    invoke-virtual {p1}, Landroid/widget/Button;->getId()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->j(I)V

    .line 17
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/material/button/MaterialButton;->i()Lqy;

    move-result-object p1

    .line 18
    iget-object p2, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->b:Ljava/util/List;

    new-instance p3, Lcom/google/android/material/button/MaterialButtonToggleGroup$c;

    .line 19
    invoke-virtual {p1}, Lqy;->k()Liy;

    move-result-object v0

    .line 20
    invoke-virtual {p1}, Lqy;->e()Liy;

    move-result-object v1

    .line 21
    invoke-virtual {p1}, Lqy;->m()Liy;

    move-result-object v2

    .line 22
    invoke-virtual {p1}, Lqy;->g()Liy;

    move-result-object p1

    invoke-direct {p3, v0, v1, v2, p1}, Lcom/google/android/material/button/MaterialButtonToggleGroup$c;-><init>(Liy;Liy;Liy;Liy;)V

    .line 23
    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/TreeMap;

    iget-object v1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->f:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 3
    invoke-direct {p0, v3}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->h(I)Lcom/google/android/material/button/MaterialButton;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Integer;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->g:[Ljava/lang/Integer;

    .line 5
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    const-class v0, Lcom/google/android/material/button/MaterialButtonToggleGroup;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->g:[Ljava/lang/Integer;

    if-eqz p1, :cond_1

    array-length v0, p1

    if-lt p2, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    aget-object p1, p1, p2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 3
    :cond_1
    :goto_0
    sget-object p1, Lcom/google/android/material/button/MaterialButtonToggleGroup;->k:Ljava/lang/String;

    const-string v0, "Child order wasn\'t updated"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p2
.end method

.method m()V
    .locals 11

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 2
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->i()I

    move-result v1

    .line 3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_0
    const/16 v4, 0x8

    const/4 v5, 0x0

    if-ltz v2, :cond_2

    .line 4
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 5
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eq v6, v4, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    :goto_1
    if-eqz v6, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    const/4 v2, -0x1

    :goto_2
    const/4 v6, 0x0

    :goto_3
    if-ge v6, v0, :cond_b

    .line 6
    invoke-direct {p0, v6}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->h(I)Lcom/google/android/material/button/MaterialButton;

    move-result-object v7

    .line 7
    invoke-virtual {v7}, Landroid/widget/Button;->getVisibility()I

    move-result v8

    if-ne v8, v4, :cond_3

    goto :goto_8

    .line 8
    :cond_3
    invoke-virtual {v7}, Lcom/google/android/material/button/MaterialButton;->i()Lqy;

    move-result-object v8

    .line 9
    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    new-instance v9, Lqy$b;

    invoke-direct {v9, v8}, Lqy$b;-><init>(Lqy;)V

    .line 11
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v8

    .line 12
    iget-object v10, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->b:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/material/button/MaterialButtonToggleGroup$c;

    if-ne v8, v3, :cond_4

    goto :goto_6

    .line 13
    :cond_4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v8

    if-nez v8, :cond_5

    const/4 v8, 0x1

    goto :goto_4

    :cond_5
    const/4 v8, 0x0

    :goto_4
    if-ne v6, v1, :cond_7

    if-eqz v8, :cond_6

    .line 14
    invoke-static {v10, p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup$c;->c(Lcom/google/android/material/button/MaterialButtonToggleGroup$c;Landroid/view/View;)Lcom/google/android/material/button/MaterialButtonToggleGroup$c;

    move-result-object v8

    goto :goto_5

    :cond_6
    invoke-static {v10}, Lcom/google/android/material/button/MaterialButtonToggleGroup$c;->d(Lcom/google/android/material/button/MaterialButtonToggleGroup$c;)Lcom/google/android/material/button/MaterialButtonToggleGroup$c;

    move-result-object v8

    :goto_5
    move-object v10, v8

    goto :goto_6

    :cond_7
    if-ne v6, v2, :cond_9

    if-eqz v8, :cond_8

    .line 15
    invoke-static {v10, p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup$c;->b(Lcom/google/android/material/button/MaterialButtonToggleGroup$c;Landroid/view/View;)Lcom/google/android/material/button/MaterialButtonToggleGroup$c;

    move-result-object v8

    goto :goto_5

    :cond_8
    invoke-static {v10}, Lcom/google/android/material/button/MaterialButtonToggleGroup$c;->a(Lcom/google/android/material/button/MaterialButtonToggleGroup$c;)Lcom/google/android/material/button/MaterialButtonToggleGroup$c;

    move-result-object v8

    goto :goto_5

    :cond_9
    const/4 v10, 0x0

    :goto_6
    if-nez v10, :cond_a

    const/4 v8, 0x0

    .line 16
    invoke-virtual {v9, v8}, Lqy$b;->o(F)Lqy$b;

    goto :goto_7

    .line 17
    :cond_a
    iget-object v8, v10, Lcom/google/android/material/button/MaterialButtonToggleGroup$c;->a:Liy;

    .line 18
    invoke-virtual {v9, v8}, Lqy$b;->y(Liy;)Lqy$b;

    iget-object v8, v10, Lcom/google/android/material/button/MaterialButtonToggleGroup$c;->d:Liy;

    .line 19
    invoke-virtual {v9, v8}, Lqy$b;->r(Liy;)Lqy$b;

    iget-object v8, v10, Lcom/google/android/material/button/MaterialButtonToggleGroup$c;->b:Liy;

    .line 20
    invoke-virtual {v9, v8}, Lqy$b;->B(Liy;)Lqy$b;

    iget-object v8, v10, Lcom/google/android/material/button/MaterialButtonToggleGroup$c;->c:Liy;

    .line 21
    invoke-virtual {v9, v8}, Lqy$b;->u(Liy;)Lqy$b;

    .line 22
    :goto_7
    invoke-virtual {v9}, Lqy$b;->m()Lqy;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/material/button/MaterialButton;->e(Lqy;)V

    :goto_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_b
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 2
    iget v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->j:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    .line 3
    invoke-direct {p0, v0, v1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->k(IZ)V

    .line 4
    invoke-direct {p0, v0, v1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->l(IZ)V

    .line 5
    iput v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->j:I

    .line 6
    invoke-direct {p0, v0, v1}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->g(IZ)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->m()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->f()V

    .line 3
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onViewRemoved(Landroid/view/View;)V

    .line 2
    instance-of v0, p1, Lcom/google/android/material/button/MaterialButton;

    if-eqz v0, :cond_0

    .line 3
    move-object v0, p1

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    iget-object v1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->c:Lcom/google/android/material/button/MaterialButtonToggleGroup$b;

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->n(Lcom/google/android/material/button/MaterialButton$a;)V

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->q(Lcom/google/android/material/button/MaterialButton$b;)V

    .line 5
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result p1

    if-ltz p1, :cond_1

    .line 6
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->m()V

    .line 8
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->f()V

    return-void
.end method
