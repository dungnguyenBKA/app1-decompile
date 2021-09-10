.class Landroidx/viewpager/widget/ViewPager$e;
.super Ln2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager/widget/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "e"
.end annotation


# instance fields
.field final synthetic d:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method constructor <init>(Landroidx/viewpager/widget/ViewPager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/viewpager/widget/ViewPager$e;->d:Landroidx/viewpager/widget/ViewPager;

    invoke-direct {p0}, Ln2;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Ln2;->d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    const-class p1, Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager$e;->d:Landroidx/viewpager/widget/ViewPager;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 5
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result p1

    const/16 p2, 0x1000

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager$e;->d:Landroidx/viewpager/widget/ViewPager;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public e(Landroid/view/View;Ln3;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Ln2;->e(Landroid/view/View;Ln3;)V

    .line 2
    const-class p1, Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ln3;->R(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager$e;->d:Landroidx/viewpager/widget/ViewPager;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p2, p1}, Ln3;->k0(Z)V

    .line 5
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager$e;->d:Landroidx/viewpager/widget/ViewPager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->canScrollHorizontally(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x1000

    .line 6
    invoke-virtual {p2, p1}, Ln3;->a(I)V

    .line 7
    :cond_0
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager$e;->d:Landroidx/viewpager/widget/ViewPager;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->canScrollHorizontally(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x2000

    .line 8
    invoke-virtual {p2, p1}, Ln3;->a(I)V

    :cond_1
    return-void
.end method

.method public h(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Ln2;->h(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    const/4 p3, 0x1

    if-eqz p1, :cond_0

    return p3

    :cond_0
    const/16 p1, 0x1000

    const/4 v0, 0x0

    if-eq p2, p1, :cond_3

    const/16 p1, 0x2000

    if-eq p2, p1, :cond_1

    return v0

    .line 2
    :cond_1
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager$e;->d:Landroidx/viewpager/widget/ViewPager;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroidx/viewpager/widget/ViewPager;->canScrollHorizontally(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager$e;->d:Landroidx/viewpager/widget/ViewPager;

    iget p2, p1, Landroidx/viewpager/widget/ViewPager;->e:I

    sub-int/2addr p2, p3

    invoke-virtual {p1, p2}, Landroidx/viewpager/widget/ViewPager;->x(I)V

    return p3

    :cond_2
    return v0

    .line 4
    :cond_3
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager$e;->d:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, p3}, Landroidx/viewpager/widget/ViewPager;->canScrollHorizontally(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 5
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager$e;->d:Landroidx/viewpager/widget/ViewPager;

    iget p2, p1, Landroidx/viewpager/widget/ViewPager;->e:I

    add-int/2addr p2, p3

    invoke-virtual {p1, p2}, Landroidx/viewpager/widget/ViewPager;->x(I)V

    return p3

    :cond_4
    return v0
.end method
