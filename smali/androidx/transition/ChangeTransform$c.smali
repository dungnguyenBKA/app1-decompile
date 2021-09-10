.class Landroidx/transition/ChangeTransform$c;
.super Landroidx/transition/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/transition/ChangeTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroidx/transition/f;


# direct methods
.method constructor <init>(Landroid/view/View;Landroidx/transition/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/transition/s;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/transition/ChangeTransform$c;->a:Landroid/view/View;

    .line 3
    iput-object p2, p0, Landroidx/transition/ChangeTransform$c;->b:Landroidx/transition/f;

    return-void
.end method


# virtual methods
.method public b(Landroidx/transition/Transition;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/transition/ChangeTransform$c;->b:Landroidx/transition/f;

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroidx/transition/f;->setVisibility(I)V

    return-void
.end method

.method public c(Landroidx/transition/Transition;)V
    .locals 2

    .line 1
    invoke-virtual {p1, p0}, Landroidx/transition/Transition;->E(Landroidx/transition/Transition$d;)Landroidx/transition/Transition;

    .line 2
    iget-object p1, p0, Landroidx/transition/ChangeTransform$c;->a:Landroid/view/View;

    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_0

    .line 4
    invoke-static {p1}, Landroidx/transition/h;->d(Landroid/view/View;)V

    goto :goto_0

    .line 5
    :cond_0
    sget v0, Landroidx/transition/i;->h:I

    const v0, 0x7f08013d

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/transition/i;

    if-eqz p1, :cond_1

    .line 7
    iget v0, p1, Landroidx/transition/i;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Landroidx/transition/i;->e:I

    if-gtz v0, :cond_1

    .line 8
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroidx/transition/g;

    .line 9
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 10
    :cond_1
    :goto_0
    iget-object p1, p0, Landroidx/transition/ChangeTransform$c;->a:Landroid/view/View;

    const v0, 0x7f0802cf

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 11
    iget-object p1, p0, Landroidx/transition/ChangeTransform$c;->a:Landroid/view/View;

    const v0, 0x7f0801ec

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public e(Landroidx/transition/Transition;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/transition/ChangeTransform$c;->b:Landroidx/transition/f;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroidx/transition/f;->setVisibility(I)V

    return-void
.end method
