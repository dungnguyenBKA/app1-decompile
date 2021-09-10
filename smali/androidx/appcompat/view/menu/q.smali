.class final Landroidx/appcompat/view/menu/q;
.super Landroidx/appcompat/view/menu/k;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroidx/appcompat/view/menu/m;
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:Landroidx/appcompat/view/menu/g;

.field private final e:Landroidx/appcompat/view/menu/f;

.field private final f:Z

.field private final g:I

.field private final h:I

.field private final i:I

.field final j:Landroidx/appcompat/widget/u;

.field final k:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private final l:Landroid/view/View$OnAttachStateChangeListener;

.field private m:Landroid/widget/PopupWindow$OnDismissListener;

.field private n:Landroid/view/View;

.field o:Landroid/view/View;

.field private p:Landroidx/appcompat/view/menu/m$a;

.field q:Landroid/view/ViewTreeObserver;

.field private r:Z

.field private s:Z

.field private t:I

.field private u:I

.field private v:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/appcompat/view/menu/g;Landroid/view/View;IIZ)V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/view/menu/k;-><init>()V

    .line 2
    new-instance v0, Landroidx/appcompat/view/menu/q$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/q$a;-><init>(Landroidx/appcompat/view/menu/q;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/q;->k:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 3
    new-instance v0, Landroidx/appcompat/view/menu/q$b;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/q$b;-><init>(Landroidx/appcompat/view/menu/q;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/q;->l:Landroid/view/View$OnAttachStateChangeListener;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Landroidx/appcompat/view/menu/q;->u:I

    .line 5
    iput-object p1, p0, Landroidx/appcompat/view/menu/q;->c:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Landroidx/appcompat/view/menu/q;->d:Landroidx/appcompat/view/menu/g;

    .line 7
    iput-boolean p6, p0, Landroidx/appcompat/view/menu/q;->f:Z

    .line 8
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 9
    new-instance v1, Landroidx/appcompat/view/menu/f;

    const v2, 0x7f0b0013

    invoke-direct {v1, p2, v0, p6, v2}, Landroidx/appcompat/view/menu/f;-><init>(Landroidx/appcompat/view/menu/g;Landroid/view/LayoutInflater;ZI)V

    iput-object v1, p0, Landroidx/appcompat/view/menu/q;->e:Landroidx/appcompat/view/menu/f;

    .line 10
    iput p4, p0, Landroidx/appcompat/view/menu/q;->h:I

    .line 11
    iput p5, p0, Landroidx/appcompat/view/menu/q;->i:I

    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p6

    .line 13
    invoke-virtual {p6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v0, v0, 0x2

    const v1, 0x7f060017

    .line 14
    invoke-virtual {p6, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p6

    .line 15
    invoke-static {v0, p6}, Ljava/lang/Math;->max(II)I

    move-result p6

    iput p6, p0, Landroidx/appcompat/view/menu/q;->g:I

    .line 16
    iput-object p3, p0, Landroidx/appcompat/view/menu/q;->n:Landroid/view/View;

    .line 17
    new-instance p3, Landroidx/appcompat/widget/u;

    const/4 p6, 0x0

    invoke-direct {p3, p1, p6, p4, p5}, Landroidx/appcompat/widget/u;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object p3, p0, Landroidx/appcompat/view/menu/q;->j:Landroidx/appcompat/widget/u;

    .line 18
    invoke-virtual {p2, p0, p1}, Landroidx/appcompat/view/menu/g;->c(Landroidx/appcompat/view/menu/m;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/q;->r:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/q;->j:Landroidx/appcompat/widget/u;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b(Landroidx/appcompat/view/menu/g;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/q;->d:Landroidx/appcompat/view/menu/g;

    if-eq p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/q;->dismiss()V

    .line 3
    iget-object v0, p0, Landroidx/appcompat/view/menu/q;->p:Landroidx/appcompat/view/menu/m$a;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0, p1, p2}, Landroidx/appcompat/view/menu/m$a;->b(Landroidx/appcompat/view/menu/g;Z)V

    :cond_1
    return-void
.end method

.method public c(Z)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/q;->s:Z

    .line 2
    iget-object p1, p0, Landroidx/appcompat/view/menu/q;->e:Landroidx/appcompat/view/menu/f;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/f;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public dismiss()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/q;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/appcompat/view/menu/q;->j:Landroidx/appcompat/widget/u;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public g(Landroidx/appcompat/view/menu/m$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/view/menu/q;->p:Landroidx/appcompat/view/menu/m$a;

    return-void
.end method

.method public i(Landroid/os/Parcelable;)V
    .locals 0

    return-void
.end method

.method public j(Landroidx/appcompat/view/menu/r;)Z
    .locals 9

    .line 1
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/g;->hasVisibleItems()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    new-instance v0, Landroidx/appcompat/view/menu/l;

    iget-object v3, p0, Landroidx/appcompat/view/menu/q;->c:Landroid/content/Context;

    iget-object v5, p0, Landroidx/appcompat/view/menu/q;->o:Landroid/view/View;

    iget-boolean v6, p0, Landroidx/appcompat/view/menu/q;->f:Z

    iget v7, p0, Landroidx/appcompat/view/menu/q;->h:I

    iget v8, p0, Landroidx/appcompat/view/menu/q;->i:I

    move-object v2, v0

    move-object v4, p1

    invoke-direct/range {v2 .. v8}, Landroidx/appcompat/view/menu/l;-><init>(Landroid/content/Context;Landroidx/appcompat/view/menu/g;Landroid/view/View;ZII)V

    .line 3
    iget-object v2, p0, Landroidx/appcompat/view/menu/q;->p:Landroidx/appcompat/view/menu/m$a;

    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/l;->i(Landroidx/appcompat/view/menu/m$a;)V

    .line 4
    invoke-static {p1}, Landroidx/appcompat/view/menu/k;->y(Landroidx/appcompat/view/menu/g;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/l;->f(Z)V

    .line 5
    iget-object v2, p0, Landroidx/appcompat/view/menu/q;->m:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/l;->h(Landroid/widget/PopupWindow$OnDismissListener;)V

    const/4 v2, 0x0

    .line 6
    iput-object v2, p0, Landroidx/appcompat/view/menu/q;->m:Landroid/widget/PopupWindow$OnDismissListener;

    .line 7
    iget-object v2, p0, Landroidx/appcompat/view/menu/q;->d:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v2, v1}, Landroidx/appcompat/view/menu/g;->e(Z)V

    .line 8
    iget-object v2, p0, Landroidx/appcompat/view/menu/q;->j:Landroidx/appcompat/widget/u;

    invoke-virtual {v2}, Landroidx/appcompat/widget/ListPopupWindow;->h()I

    move-result v2

    .line 9
    iget-object v3, p0, Landroidx/appcompat/view/menu/q;->j:Landroidx/appcompat/widget/u;

    invoke-virtual {v3}, Landroidx/appcompat/widget/ListPopupWindow;->q()I

    move-result v3

    .line 10
    iget v4, p0, Landroidx/appcompat/view/menu/q;->u:I

    iget-object v5, p0, Landroidx/appcompat/view/menu/q;->n:Landroid/view/View;

    .line 11
    sget v6, Lc3;->g:I

    .line 12
    invoke-virtual {v5}, Landroid/view/View;->getLayoutDirection()I

    move-result v5

    .line 13
    invoke-static {v4, v5}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v4

    and-int/lit8 v4, v4, 0x7

    const/4 v5, 0x5

    if-ne v4, v5, :cond_0

    .line 14
    iget-object v4, p0, Landroidx/appcompat/view/menu/q;->n:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v2, v4

    .line 15
    :cond_0
    invoke-virtual {v0, v2, v3}, Landroidx/appcompat/view/menu/l;->l(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 16
    iget-object v0, p0, Landroidx/appcompat/view/menu/q;->p:Landroidx/appcompat/view/menu/m$a;

    if-eqz v0, :cond_1

    .line 17
    invoke-interface {v0, p1}, Landroidx/appcompat/view/menu/m$a;->c(Landroidx/appcompat/view/menu/g;)Z

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method public k()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public l()Landroid/widget/ListView;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/q;->j:Landroidx/appcompat/widget/u;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->l()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method public m(Landroidx/appcompat/view/menu/g;)V
    .locals 0

    return-void
.end method

.method public onDismiss()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/q;->r:Z

    .line 2
    iget-object v1, p0, Landroidx/appcompat/view/menu/q;->d:Landroidx/appcompat/view/menu/g;

    .line 3
    invoke-virtual {v1, v0}, Landroidx/appcompat/view/menu/g;->e(Z)V

    .line 4
    iget-object v0, p0, Landroidx/appcompat/view/menu/q;->q:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/q;->o:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/q;->q:Landroid/view/ViewTreeObserver;

    .line 6
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/q;->q:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Landroidx/appcompat/view/menu/q;->k:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Landroidx/appcompat/view/menu/q;->q:Landroid/view/ViewTreeObserver;

    .line 8
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/view/menu/q;->o:Landroid/view/View;

    iget-object v1, p0, Landroidx/appcompat/view/menu/q;->l:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 9
    iget-object v0, p0, Landroidx/appcompat/view/menu/q;->m:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_2

    .line 10
    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    :cond_2
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    const/16 p1, 0x52

    if-ne p2, p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/q;->dismiss()V

    return p3

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public q(Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/view/menu/q;->n:Landroid/view/View;

    return-void
.end method

.method public s(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/q;->e:Landroidx/appcompat/view/menu/f;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/f;->d(Z)V

    return-void
.end method

.method public show()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/q;->a()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    :goto_0
    const/4 v1, 0x1

    goto/16 :goto_2

    .line 2
    :cond_0
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/q;->r:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Landroidx/appcompat/view/menu/q;->n:Landroid/view/View;

    if-nez v0, :cond_1

    goto/16 :goto_2

    .line 3
    :cond_1
    iput-object v0, p0, Landroidx/appcompat/view/menu/q;->o:Landroid/view/View;

    .line 4
    iget-object v0, p0, Landroidx/appcompat/view/menu/q;->j:Landroidx/appcompat/widget/u;

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/ListPopupWindow;->z(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 5
    iget-object v0, p0, Landroidx/appcompat/view/menu/q;->j:Landroidx/appcompat/widget/u;

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/ListPopupWindow;->A(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 6
    iget-object v0, p0, Landroidx/appcompat/view/menu/q;->j:Landroidx/appcompat/widget/u;

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/ListPopupWindow;->y(Z)V

    .line 7
    iget-object v0, p0, Landroidx/appcompat/view/menu/q;->o:Landroid/view/View;

    .line 8
    iget-object v3, p0, Landroidx/appcompat/view/menu/q;->q:Landroid/view/ViewTreeObserver;

    if-nez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 9
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    iput-object v4, p0, Landroidx/appcompat/view/menu/q;->q:Landroid/view/ViewTreeObserver;

    if-eqz v3, :cond_3

    .line 10
    iget-object v3, p0, Landroidx/appcompat/view/menu/q;->k:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v4, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 11
    :cond_3
    iget-object v3, p0, Landroidx/appcompat/view/menu/q;->l:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v3}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 12
    iget-object v3, p0, Landroidx/appcompat/view/menu/q;->j:Landroidx/appcompat/widget/u;

    invoke-virtual {v3, v0}, Landroidx/appcompat/widget/ListPopupWindow;->s(Landroid/view/View;)V

    .line 13
    iget-object v0, p0, Landroidx/appcompat/view/menu/q;->j:Landroidx/appcompat/widget/u;

    iget v3, p0, Landroidx/appcompat/view/menu/q;->u:I

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/ListPopupWindow;->v(I)V

    .line 14
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/q;->s:Z

    const/4 v3, 0x0

    if-nez v0, :cond_4

    .line 15
    iget-object v0, p0, Landroidx/appcompat/view/menu/q;->e:Landroidx/appcompat/view/menu/f;

    iget-object v4, p0, Landroidx/appcompat/view/menu/q;->c:Landroid/content/Context;

    iget v5, p0, Landroidx/appcompat/view/menu/q;->g:I

    invoke-static {v0, v3, v4, v5}, Landroidx/appcompat/view/menu/k;->p(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/view/menu/q;->t:I

    .line 16
    iput-boolean v2, p0, Landroidx/appcompat/view/menu/q;->s:Z

    .line 17
    :cond_4
    iget-object v0, p0, Landroidx/appcompat/view/menu/q;->j:Landroidx/appcompat/widget/u;

    iget v4, p0, Landroidx/appcompat/view/menu/q;->t:I

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/ListPopupWindow;->u(I)V

    .line 18
    iget-object v0, p0, Landroidx/appcompat/view/menu/q;->j:Landroidx/appcompat/widget/u;

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/ListPopupWindow;->x(I)V

    .line 19
    iget-object v0, p0, Landroidx/appcompat/view/menu/q;->j:Landroidx/appcompat/widget/u;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/k;->o()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/ListPopupWindow;->w(Landroid/graphics/Rect;)V

    .line 20
    iget-object v0, p0, Landroidx/appcompat/view/menu/q;->j:Landroidx/appcompat/widget/u;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->show()V

    .line 21
    iget-object v0, p0, Landroidx/appcompat/view/menu/q;->j:Landroidx/appcompat/widget/u;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->l()Landroid/widget/ListView;

    move-result-object v0

    .line 22
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 23
    iget-boolean v4, p0, Landroidx/appcompat/view/menu/q;->v:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Landroidx/appcompat/view/menu/q;->d:Landroidx/appcompat/view/menu/g;

    .line 24
    iget-object v4, v4, Landroidx/appcompat/view/menu/g;->m:Ljava/lang/CharSequence;

    if-eqz v4, :cond_6

    .line 25
    iget-object v4, p0, Landroidx/appcompat/view/menu/q;->c:Landroid/content/Context;

    .line 26
    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0b0012

    invoke-virtual {v4, v5, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    const v5, 0x1020016

    .line 27
    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_5

    .line 28
    iget-object v6, p0, Landroidx/appcompat/view/menu/q;->d:Landroidx/appcompat/view/menu/g;

    .line 29
    iget-object v6, v6, Landroidx/appcompat/view/menu/g;->m:Ljava/lang/CharSequence;

    .line 30
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    :cond_5
    invoke-virtual {v4, v1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 32
    invoke-virtual {v0, v4, v3, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 33
    :cond_6
    iget-object v0, p0, Landroidx/appcompat/view/menu/q;->j:Landroidx/appcompat/widget/u;

    iget-object v1, p0, Landroidx/appcompat/view/menu/q;->e:Landroidx/appcompat/view/menu/f;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ListPopupWindow;->r(Landroid/widget/ListAdapter;)V

    .line 34
    iget-object v0, p0, Landroidx/appcompat/view/menu/q;->j:Landroidx/appcompat/widget/u;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->show()V

    goto/16 :goto_0

    :cond_7
    :goto_2
    if-eqz v1, :cond_8

    return-void

    .line 35
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "StandardMenuPopup cannot be used without an anchor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method public t(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/appcompat/view/menu/q;->u:I

    return-void
.end method

.method public u(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/q;->j:Landroidx/appcompat/widget/u;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ListPopupWindow;->i(I)V

    return-void
.end method

.method public v(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/view/menu/q;->m:Landroid/widget/PopupWindow$OnDismissListener;

    return-void
.end method

.method public w(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/q;->v:Z

    return-void
.end method

.method public x(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/q;->j:Landroidx/appcompat/widget/u;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ListPopupWindow;->n(I)V

    return-void
.end method
