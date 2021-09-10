.class final Ln2$a;
.super Landroid/view/View$AccessibilityDelegate;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field final a:Ln2;


# direct methods
.method constructor <init>(Ln2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    .line 2
    iput-object p1, p0, Ln2$a;->a:Ln2;

    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Ln2$a;->a:Ln2;

    invoke-virtual {v0, p1, p2}, Ln2;->a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 1

    .line 1
    iget-object v0, p0, Ln2$a;->a:Ln2;

    .line 2
    invoke-virtual {v0, p1}, Ln2;->b(Landroid/view/View;)Lo3;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lo3;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityNodeProvider;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln2$a;->a:Ln2;

    invoke-virtual {v0, p1, p2}, Ln2;->d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 7

    .line 1
    const-class v0, Ljava/lang/Boolean;

    invoke-static {p2}, Ln3;->s0(Landroid/view/accessibility/AccessibilityNodeInfo;)Ln3;

    move-result-object v1

    .line 2
    sget v2, Lc3;->g:I

    .line 3
    new-instance v2, Ld3;

    const v3, 0x7f0802a1

    const/16 v4, 0x1c

    invoke-direct {v2, v3, v0, v4}, Ld3;-><init>(ILjava/lang/Class;I)V

    .line 4
    invoke-virtual {v2, p1}, Lc3$c;->d(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 6
    :goto_0
    invoke-virtual {v1, v2}, Ln3;->j0(Z)V

    .line 7
    new-instance v2, Lf3;

    const v5, 0x7f08029e

    invoke-direct {v2, v5, v0, v4}, Lf3;-><init>(ILjava/lang/Class;I)V

    .line 8
    invoke-virtual {v2, p1}, Lc3$c;->d(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 10
    :goto_1
    invoke-virtual {v1, v0}, Ln3;->b0(Z)V

    .line 11
    new-instance v0, Le3;

    const-class v2, Ljava/lang/CharSequence;

    const v5, 0x7f08029f

    const/16 v6, 0x8

    invoke-direct {v0, v5, v2, v6, v4}, Le3;-><init>(ILjava/lang/Class;II)V

    .line 12
    invoke-virtual {v0, p1}, Lc3$c;->d(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 13
    invoke-virtual {v1, v0}, Ln3;->g0(Ljava/lang/CharSequence;)V

    .line 14
    iget-object v0, p0, Ln2$a;->a:Ln2;

    invoke-virtual {v0, p1, v1}, Ln2;->e(Landroid/view/View;Ln3;)V

    .line 15
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {v1, p2, p1}, Ln3;->e(Ljava/lang/CharSequence;Landroid/view/View;)V

    const p2, 0x7f08029c

    .line 16
    invoke-virtual {p1, p2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_2

    .line 17
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    .line 18
    :cond_2
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-ge v3, p2, :cond_3

    .line 19
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ln3$a;

    invoke-virtual {v1, p2}, Ln3;->b(Ln3$a;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln2$a;->a:Ln2;

    invoke-virtual {v0, p1, p2}, Ln2;->f(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Ln2$a;->a:Ln2;

    invoke-virtual {v0, p1, p2, p3}, Ln2;->g(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Ln2$a;->a:Ln2;

    invoke-virtual {v0, p1, p2, p3}, Ln2;->h(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public sendAccessibilityEvent(Landroid/view/View;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln2$a;->a:Ln2;

    invoke-virtual {v0, p1, p2}, Ln2;->i(Landroid/view/View;I)V

    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln2$a;->a:Ln2;

    invoke-virtual {v0, p1, p2}, Ln2;->j(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method
