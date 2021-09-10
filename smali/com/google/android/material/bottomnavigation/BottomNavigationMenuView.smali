.class public Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;
.super Landroid/view/ViewGroup;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/n;


# static fields
.field private static final A:[I

.field private static final B:[I


# instance fields
.field private final b:Landroidx/transition/TransitionSet;

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:Landroid/view/View$OnClickListener;

.field private final i:Lk2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk2<",
            "Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;",
            ">;"
        }
    .end annotation
.end field

.field private j:Z

.field private k:I

.field private l:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

.field private m:I

.field private n:I

.field private o:Landroid/content/res/ColorStateList;

.field private p:I

.field private q:Landroid/content/res/ColorStateList;

.field private final r:Landroid/content/res/ColorStateList;

.field private s:I

.field private t:I

.field private u:Landroid/graphics/drawable/Drawable;

.field private v:I

.field private w:[I

.field private x:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/material/badge/BadgeDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private y:Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;

.field private z:Landroidx/appcompat/view/menu/g;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x10100a0

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 1
    sput-object v1, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->A:[I

    new-array v0, v0, [I

    const v1, -0x101009e

    aput v1, v0, v3

    .line 2
    sput-object v0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->B:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, Lm2;

    const/4 p2, 0x5

    invoke-direct {p1, p2}, Lm2;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->i:Lk2;

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->m:I

    .line 4
    iput p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->n:I

    .line 5
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, p2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->x:Landroid/util/SparseArray;

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0601f2

    .line 7
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->c:I

    const v1, 0x7f0601f3

    .line 8
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->d:I

    const v1, 0x7f0601ec

    .line 9
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->e:I

    const v1, 0x7f0601ed

    .line 10
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->f:I

    const v1, 0x7f0601f0

    .line 11
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->g:I

    const v0, 0x1010038

    .line 12
    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->e(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->r:Landroid/content/res/ColorStateList;

    .line 13
    new-instance v0, Landroidx/transition/AutoTransition;

    invoke-direct {v0}, Landroidx/transition/AutoTransition;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->b:Landroidx/transition/TransitionSet;

    .line 14
    invoke-virtual {v0, p1}, Landroidx/transition/TransitionSet;->V(I)Landroidx/transition/TransitionSet;

    const-wide/16 v1, 0x73

    .line 15
    invoke-virtual {v0, v1, v2}, Landroidx/transition/TransitionSet;->T(J)Landroidx/transition/TransitionSet;

    .line 16
    new-instance p1, Lx3;

    invoke-direct {p1}, Lx3;-><init>()V

    invoke-virtual {v0, p1}, Landroidx/transition/TransitionSet;->U(Landroid/animation/TimeInterpolator;)Landroidx/transition/TransitionSet;

    .line 17
    new-instance p1, Lcom/google/android/material/internal/h;

    invoke-direct {p1}, Lcom/google/android/material/internal/h;-><init>()V

    invoke-virtual {v0, p1}, Landroidx/transition/TransitionSet;->Q(Landroidx/transition/Transition;)Landroidx/transition/TransitionSet;

    .line 18
    new-instance p1, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView$a;

    invoke-direct {p1, p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView$a;-><init>(Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;)V

    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->h:Landroid/view/View$OnClickListener;

    new-array p1, p2, [I

    .line 19
    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->w:[I

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;)Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->y:Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;

    return-object p0
.end method

.method static synthetic c(Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;)Landroidx/appcompat/view/menu/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->z:Landroidx/appcompat/view/menu/g;

    return-object p0
.end method

.method private k(II)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    const/4 p1, 0x3

    if-le p2, p1, :cond_1

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public b(Landroidx/appcompat/view/menu/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->z:Landroidx/appcompat/view/menu/g;

    return-void
.end method

.method public d()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->l:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    if-eqz v4, :cond_0

    .line 4
    iget-object v5, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->i:Lk2;

    invoke-interface {v5, v4}, Lk2;->a(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {v4}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->g()V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->z:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/g;->size()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 7
    iput v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->m:I

    .line 8
    iput v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->n:I

    .line 9
    iput-object v2, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->l:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    return-void

    .line 10
    :cond_2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v3, 0x0

    .line 11
    :goto_1
    iget-object v4, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->z:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/g;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 12
    iget-object v4, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->z:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v4, v3}, Landroidx/appcompat/view/menu/g;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    .line 13
    :goto_2
    iget-object v4, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->x:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 14
    iget-object v4, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->x:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 15
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 16
    iget-object v5, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->x:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->delete(I)V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 17
    :cond_5
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->z:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/g;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    iput-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->l:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    .line 18
    iget v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->k:I

    iget-object v3, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->z:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/g;->r()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {p0, v0, v3}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->k(II)Z

    move-result v0

    const/4 v3, 0x0

    .line 19
    :goto_3
    iget-object v4, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->z:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/g;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v3, v4, :cond_d

    .line 20
    iget-object v4, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->y:Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;

    invoke-virtual {v4, v5}, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->m(Z)V

    .line 21
    iget-object v4, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->z:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v4, v3}, Landroidx/appcompat/view/menu/g;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 22
    iget-object v4, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->y:Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;

    invoke-virtual {v4, v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->m(Z)V

    .line 23
    iget-object v4, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->i:Lk2;

    invoke-interface {v4}, Lk2;->b()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    if-nez v4, :cond_6

    .line 24
    new-instance v4, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 25
    invoke-direct {v4, v6, v2}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    :cond_6
    iget-object v6, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->l:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    aput-object v4, v6, v3

    .line 27
    iget-object v6, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->o:Landroid/content/res/ColorStateList;

    invoke-virtual {v4, v6}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->m(Landroid/content/res/ColorStateList;)V

    .line 28
    iget v6, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->p:I

    invoke-virtual {v4, v6}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->l(I)V

    .line 29
    iget-object v6, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->r:Landroid/content/res/ColorStateList;

    invoke-virtual {v4, v6}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->s(Landroid/content/res/ColorStateList;)V

    .line 30
    iget v6, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->s:I

    invoke-virtual {v4, v6}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->r(I)V

    .line 31
    iget v6, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->t:I

    invoke-virtual {v4, v6}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->q(I)V

    .line 32
    iget-object v6, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->q:Landroid/content/res/ColorStateList;

    invoke-virtual {v4, v6}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->s(Landroid/content/res/ColorStateList;)V

    .line 33
    iget-object v6, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->u:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_7

    .line 34
    invoke-virtual {v4, v6}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->n(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    .line 35
    :cond_7
    iget v6, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->v:I

    if-nez v6, :cond_8

    move-object v6, v2

    goto :goto_4

    .line 36
    :cond_8
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v6}, Landroidx/core/content/a;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 37
    :goto_4
    invoke-virtual {v4, v6}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->n(Landroid/graphics/drawable/Drawable;)V

    .line 38
    :goto_5
    invoke-virtual {v4, v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->p(Z)V

    .line 39
    iget v6, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->k:I

    invoke-virtual {v4, v6}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->o(I)V

    .line 40
    iget-object v6, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->z:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v6, v3}, Landroidx/appcompat/view/menu/g;->getItem(I)Landroid/view/MenuItem;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/view/menu/i;

    invoke-virtual {v4, v6, v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->k(Landroidx/appcompat/view/menu/i;I)V

    .line 41
    iget-object v6, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->h:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    iget v6, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->m:I

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->z:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v6, v3}, Landroidx/appcompat/view/menu/g;->getItem(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    iget v7, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->m:I

    if-ne v6, v7, :cond_9

    .line 43
    iput v3, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->n:I

    .line 44
    :cond_9
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getId()I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_a

    goto :goto_6

    :cond_a
    const/4 v5, 0x0

    :goto_6
    if-nez v5, :cond_b

    goto :goto_7

    .line 45
    :cond_b
    iget-object v5, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->x:Landroid/util/SparseArray;

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/material/badge/BadgeDrawable;

    if-eqz v5, :cond_c

    .line 46
    invoke-virtual {v4, v5}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->h(Lcom/google/android/material/badge/BadgeDrawable;)V

    .line 47
    :cond_c
    :goto_7
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3

    .line 48
    :cond_d
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->z:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/g;->size()I

    move-result v0

    sub-int/2addr v0, v5

    iget v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->n:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->n:I

    .line 49
    iget-object v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->z:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v1, v0}, Landroidx/appcompat/view/menu/g;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    return-void
.end method

.method public e(I)Landroid/content/res/ColorStateList;
    .locals 10

    .line 1
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-object v1

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v3, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-static {p1, v3}, Ld;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 5
    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x7f0300b9

    .line 6
    invoke-virtual {v3, v4, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v3

    if-nez v3, :cond_1

    return-object v1

    .line 7
    :cond_1
    iget v0, v0, Landroid/util/TypedValue;->data:I

    .line 8
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    .line 9
    new-instance v3, Landroid/content/res/ColorStateList;

    const/4 v4, 0x3

    new-array v5, v4, [[I

    sget-object v6, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->B:[I

    const/4 v7, 0x0

    aput-object v6, v5, v7

    sget-object v8, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->A:[I

    aput-object v8, v5, v2

    sget-object v8, Landroid/view/ViewGroup;->EMPTY_STATE_SET:[I

    const/4 v9, 0x2

    aput-object v8, v5, v9

    new-array v4, v4, [I

    .line 10
    invoke-virtual {p1, v6, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    aput p1, v4, v7

    aput v0, v4, v2

    aput v1, v4, v9

    invoke-direct {v3, v5, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v3
.end method

.method f()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/google/android/material/badge/BadgeDrawable;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->x:Landroid/util/SparseArray;

    return-object v0
.end method

.method public g()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->l:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 2
    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->u:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public h()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->k:I

    return v0
.end method

.method public i()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->m:I

    return v0
.end method

.method public j()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->j:Z

    return v0
.end method

.method l(Landroid/util/SparseArray;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/google/android/material/badge/BadgeDrawable;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->x:Landroid/util/SparseArray;

    .line 2
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->l:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    if-eqz v0, :cond_0

    .line 3
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 4
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getId()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/badge/BadgeDrawable;

    invoke-virtual {v3, v4}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->h(Lcom/google/android/material/badge/BadgeDrawable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public m(Landroid/content/res/ColorStateList;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->o:Landroid/content/res/ColorStateList;

    .line 2
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->l:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    if-eqz v0, :cond_0

    .line 3
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 4
    invoke-virtual {v3, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->m(Landroid/content/res/ColorStateList;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public n(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->u:Landroid/graphics/drawable/Drawable;

    .line 2
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->l:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    if-eqz v0, :cond_0

    .line 3
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 4
    invoke-virtual {v3, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->n(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public o(I)V
    .locals 5

    .line 1
    iput p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->v:I

    .line 2
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->l:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    if-eqz v0, :cond_1

    .line 3
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-nez p1, :cond_0

    const/4 v4, 0x0

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, p1}, Landroidx/core/content/a;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 5
    :goto_1
    invoke-virtual {v3, v4}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->n(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    const/4 p2, 0x0

    const/4 p3, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge p3, p1, :cond_2

    .line 2
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    goto :goto_2

    .line 4
    :cond_0
    sget v2, Lc3;->g:I

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    sub-int v2, p4, v0

    .line 6
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int v3, v2, v3

    invoke-virtual {v1, v3, p2, v2, p5}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v1, v0, p2, v2, p5}, Landroid/view/View;->layout(IIII)V

    .line 8
    :goto_1
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v0, v1

    :goto_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 10

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 2
    iget-object p2, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->z:Landroidx/appcompat/view/menu/g;

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/g;->r()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 4
    iget v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->g:I

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 5
    iget v3, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->k:I

    invoke-direct {p0, v3, p2}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->k(II)Z

    move-result v3

    const/16 v4, 0x8

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->j:Z

    if-eqz v3, :cond_6

    .line 6
    iget v3, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->n:I

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 7
    iget v7, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->f:I

    .line 8
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v4, :cond_0

    .line 9
    iget v8, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->e:I

    const/high16 v9, -0x80000000

    .line 10
    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 11
    invoke-virtual {v3, v8, v1}, Landroid/view/View;->measure(II)V

    .line 12
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 13
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v4, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    sub-int/2addr p2, v3

    .line 14
    iget v3, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->d:I

    mul-int v3, v3, p2

    sub-int v3, p1, v3

    .line 15
    iget v8, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->e:I

    .line 16
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    sub-int/2addr p1, v3

    if-nez p2, :cond_2

    const/4 v7, 0x1

    goto :goto_1

    :cond_2
    move v7, p2

    .line 17
    :goto_1
    div-int v7, p1, v7

    .line 18
    iget v8, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->c:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    mul-int p2, p2, v7

    sub-int/2addr p1, p2

    const/4 p2, 0x0

    :goto_2
    if-ge p2, v0, :cond_a

    .line 19
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v4, :cond_4

    .line 20
    iget-object v8, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->w:[I

    iget v9, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->n:I

    if-ne p2, v9, :cond_3

    move v9, v3

    goto :goto_3

    :cond_3
    move v9, v7

    :goto_3
    aput v9, v8, p2

    if-lez p1, :cond_5

    .line 21
    aget v9, v8, p2

    add-int/2addr v9, v5

    aput v9, v8, p2

    add-int/lit8 p1, p1, -0x1

    goto :goto_4

    .line 22
    :cond_4
    iget-object v8, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->w:[I

    aput v6, v8, p2

    :cond_5
    :goto_4
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_6
    if-nez p2, :cond_7

    const/4 v3, 0x1

    goto :goto_5

    :cond_7
    move v3, p2

    .line 23
    :goto_5
    div-int v3, p1, v3

    .line 24
    iget v7, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->e:I

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    mul-int p2, p2, v3

    sub-int/2addr p1, p2

    const/4 p2, 0x0

    :goto_6
    if-ge p2, v0, :cond_a

    .line 25
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eq v7, v4, :cond_8

    .line 26
    iget-object v7, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->w:[I

    aput v3, v7, p2

    if-lez p1, :cond_9

    .line 27
    aget v8, v7, p2

    add-int/2addr v8, v5

    aput v8, v7, p2

    add-int/lit8 p1, p1, -0x1

    goto :goto_7

    .line 28
    :cond_8
    iget-object v7, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->w:[I

    aput v6, v7, p2

    :cond_9
    :goto_7
    add-int/lit8 p2, p2, 0x1

    goto :goto_6

    :cond_a
    const/4 p1, 0x0

    const/4 p2, 0x0

    :goto_8
    if-ge p1, v0, :cond_c

    .line 29
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 30
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-ne v5, v4, :cond_b

    goto :goto_9

    .line 31
    :cond_b
    iget-object v5, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->w:[I

    aget v5, v5, p1

    .line 32
    invoke-static {v5, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 33
    invoke-virtual {v3, v5, v1}, Landroid/view/View;->measure(II)V

    .line 34
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 35
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    iput v7, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 36
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr p2, v3

    :goto_9
    add-int/lit8 p1, p1, 0x1

    goto :goto_8

    .line 37
    :cond_c
    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 38
    invoke-static {p2, p1, v6}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p1

    iget p2, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->g:I

    .line 39
    invoke-static {p2, v1, v6}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p2

    .line 40
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method public p(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->j:Z

    return-void
.end method

.method public q(I)V
    .locals 4

    .line 1
    iput p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->p:I

    .line 2
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->l:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    if-eqz v0, :cond_0

    .line 3
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 4
    invoke-virtual {v3, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->l(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public r(I)V
    .locals 5

    .line 1
    iput p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->t:I

    .line 2
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->l:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    if-eqz v0, :cond_1

    .line 3
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 4
    invoke-virtual {v3, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->q(I)V

    .line 5
    iget-object v4, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->q:Landroid/content/res/ColorStateList;

    if-eqz v4, :cond_0

    .line 6
    invoke-virtual {v3, v4}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->s(Landroid/content/res/ColorStateList;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public s(I)V
    .locals 5

    .line 1
    iput p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->s:I

    .line 2
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->l:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    if-eqz v0, :cond_1

    .line 3
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 4
    invoke-virtual {v3, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->r(I)V

    .line 5
    iget-object v4, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->q:Landroid/content/res/ColorStateList;

    if-eqz v4, :cond_0

    .line 6
    invoke-virtual {v3, v4}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->s(Landroid/content/res/ColorStateList;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public t(Landroid/content/res/ColorStateList;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->q:Landroid/content/res/ColorStateList;

    .line 2
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->l:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    if-eqz v0, :cond_0

    .line 3
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 4
    invoke-virtual {v3, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->s(Landroid/content/res/ColorStateList;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public u(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->k:I

    return-void
.end method

.method public v(Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->y:Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;

    return-void
.end method

.method w(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->z:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/g;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    iget-object v2, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->z:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v2, v1}, Landroidx/appcompat/view/menu/g;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 3
    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    if-ne p1, v3, :cond_0

    .line 4
    iput p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->m:I

    .line 5
    iput v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->n:I

    const/4 p1, 0x1

    .line 6
    invoke-interface {v2, p1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public x()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->z:Landroidx/appcompat/view/menu/g;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->l:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    if-nez v1, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/g;->size()I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->l:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    array-length v1, v1

    if-eq v0, v1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->d()V

    return-void

    .line 5
    :cond_1
    iget v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->m:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_3

    .line 6
    iget-object v4, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->z:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v4, v3}, Landroidx/appcompat/view/menu/g;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 7
    invoke-interface {v4}, Landroid/view/MenuItem;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 8
    invoke-interface {v4}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    iput v4, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->m:I

    .line 9
    iput v3, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->n:I

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 10
    :cond_3
    iget v3, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->m:I

    if-eq v1, v3, :cond_4

    .line 11
    iget-object v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->b:Landroidx/transition/TransitionSet;

    invoke-static {p0, v1}, Landroidx/transition/t;->a(Landroid/view/ViewGroup;Landroidx/transition/Transition;)V

    .line 12
    :cond_4
    iget v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->k:I

    iget-object v3, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->z:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/g;->r()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {p0, v1, v3}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->k(II)Z

    move-result v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_5

    .line 13
    iget-object v4, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->y:Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->m(Z)V

    .line 14
    iget-object v4, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->l:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    aget-object v4, v4, v3

    iget v5, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->k:I

    invoke-virtual {v4, v5}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->o(I)V

    .line 15
    iget-object v4, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->l:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    aget-object v4, v4, v3

    invoke-virtual {v4, v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->p(Z)V

    .line 16
    iget-object v4, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->l:[Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    aget-object v4, v4, v3

    iget-object v5, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->z:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v5, v3}, Landroidx/appcompat/view/menu/g;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/view/menu/i;

    invoke-virtual {v4, v5, v2}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->k(Landroidx/appcompat/view/menu/i;I)V

    .line 17
    iget-object v4, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->y:Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;

    invoke-virtual {v4, v2}, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->m(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    return-void
.end method
