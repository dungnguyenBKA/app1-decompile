.class public Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;
.super Lcom/google/android/material/button/MaterialButton;
.source "SourceFile"

# interfaces
.implements Landroidx/coordinatorlayout/widget/CoordinatorLayout$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$f;,
        Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$h;,
        Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$e;,
        Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$i;,
        Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior;,
        Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$g;
    }
.end annotation


# static fields
.field static final A:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field static final B:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final r:Landroid/graphics/Rect;

.field private s:I

.field private final t:Lcom/google/android/material/floatingactionbutton/a;

.field private final u:Lcom/google/android/material/floatingactionbutton/i;

.field private final v:Lcom/google/android/material/floatingactionbutton/i;

.field private final w:Lcom/google/android/material/floatingactionbutton/i;

.field private final x:Lcom/google/android/material/floatingactionbutton/i;

.field private final y:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<",
            "Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;",
            ">;"
        }
    .end annotation
.end field

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Ljava/lang/Float;

    new-instance v1, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$c;

    const-string v2, "width"

    invoke-direct {v1, v0, v2}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$c;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->A:Landroid/util/Property;

    .line 2
    new-instance v1, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$d;

    const-string v2, "height"

    invoke-direct {v1, v0, v2}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$d;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->B:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f030147

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/button/MaterialButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->r:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->s:I

    .line 5
    new-instance v1, Lcom/google/android/material/floatingactionbutton/a;

    invoke-direct {v1}, Lcom/google/android/material/floatingactionbutton/a;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->t:Lcom/google/android/material/floatingactionbutton/a;

    .line 6
    new-instance v2, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$h;

    invoke-direct {v2, p0, v1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$h;-><init>(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Lcom/google/android/material/floatingactionbutton/a;)V

    iput-object v2, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->w:Lcom/google/android/material/floatingactionbutton/i;

    .line 7
    new-instance v3, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$f;

    invoke-direct {v3, p0, v1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$f;-><init>(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Lcom/google/android/material/floatingactionbutton/a;)V

    iput-object v3, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->x:Lcom/google/android/material/floatingactionbutton/i;

    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->z:Z

    .line 9
    new-instance v4, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior;

    invoke-direct {v4, p1, p2}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v4, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->y:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    .line 10
    sget-object v7, Lcom/google/android/material/R$styleable;->k:[I

    new-array v10, v0, [I

    const v9, 0x7f0f0283

    move-object v5, p1

    move-object v6, p2

    move v8, p3

    .line 11
    invoke-static/range {v5 .. v10}, Lcom/google/android/material/internal/i;->f(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v4

    const/4 v5, 0x3

    .line 12
    invoke-static {p1, v4, v5}, Lpx;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Lpx;

    move-result-object v5

    const/4 v6, 0x2

    .line 13
    invoke-static {p1, v4, v6}, Lpx;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Lpx;

    move-result-object v6

    .line 14
    invoke-static {p1, v4, v1}, Lpx;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Lpx;

    move-result-object v7

    const/4 v8, 0x4

    .line 15
    invoke-static {p1, v4, v8}, Lpx;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Lpx;

    move-result-object v8

    .line 16
    new-instance v9, Lcom/google/android/material/floatingactionbutton/a;

    invoke-direct {v9}, Lcom/google/android/material/floatingactionbutton/a;-><init>()V

    .line 17
    new-instance v10, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$e;

    new-instance v11, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$a;

    invoke-direct {v11, p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$a;-><init>(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)V

    invoke-direct {v10, p0, v9, v11, v1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$e;-><init>(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Lcom/google/android/material/floatingactionbutton/a;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$i;Z)V

    iput-object v10, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->v:Lcom/google/android/material/floatingactionbutton/i;

    .line 18
    new-instance v1, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$e;

    new-instance v11, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$b;

    invoke-direct {v11, p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$b;-><init>(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)V

    invoke-direct {v1, p0, v9, v11, v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$e;-><init>(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Lcom/google/android/material/floatingactionbutton/a;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$i;Z)V

    iput-object v1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->u:Lcom/google/android/material/floatingactionbutton/i;

    .line 19
    invoke-virtual {v2, v5}, Lcom/google/android/material/floatingactionbutton/b;->k(Lpx;)V

    .line 20
    invoke-virtual {v3, v6}, Lcom/google/android/material/floatingactionbutton/b;->k(Lpx;)V

    .line 21
    invoke-virtual {v10, v7}, Lcom/google/android/material/floatingactionbutton/b;->k(Lpx;)V

    .line 22
    invoke-virtual {v1, v8}, Lcom/google/android/material/floatingactionbutton/b;->k(Lpx;)V

    .line 23
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 24
    sget-object v0, Lqy;->m:Liy;

    const v1, 0x7f0f0283

    .line 25
    invoke-static {p1, p2, p3, v1, v0}, Lqy;->c(Landroid/content/Context;Landroid/util/AttributeSet;IILiy;)Lqy$b;

    move-result-object p1

    .line 26
    invoke-virtual {p1}, Lqy$b;->m()Lqy;

    move-result-object p1

    .line 27
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->e(Lqy;)V

    return-void
.end method

.method static synthetic A(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->z:Z

    return p0
.end method

.method static synthetic B(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->z:Z

    return p1
.end method

.method static synthetic C(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->s:I

    return p1
.end method

.method static D(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->s:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    :goto_0
    const/4 v1, 0x1

    goto :goto_1

    .line 3
    :cond_0
    iget p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->s:I

    if-eq p0, v2, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method

.method static E(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 2
    iget p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->s:I

    if-ne p0, v2, :cond_1

    :goto_0
    const/4 v1, 0x1

    goto :goto_1

    .line 3
    :cond_0
    iget p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->s:I

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method

.method static synthetic u(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)Lcom/google/android/material/floatingactionbutton/i;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->u:Lcom/google/android/material/floatingactionbutton/i;

    return-object p0
.end method

.method static synthetic v(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)Lcom/google/android/material/floatingactionbutton/i;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->x:Lcom/google/android/material/floatingactionbutton/i;

    return-object p0
.end method

.method static w(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Lcom/google/android/material/floatingactionbutton/i;)V
    .locals 2

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-interface {p1}, Lcom/google/android/material/floatingactionbutton/i;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    sget v0, Lc3;->g:I

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->isLaidOut()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Landroid/widget/Button;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 6
    invoke-interface {p1}, Lcom/google/android/material/floatingactionbutton/i;->c()V

    const/4 p0, 0x0

    .line 7
    invoke-interface {p1, p0}, Lcom/google/android/material/floatingactionbutton/i;->g(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$g;)V

    goto :goto_2

    .line 8
    :cond_2
    invoke-virtual {p0, v1, v1}, Landroid/widget/Button;->measure(II)V

    .line 9
    invoke-interface {p1}, Lcom/google/android/material/floatingactionbutton/i;->f()Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 10
    new-instance v1, Lcom/google/android/material/floatingactionbutton/d;

    invoke-direct {v1, p0, p1}, Lcom/google/android/material/floatingactionbutton/d;-><init>(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Lcom/google/android/material/floatingactionbutton/i;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 11
    check-cast p1, Lcom/google/android/material/floatingactionbutton/b;

    invoke-virtual {p1}, Lcom/google/android/material/floatingactionbutton/b;->j()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/animation/Animator$AnimatorListener;

    .line 12
    invoke-virtual {v0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_1

    .line 13
    :cond_3
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    :goto_2
    return-void
.end method

.method static synthetic x(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)Lcom/google/android/material/floatingactionbutton/i;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->v:Lcom/google/android/material/floatingactionbutton/i;

    return-object p0
.end method

.method static synthetic y(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)Lcom/google/android/material/floatingactionbutton/i;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->w:Lcom/google/android/material/floatingactionbutton/i;

    return-object p0
.end method

.method static synthetic z(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)Landroid/graphics/Rect;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->r:Landroid/graphics/Rect;

    return-object p0
.end method


# virtual methods
.method F()I
    .locals 2

    .line 1
    sget v0, Lc3;->g:I

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v0

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v1

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    .line 5
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->f()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public a()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<",
            "Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->y:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/material/button/MaterialButton;->onAttachedToWindow()V

    .line 2
    iget-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->z:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->z:Z

    .line 4
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->u:Lcom/google/android/material/floatingactionbutton/i;

    invoke-interface {v0}, Lcom/google/android/material/floatingactionbutton/i;->c()V

    :cond_0
    return-void
.end method
